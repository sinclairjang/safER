drop policy "allow own access to operation rate" on "public"."hospital_bed_operation_rate";

drop function if exists "public"."fetch_processed_reservations_with_beds"();

alter table "public"."reservations" add column "reason" text;

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.fetch_processed_reservations_with_beds()
 RETURNS TABLE(id uuid, bed_code text, reserved_beds integer, requested_at timestamp with time zone, status reservation_status, hpid text, reserved_by bigint, reason text, requester_name text, remaining_beds integer, updated_at timestamp with time zone)
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
        r.reason,  -- ✅ Now included in SELECT
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

create policy "allow authenticated to read operation rate"
on "public"."hospital_bed_operation_rate"
as permissive
for select
to authenticated
using (true);



