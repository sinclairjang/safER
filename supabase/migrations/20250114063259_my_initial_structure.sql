alter table "public"."hospital_bed_availability" enable row level security;

alter table "public"."hospital_emergency_info" enable row level security;

alter table "public"."hospitals" enable row level security;

alter table "public"."reservations" enable row level security;

create policy "access own hospital bed availability info"
on "public"."hospital_bed_availability"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.id = hospital_bed_availability.hospital_id))), false));


create policy "access own hospital location info"
on "public"."hospital_emergency_info"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.id = hospital_emergency_info.info_id))), false));


create policy "access own hospital info"
on "public"."hospitals"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? tenant_id), false));


create policy "access own reservation info"
on "public"."reservations"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.id = reservations.hospital_id))), false));



