alter table "public"."hospital_bed_availability" add column "equipment_flags" jsonb;

CREATE INDEX idx_hospital_equipment ON public.hospital_bed_availability USING gin (equipment_flags);

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.before_update_equipment_flags()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
  -- Build the new JSONB object before updating
  NEW.equipment_flags := jsonb_build_object(
    'CT', NEW.hvctayn,
    'MRI', NEW.hvmriayn,
    '혈관촬영기', NEW.hvangioayn,
    '인공호흡기', NEW.hvventiayn,
    '조산아가용 인공호흡기', NEW.hvventisoayn,
    '인큐베이터', NEW.hvincuayn,
    'CRRT', NEW.hvcrrtayn,
    'ECMO', NEW.hvecmoayn,
    '고압산소치료기', NEW.hvoxyayn,
    '중심체온조절유도기', NEW.hvhypoayn,
    '구급차', NEW.hvamyn
  );

  RETURN NEW; -- Apply changes to the row before the update
END;
$function$
;

CREATE OR REPLACE FUNCTION public.find_nearby_hospitals_optionally_filtered(user_lat double precision, user_lon double precision, radius_km double precision, availability_units text[] DEFAULT NULL::text[], equip_list text[] DEFAULT NULL::text[])
 RETURNS json
 LANGUAGE plpgsql
AS $function$DECLARE
  dynamic_cond text := '';
  dynamic_select text := '';
  sql_query text;
  result_json json;
  required_equipment jsonb;
BEGIN
  -- Generate required equipment JSONB once
  SELECT jsonb_object_agg(equip, TRUE)
  INTO required_equipment
  FROM unnest(equip_list) AS equip;

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

      -- Strict equipment list filtering
      AND (
        %L IS NULL
        OR %L = '{}'::jsonb
        OR av.equipment_flags @> %L
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
    -- Pass `required_equipment` as a JSONB object (now correctly scoped)
    required_equipment,
    required_equipment,
    required_equipment
  );

  -- Execute and return the result
  EXECUTE sql_query INTO result_json;

  RETURN result_json;
END;$function$
;

CREATE TRIGGER tf_before_update_equipment_flags BEFORE UPDATE OF hvctayn, hvmriayn, hvangioayn, hvventiayn, hvventisoayn, hvincuayn, hvcrrtayn, hvecmoayn, hvoxyayn, hvhypoayn, hvamyn ON public.hospital_bed_availability FOR EACH ROW EXECUTE FUNCTION before_update_equipment_flags();


