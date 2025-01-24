drop policy "access own hospital info" on "public"."hospitals";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.find_nearby_hospitals(user_lat double precision, user_lon double precision, radius_km double precision)
 RETURNS json
 LANGUAGE plpgsql
AS $function$BEGIN
  RETURN (
    SELECT json_agg(sub) 
    FROM (
      SELECT
        loc.hpid,
        loc.dutyaddr,
        loc.wgs84lon,
        loc.wgs84lat,
        h.dutyname,   -- pulled from 'hospitals' table
        h.dutytel3,   -- pulled from 'hospitals' table
        ST_DistanceSphere(
          ST_MakePoint(loc.wgs84lon, loc.wgs84lat),
          ST_MakePoint(user_lon, user_lat)
        ) / 1000 AS distance_km
      FROM hospital_location_info AS loc
      -- Change LEFT JOIN to INNER JOIN if you always expect a matching row in 'hospitals'
      LEFT JOIN hospitals AS h
        ON loc.hpid = h.hpid
      WHERE ST_DWithin(
        ST_MakePoint(loc.wgs84lon, loc.wgs84lat)::geography,
        ST_MakePoint(user_lon, user_lat)::geography,
        radius_km * 1000
      )
      ORDER BY distance_km
    ) sub
  );
END;$function$
;

create policy "allow hospital info access to authenticated"
on "public"."hospitals"
as permissive
for select
to authenticated
using (true);



