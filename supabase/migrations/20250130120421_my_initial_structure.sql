drop policy "allow authenticated to read availability" on "public"."hospital_bed_availability";

create policy "allow authenticated to read availability"
on "public"."hospital_bed_availability"
as permissive
for select
to authenticated
using (true);



