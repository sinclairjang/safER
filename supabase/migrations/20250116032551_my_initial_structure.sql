set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.set_reserved_by_value()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
  NEW.reserved_by := current_setting('request.jwt.claims', true)::jsonb->>'sub';
  RETURN NEW; 
END;$function$
;


