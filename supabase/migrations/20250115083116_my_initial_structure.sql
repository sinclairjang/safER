set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.set_reserved_by_value()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
  NEW.reserved_by = (SELECT supabase_user FROM service_users WHERE supabase_user = auth.uid());
  RETURN NEW;
END;$function$
;

CREATE TRIGGER tf_reservations_autoset_reserved_by BEFORE INSERT ON public.reservations FOR EACH ROW EXECUTE FUNCTION set_reserved_by_value();


