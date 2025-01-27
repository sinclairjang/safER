alter table "public"."availability_filter_combos" add column "isolation_care" boolean;

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.get_availability_units(
  _care_unit text, 
  _bed_type text, 
  _emergency_needed boolean,
  _isolation_needed boolean)
 RETURNS text[]
 LANGUAGE sql
 STABLE
AS $function$
  select array_agg(distinct availability_unit)
  from availability_filter_combos
  where care_unit = _care_unit
    and facility = _bed_type
    and emergency_care = _emergency_needed
    and coalesce(isolation_care, false) = _isolation_needed;
$function$
;


