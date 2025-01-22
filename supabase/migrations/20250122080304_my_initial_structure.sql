alter table "public"."hospital_bed_availability" enable row level security;

alter table "public"."hospital_bed_operation_rate" enable row level security;

create policy "allow all access to chanho"
on "public"."hospital_bed_availability"
as permissive
for all
to chanho
using (true);


create policy "allow all access to chanho"
on "public"."hospital_bed_operation_rate"
as permissive
for all
to chanho
using (true);



