drop policy "allow all authenticated inserts" on "public"."hospitals";

alter table "public"."reservations" alter column "reserved_by" set data type uuid using "reserved_by"::uuid;

alter table "public"."service_users" drop column "full_name";

alter table "public"."service_users" add column "department" text;

alter table "public"."service_users" add column "job_title" text;

alter table "public"."service_users" add column "organization" text;

alter table "public"."reservations" add constraint "reservations_reserved_by_fkey" FOREIGN KEY (reserved_by) REFERENCES auth.users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."reservations" validate constraint "reservations_reserved_by_fkey";

create policy "allow all authenticated insert"
on "public"."reservations"
as permissive
for insert
to authenticated
with check (true);



