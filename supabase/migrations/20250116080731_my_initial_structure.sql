set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.update_reservation_timestamps()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
    -- Check if the status is 'Accepted'
    IF NEW.status = 'approved' THEN
        NEW.approved_at = NOW(); -- Set the current timestamp for accepted_at
    ELSIF NEW.status = 'rejected' THEN
        NEW.rejected_at = NOW(); -- Set the current timestamp for rejected_at
    END IF;

    -- Always return the NEW row for the update to proceed
    RETURN NEW;
END;$function$
;


