set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.find_nearby_hospitals_optionally_filtered(user_lat double precision, user_lon double precision, radius_km double precision, availability_units text[] DEFAULT NULL::text[], equip_list text[] DEFAULT NULL::text[])
 RETURNS json
 LANGUAGE plpgsql
AS $function$
DECLARE
  dynamic_cond text := '';
  dynamic_select text := '';
  sql_query text;
  result_json json;
BEGIN
  -- 1) Build dynamic condition for availability_units
  IF array_length(availability_units, 1) IS NOT NULL
     AND array_length(availability_units, 1) > 0 THEN
    dynamic_cond := array_to_string(
      ARRAY(
        SELECT CASE
          WHEN unit IN ('hv5', 'hv7', 'hv10', 'hv11', 'hv42', 'hv43') 
            OR unit LIKE '%ayn'
            THEN format('av.%I = TRUE', unit)
          ELSE
            format('av.%I > 0', unit)
        END
        FROM unnest(availability_units) AS unit
      ),
      ' OR '
    );

    -- 2) Build dynamic SELECT for remaining beds/availability
    dynamic_select := array_to_string(
      ARRAY(
        SELECT format('av.%I AS %I', unit, unit)
        FROM unnest(availability_units) AS unit
      ),
      ', '
    );
  END IF;

  -- 3) Build the full SQL query
  sql_query := format($f$
    WITH base AS (
      SELECT
        loc.hpid,
        loc.dutyaddr,
        loc.wgs84lon,
        loc.wgs84lat,
        h.dutyname,
        h.dutytel3,
        ST_DistanceSphere(
          ST_MakePoint(loc.wgs84lon, loc.wgs84lat),
          ST_MakePoint(%L, %L)
        ) / 1000 AS distance_km
        %s -- Inject dynamic SELECT for remaining beds/availability
      FROM hospital_location_info AS loc
      LEFT JOIN hospitals AS h
        ON loc.hpid = h.hpid
      LEFT JOIN hospital_bed_availability AS av
        ON av.hpid = loc.hpid
      WHERE ST_DWithin(
        ST_MakePoint(loc.wgs84lon, loc.wgs84lat)::geography,
        ST_MakePoint(%L, %L)::geography,
        %L * 1000
      )
      -- Inject dynamic availability_units condition
      %s

      -- equip_list filter
      AND (
        %L::text[] IS NULL
        OR array_length(%L::text[], 1) IS NULL
        OR (
          (('CT' = ANY (COALESCE(%L::text[], '{}'))) = av.hvctayn)
          AND (('MRI' = ANY (COALESCE(%L::text[], '{}'))) = av.hvmriayn)
          AND (('혈관촬영기' = ANY (COALESCE(%L::text[], '{}'))) = av.hvangioayn)
          AND (('인공호흡기' = ANY (COALESCE(%L::text[], '{}'))) = av.hvventiayn)
          AND (('조산아가용 인공호흡기' = ANY (COALESCE(%L::text[], '{}'))) = av.hvventisoayn)
          AND (('인큐베이터' = ANY (COALESCE(%L::text[], '{}'))) = av.hvincuayn)
          AND (('CRRT' = ANY (COALESCE(%L::text[], '{}'))) = av.hvcrrtayn)
          AND (('ECMO' = ANY (COALESCE(%L::text[], '{}'))) = av.hvecmoayn)
          AND (('고압산소치료기' = ANY (COALESCE(%L::text[], '{}'))) = av.hvoxyayn)
          AND (('중심체온조절유도기' = ANY (COALESCE(%L::text[], '{}'))) = av.hvhypoayn)
          AND (('구급차' = ANY (COALESCE(%L::text[], '{}'))) = av.hvamyn)
        )
      )
      ORDER BY distance_km
    )
    SELECT json_agg(base) FROM base
    $f$,
    -- format placeholders for ST_MakePoint
    user_lon, user_lat,
    -- Inject dynamic SELECT for remaining beds/availability
    CASE WHEN dynamic_select <> '' THEN ', ' || dynamic_select ELSE '' END,
    user_lon, user_lat,
    radius_km,
    -- Inject dynamic condition if not empty
    CASE WHEN dynamic_cond <> '' THEN 'AND (' || dynamic_cond || ')' ELSE '' END,
    -- Pass equip_list multiple times
    equip_list,
    equip_list,
    equip_list,
    equip_list,
    equip_list,
    equip_list,
    equip_list,
    equip_list,
    equip_list,
    equip_list,
    equip_list,
    equip_list,
    equip_list
  );

  -- Execute and return the result
  EXECUTE sql_query INTO result_json;

  RETURN result_json;
END;
$function$
;


