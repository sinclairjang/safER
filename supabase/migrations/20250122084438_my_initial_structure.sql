alter table "public"."reservations" alter column "id" drop default;

alter table "public"."reservations" alter column "id" set data type uuid using "id"::uuid;

drop sequence if exists "public"."reservations_id_seq";

create policy "allow to read filter combinations"
on "public"."availability_filter_combos"
as permissive
for select
to authenticated
using (true);


create policy "allow own access to operation rate"
on "public"."hospital_bed_operation_rate"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = hospital_bed_operation_rate.hpid))), false));



