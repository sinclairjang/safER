drop policy "access own reservation info" on "public"."reservations";

alter table "public"."patient_assessments" add column "patient_name" text;

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.insert_reservation_and_assessment(reservation_id uuid, hospital_id text, bed_code text, reserved_beds integer, patient_name text, patient_reg_number text, condition text, emergency_contact text, eta time without time zone, notes text)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
DECLARE
    new_reservation_id UUID;
BEGIN
    -- Insert into reservations
    INSERT INTO public.reservations (id, hpid, bed_code, reserved_beds)
    VALUES (reservation_id, hospital_id, bed_code, reserved_beds)
    RETURNING id INTO new_reservation_id;

    -- Insert into patient_assessments
    INSERT INTO public.patient_assessments (
        reservation_id, patient_name, patient_reg_number, condition, emergency_contact, eta, notes
    ) VALUES (
        new_reservation_id, patient_name, patient_reg_number, condition, emergency_contact, eta, notes
    );

    -- Implicit commit happens at function end if no errors
    RETURN;
EXCEPTION
    WHEN OTHERS THEN
        -- Raise an error so that PostgreSQL will automatically roll back the transaction
        RAISE EXCEPTION 'Transaction failed: %', SQLERRM;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.insert_reservation_and_assessment(reservation_id uuid, hospital_id text, bed_code text, reserved_beds integer, patient_reg_number text, condition text, emergency_contact text, eta time without time zone, notes text)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
DECLARE
    new_reservation_id UUID;
BEGIN
    -- Insert into reservations
    INSERT INTO public.reservations (id, hpid, bed_code, reserved_beds)
    VALUES (reservation_id, hospital_id, bed_code, reserved_beds)
    RETURNING id INTO new_reservation_id;

    -- Insert into patient_assessments
    INSERT INTO public.patient_assessments (
        reservation_id, patient_reg_number, condition, emergency_contact, eta, notes
    ) VALUES (
        new_reservation_id, patient_reg_number, condition, emergency_contact, eta, notes
    );

    -- Implicit commit happens at function end if no errors
    RETURN;
EXCEPTION
    WHEN OTHERS THEN
        -- Raise an error so that PostgreSQL will automatically roll back the transaction
        RAISE EXCEPTION 'Transaction failed: %', SQLERRM;
END;
$function$
;

create policy "access own reservation info"
on "public"."reservations"
as permissive
for select
to authenticated
using (COALESCE(((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = reservations.hpid))) OR (reserved_by = ( SELECT service_users.id
   FROM service_users
  WHERE (service_users.supabase_user = auth.uid())))), false));



