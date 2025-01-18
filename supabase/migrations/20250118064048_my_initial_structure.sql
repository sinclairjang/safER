drop policy "access own hospital location info" on "public"."hospital_emergency_info";

drop policy "access own hospital bed availability info" on "public"."hospital_bed_availability";

drop policy "access own reservation info" on "public"."reservations";

drop policy "delete own reservation" on "public"."reservations";

drop policy "update own reservation status" on "public"."reservations";

revoke delete on table "public"."hospital_emergency_info" from "anon";

revoke insert on table "public"."hospital_emergency_info" from "anon";

revoke references on table "public"."hospital_emergency_info" from "anon";

revoke select on table "public"."hospital_emergency_info" from "anon";

revoke trigger on table "public"."hospital_emergency_info" from "anon";

revoke truncate on table "public"."hospital_emergency_info" from "anon";

revoke update on table "public"."hospital_emergency_info" from "anon";

revoke delete on table "public"."hospital_emergency_info" from "authenticated";

revoke insert on table "public"."hospital_emergency_info" from "authenticated";

revoke references on table "public"."hospital_emergency_info" from "authenticated";

revoke select on table "public"."hospital_emergency_info" from "authenticated";

revoke trigger on table "public"."hospital_emergency_info" from "authenticated";

revoke truncate on table "public"."hospital_emergency_info" from "authenticated";

revoke update on table "public"."hospital_emergency_info" from "authenticated";

revoke delete on table "public"."hospital_emergency_info" from "service_role";

revoke insert on table "public"."hospital_emergency_info" from "service_role";

revoke references on table "public"."hospital_emergency_info" from "service_role";

revoke select on table "public"."hospital_emergency_info" from "service_role";

revoke trigger on table "public"."hospital_emergency_info" from "service_role";

revoke truncate on table "public"."hospital_emergency_info" from "service_role";

revoke update on table "public"."hospital_emergency_info" from "service_role";

alter table "public"."hospital_bed_availability" drop constraint "hospital_bed_availability_hospital_id_fkey";

alter table "public"."hospital_emergency_info" drop constraint "hospital_emergency_info_dutyemcls_check";

alter table "public"."hospital_emergency_info" drop constraint "hospital_emergency_info_info_id_fkey";

alter table "public"."reservations" drop constraint "reservations_hospital_id_fkey";

alter table "public"."hospital_emergency_info" drop constraint "hospital_emergency_info_pkey";

alter table "public"."hospitals" drop constraint "hospitals_pkey1";

alter table "public"."hospital_bed_availability" drop constraint "hospital_bed_availability_pkey";

drop index if exists "public"."hospitals_pkey1";

drop index if exists "public"."hospital_bed_availability_pkey";

drop index if exists "public"."hospital_emergency_info_pkey";

drop table "public"."hospital_emergency_info";

create table "public"."hospital_location_info" (
    "hpid" text not null,
    "dutyaddr" text not null,
    "dutyemcls" text not null,
    "dutyemclsname" text not null,
    "wgs84lon" double precision not null,
    "wgs84lat" double precision not null
);


alter table "public"."hospital_location_info" enable row level security;

alter table "public"."hospital_bed_availability" drop column "hospital_id";

alter table "public"."hospital_bed_availability" add column "hpid" text not null;

alter table "public"."hospitals" drop column "id";

alter table "public"."reservations" drop column "hospital_id";

alter table "public"."reservations" add column "hpid" text not null;

DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_class WHERE relkind = 'S' AND relname = 'hospital_emergency_info_info_id_seq') THEN
    CREATE SEQUENCE public.hospital_emergency_info_info_id_seq;
  END IF;
END $$;

alter sequence "public"."hospital_emergency_info_info_id_seq" owned by "public"."hospital_location_info"."hpid";

drop sequence if exists "public"."hospitals_id_seq1";

CREATE UNIQUE INDEX hospitals_pkey ON public.hospitals USING btree (hpid);

CREATE UNIQUE INDEX hospital_bed_availability_pkey ON public.hospital_bed_availability USING btree (hpid);

CREATE UNIQUE INDEX hospital_emergency_info_pkey ON public.hospital_location_info USING btree (hpid);

alter table "public"."hospital_location_info" add constraint "hospital_emergency_info_pkey" PRIMARY KEY using index "hospital_emergency_info_pkey";

alter table "public"."hospitals" add constraint "hospitals_pkey" PRIMARY KEY using index "hospitals_pkey";

alter table "public"."hospital_bed_availability" add constraint "hospital_bed_availability_pkey" PRIMARY KEY using index "hospital_bed_availability_pkey";

alter table "public"."hospital_bed_availability" add constraint "hospital_bed_availability_hpid_fkey" FOREIGN KEY (hpid) REFERENCES hospitals(hpid) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."hospital_bed_availability" validate constraint "hospital_bed_availability_hpid_fkey";

alter table "public"."hospital_location_info" add constraint "hospital_emergency_info_dutyemcls_check" CHECK ((dutyemcls = ANY (ARRAY['G001'::text, 'G006'::text, 'G007'::text, 'G009'::text]))) not valid;

alter table "public"."hospital_location_info" validate constraint "hospital_emergency_info_dutyemcls_check";

alter table "public"."hospital_location_info" add constraint "hospital_emergency_info_hpid_fkey" FOREIGN KEY (hpid) REFERENCES hospitals(hpid) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."hospital_location_info" validate constraint "hospital_emergency_info_hpid_fkey";

alter table "public"."reservations" add constraint "reservations_hpid_fkey" FOREIGN KEY (hpid) REFERENCES hospitals(hpid) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."reservations" validate constraint "reservations_hpid_fkey";

grant delete on table "public"."hospital_location_info" to "anon";

grant insert on table "public"."hospital_location_info" to "anon";

grant references on table "public"."hospital_location_info" to "anon";

grant select on table "public"."hospital_location_info" to "anon";

grant trigger on table "public"."hospital_location_info" to "anon";

grant truncate on table "public"."hospital_location_info" to "anon";

grant update on table "public"."hospital_location_info" to "anon";

grant delete on table "public"."hospital_location_info" to "authenticated";

grant insert on table "public"."hospital_location_info" to "authenticated";

grant references on table "public"."hospital_location_info" to "authenticated";

grant select on table "public"."hospital_location_info" to "authenticated";

grant trigger on table "public"."hospital_location_info" to "authenticated";

grant truncate on table "public"."hospital_location_info" to "authenticated";

grant update on table "public"."hospital_location_info" to "authenticated";

grant delete on table "public"."hospital_location_info" to "service_role";

grant insert on table "public"."hospital_location_info" to "service_role";

grant references on table "public"."hospital_location_info" to "service_role";

grant select on table "public"."hospital_location_info" to "service_role";

grant trigger on table "public"."hospital_location_info" to "service_role";

grant truncate on table "public"."hospital_location_info" to "service_role";

grant update on table "public"."hospital_location_info" to "service_role";

create policy "access own hospital location info"
on "public"."hospital_location_info"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = hospital_location_info.hpid))), false));


create policy "access own hospital bed availability info"
on "public"."hospital_bed_availability"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = hospital_bed_availability.hpid))), false));


create policy "access own reservation info"
on "public"."reservations"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = reservations.hpid))), false));


create policy "delete own reservation"
on "public"."reservations"
as permissive
for delete
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = reservations.hpid))), false));


create policy "update own reservation status"
on "public"."reservations"
as permissive
for update
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = reservations.hpid))), false))
with check (((hpid = hpid) AND (department = department) AND (reserved_by = reserved_by) AND (reserved_beds = reserved_beds) AND (requested_at = requested_at)));



