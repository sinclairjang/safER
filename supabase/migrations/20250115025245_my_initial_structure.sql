drop policy "access own user data" on "public"."service_users";

create policy "allow anon to read user data"
on "public"."service_users"
as permissive
for select
to anon
using (true);


create policy "update own user data"
on "public"."service_users"
as permissive
for update
to authenticated
using ((supabase_user = auth.uid()))
with check ((supabase_user = auth.uid()));



