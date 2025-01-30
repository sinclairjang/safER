drop policy "allow authenticated to read availability" on "public"."hospital_bed_availability";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.fetch_pending_reservations_with_beds()
 RETURNS TABLE(id uuid, bed_code text, reserved_beds integer, requested_at timestamp with time zone, status reservation_status, hpid text, reserved_by bigint, requester_name text, remaining_beds integer)
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY
    SELECT 
        r.id,
        r.bed_code,
        r.reserved_beds,
        r.requested_at,
        r.status,
        r.hpid,
        r.reserved_by,
        su.full_name,
        get_available_beds(r.hpid, r.bed_code) AS remaining_beds
    FROM 
        reservations r
    INNER JOIN 
        service_users su ON r.reserved_by = su.id
    WHERE 
        r.status = 'pending'
    ORDER BY 
        r.requested_at ASC;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.fetch_processed_reservations_with_beds()
 RETURNS TABLE(id uuid, bed_code text, reserved_beds integer, requested_at timestamp with time zone, status reservation_status, hpid text, reserved_by bigint, requester_name text, remaining_beds integer, updated_at timestamp with time zone)
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY
    SELECT 
        r.id,
        r.bed_code,
        r.reserved_beds,
        r.requested_at,
        r.status,
        r.hpid,
        r.reserved_by,
        su.full_name AS requester_name,
        get_available_beds(r.hpid, r.bed_code) AS remaining_beds,
        r.updated_at
    FROM 
        reservations r
    INNER JOIN 
        service_users su ON r.reserved_by = su.id
    WHERE 
        r.status <> 'pending'
    ORDER BY 
        r.updated_at DESC;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.get_available_beds(hospital_id text, bed_code text)
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
DECLARE
    remaining_beds integer;
BEGIN
    EXECUTE format('SELECT %I FROM hospital_bed_availability WHERE hpid = $1', bed_code)
    INTO remaining_beds
    USING hospital_id;

    RETURN COALESCE(remaining_beds, 0);
END;
$function$
;

create policy "allow authenticated to read availability"
on "public"."hospital_bed_availability"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = hospital_bed_availability.hpid))), false));



