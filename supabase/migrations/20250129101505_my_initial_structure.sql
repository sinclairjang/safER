drop policy "allow access to hospital bed availability info to authenticated" on "public"."hospital_bed_availability";

drop policy "allow anon to read user data" on "public"."service_users";

alter table "public"."patient_assessments" drop constraint "patient_assessments_condition_check";

alter table "public"."patient_assessments" drop constraint "patient_assessments_emergency_contact_check";

alter table "public"."patient_assessments" drop constraint "patient_assessments_notes_check";

alter table "public"."reservations" drop constraint "reservations_reserved_by_fkey";

alter table "public"."patient_assessments" add column "updated_at" timestamp with time zone;

alter table "public"."patient_assessments" alter column "assessed_by" set not null;

alter table "public"."patient_assessments" alter column "created_at" set default now();

alter table "public"."patient_assessments" alter column "created_at" set data type timestamp with time zone using "created_at"::timestamp with time zone;

alter table "public"."patient_assessments" alter column "emergency_contact" set data type text using "emergency_contact"::text;

alter table "public"."patient_assessments" enable row level security;

DROP POLICY "update own reservation status" ON "public"."reservations";

ALTER TABLE "public"."reservations" DROP CONSTRAINT IF EXISTS reservations_reserved_by_fkey;

ALTER TABLE "public"."reservations" ADD COLUMN reserved_by_new BIGINT;

ALTER TABLE "public"."reservations" DROP COLUMN reserved_by;

ALTER TABLE "public"."reservations" RENAME COLUMN reserved_by_new TO reserved_by;

ALTER TABLE "public"."reservations" 
ADD CONSTRAINT reservations_reserved_by_fkey 
FOREIGN KEY ("reserved_by") REFERENCES "public"."service_users" ("id") 
ON UPDATE CASCADE ON DELETE CASCADE;

CREATE POLICY "update own reservation status"
ON "public"."reservations"
FOR UPDATE
TO authenticated
USING (
  COALESCE(
    (((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? 
      (SELECT hospitals.tenant_id FROM hospitals WHERE hospitals.hpid = reservations.hpid)
    ), false
  )
)
WITH CHECK (
  (hpid = hpid) 
  AND (bed_code = bed_code) 
  AND (reserved_by = reserved_by) 
  AND (reserved_beds = reserved_beds) 
  AND (requested_at = requested_at)
);

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

CREATE OR REPLACE FUNCTION public.set_reserved_by_value()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
  NEW.reserved_by := (select id from service_users where supabase_user = auth.uid());
  RETURN NEW; 
END;$function$
;

CREATE OR REPLACE FUNCTION public.update_reservation_timestamps()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
    -- Check if the status is changing
    IF NEW.status = 'approved' THEN
        NEW.approved_at = NOW(); 
    ELSIF NEW.status = 'rejected' THEN
        NEW.rejected_at = NOW();
    ELSIF NEW.status = 'cancelled' THEN
        NEW.cancelled_at = NOW();  -- Fixed typo
    END IF;  -- Properly closing the IF block

    -- Ensure updated_at is always set
    NEW.updated_at = NOW();

    -- Always return the NEW row for the update to proceed
    RETURN NEW;
END;$function$
;

create policy "allow authenticated to read availability"
on "public"."hospital_bed_availability"
as permissive
for select
to authenticated
using (true);


create policy "allow authenticated to read assessments"
on "public"."patient_assessments"
as permissive
for select
to authenticated
using (true);


create policy "allow safer to insert assessments"
on "public"."patient_assessments"
as permissive
for insert
to authenticated
with check ((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? 'safer'::text));


create policy "update own assessments"
on "public"."patient_assessments"
as permissive
for update
to authenticated
using ((assessed_by = ( SELECT service_users.id
   FROM service_users
  WHERE (service_users.supabase_user = auth.uid()))))
with check ((assessed_by = ( SELECT service_users.id
   FROM service_users
  WHERE (service_users.supabase_user = auth.uid()))));


create policy "allow authenticated to read user data"
on "public"."service_users"
as permissive
for select
to authenticated
using (true);


CREATE TRIGGER prevent_created_at_modification BEFORE UPDATE ON public.patient_assessments FOR EACH ROW EXECUTE FUNCTION prevent_created_at_update();

CREATE TRIGGER prevent_reservation_id_modification BEFORE UPDATE ON public.patient_assessments FOR EACH ROW EXECUTE FUNCTION prevent_reservation_id_update();

CREATE TRIGGER tf_patient_assessments_autoset_assessed_by BEFORE INSERT ON public.patient_assessments FOR EACH ROW EXECUTE FUNCTION set_assessed_by_value();

CREATE TRIGGER tf_patient_assessments_autoset_updated_at BEFORE UPDATE ON public.patient_assessments FOR EACH ROW EXECUTE FUNCTION set_updated_at_value();


