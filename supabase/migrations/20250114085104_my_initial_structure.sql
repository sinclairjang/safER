create policy "allow all authenticated inserts"
on "public"."hospitals"
as permissive
for insert
to authenticated
with check (true);



