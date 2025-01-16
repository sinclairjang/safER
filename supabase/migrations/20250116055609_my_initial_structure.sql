set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.update_reservation_timestamps()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    -- Check if the status is 'Accepted'
    IF NEW.status = 'Accepted' THEN
        NEW.accepted_at = NOW(); -- Set the current timestamp for accepted_at
    ELSIF NEW.status = 'Rejected' THEN
        NEW.rejected_at = NOW(); -- Set the current timestamp for rejected_at
    END IF;

    -- Always return the NEW row for the update to proceed
    RETURN NEW;
END;
$function$
;

create policy "update own reservation status"
on "public"."reservations"
as permissive
for update
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.id = reservations.hospital_id))), false))
with check (((hospital_id = hospital_id) AND (department = department) AND (reserved_by = reserved_by) AND (reserved_beds = reserved_beds) AND (requested_at = requested_at)));


CREATE TRIGGER tf_reservation_status BEFORE UPDATE ON public.reservations FOR EACH ROW WHEN ((old.status IS DISTINCT FROM new.status)) EXECUTE FUNCTION update_reservation_timestamps();


