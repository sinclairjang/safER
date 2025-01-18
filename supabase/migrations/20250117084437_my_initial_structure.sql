create policy "delete own reservation"
on "public"."reservations"
as permissive
for delete
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.id = reservations.hospital_id))), false));



