drop policy "update own reservation status" on "public"."reservations";

alter table "public"."reservations" alter column "reserved_by" set not null;

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.prevent_created_at_update()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    IF NEW.created_at <> OLD.created_at THEN
        RAISE EXCEPTION 'Updating created_at is not allowed!';
    END IF;
    RETURN NEW;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.prevent_reservation_id_update()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    IF NEW.reservation_id  <> OLD.reservation_id  THEN
        RAISE EXCEPTION 'Updating reservation_id  is not allowed!';
    END IF;
    RETURN NEW;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.set_assessed_by_value()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
  NEW.assessed_by := (select id from service_users where supabase_user = auth.uid());
  RETURN NEW; 
END;$function$
;

CREATE OR REPLACE FUNCTION public.set_updated_at_value()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
  NEW.updated_at := NOW();
  RETURN NEW;
END;$function$
;

create policy "update own reservation status"
on "public"."reservations"
as permissive
for update
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = reservations.hpid))), false))
with check (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = reservations.hpid))), false));



