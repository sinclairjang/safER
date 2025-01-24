drop policy "access own hospital location info" on "public"."hospital_location_info";

alter table "public"."reservations" enable row level security;

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.find_nearby_hospitals(user_lat double precision, user_lon double precision, radius_km double precision)
 RETURNS json
 LANGUAGE plpgsql
AS $function$BEGIN
  RETURN (
    SELECT json_agg(sub) FROM (
      SELECT
        h.hpid,
        h.dutyaddr,
        h.wgs84lon,
        h.wgs84lat,
        ST_DistanceSphere(
          ST_MakePoint(h.wgs84lon, h.wgs84lat),
          ST_MakePoint(user_lon, user_lat)
        ) / 1000 AS distance_km
        FROM hospital_location_info h
        WHERE ST_DWithin(
          ST_MakePoint(h.wgs84lon, h.wgs84lat)::geography,
          ST_MakePoint(user_lon, user_lat)::geography,
          radius_km * 1000
        )
        ORDER BY distance_km
    ) sub
  );
END;$function$
;

create policy "access hospital location info to authenticated"
on "public"."hospital_location_info"
as permissive
for select
to authenticated
using (true);


create policy "access own reservation info"
on "public"."reservations"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = reservations.hpid))), false));


create policy "allow all authenticated insert"
on "public"."reservations"
as permissive
for insert
to authenticated
with check (true);


create policy "delete own reservation"
on "public"."reservations"
as permissive
for delete
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = reservations.hpid))), false));


create policy "update own reservation status"
on "public"."reservations"
as permissive
for update
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = reservations.hpid))), false))
with check (((hpid = hpid) AND (department = department) AND (reserved_by = reserved_by) AND (reserved_beds = reserved_beds) AND (requested_at = requested_at)));


CREATE TRIGGER tf_reservation_status BEFORE UPDATE ON public.reservations FOR EACH ROW WHEN ((old.status IS DISTINCT FROM new.status)) EXECUTE FUNCTION update_reservation_timestamps();

CREATE TRIGGER tf_reservations_autoset_reserved_by BEFORE INSERT ON public.reservations FOR EACH ROW EXECUTE FUNCTION set_reserved_by_value();


