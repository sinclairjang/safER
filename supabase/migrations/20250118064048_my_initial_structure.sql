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

COMMENT ON COLUMN public.hospital_bed_availability.hvec IS '응급실 일반 병상';
COMMENT ON COLUMN public.hospital_bed_availability.hvoc IS '수술실';
COMMENT ON COLUMN public.hospital_bed_availability.hvcc IS '신경과 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hvncc IS '신생아 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hvccc IS '흉부외과 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hvicc IS '일반 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hvgc IS '일반 입원실';
COMMENT ON COLUMN public.hospital_bed_availability.hv2 IS '내과 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hv3 IS '외과 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hv4 IS '정형외과 입원실';
COMMENT ON COLUMN public.hospital_bed_availability.hv5 IS '신경과 입원실';
COMMENT ON COLUMN public.hospital_bed_availability.hv6 IS '신경외과 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hv7 IS '약물 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hv8 IS '화상 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hv9 IS '외상 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hv10 IS '소아용 VENTI 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hv11 IS '인큐베이터 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hv13 IS '격리진료구역 음격리병상';
COMMENT ON COLUMN public.hospital_bed_availability.hv14 IS '격리진료구역 일반격리병상';
COMMENT ON COLUMN public.hospital_bed_availability.hv15 IS '소아음압격리';
COMMENT ON COLUMN public.hospital_bed_availability.hv16 IS '소아일반격리';
COMMENT ON COLUMN public.hospital_bed_availability.hv17 IS '음압격리 중환자실(응급전용)';
COMMENT ON COLUMN public.hospital_bed_availability.hv18 IS '일반격리 중환자실(응급전용)';
COMMENT ON COLUMN public.hospital_bed_availability.hv19 IS '음압격리 입원실(응급전용)';
COMMENT ON COLUMN public.hospital_bed_availability.hv21 IS '일반격리 입원실(응급전용)';
COMMENT ON COLUMN public.hospital_bed_availability.hv22 IS '감염병 전담병상 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hv23 IS '감염병 전담병상 중환자실 내 음압격리병상';
COMMENT ON COLUMN public.hospital_bed_availability.hv24 IS '감염 중증 병상';
COMMENT ON COLUMN public.hospital_bed_availability.hv25 IS '감염 준-중증 병상';
COMMENT ON COLUMN public.hospital_bed_availability.hv26 IS '감염 중등증 병상';
COMMENT ON COLUMN public.hospital_bed_availability.hv27 IS '코호트 격리';
COMMENT ON COLUMN public.hospital_bed_availability.hv28 IS '소아';
COMMENT ON COLUMN public.hospital_bed_availability.hv29 IS '응급실 음압 격리 병상';
COMMENT ON COLUMN public.hospital_bed_availability.hv30 IS '응급실 일반 격리 병상';
COMMENT ON COLUMN public.hospital_bed_availability.hv31 IS '중환자실(응급전용)';
COMMENT ON COLUMN public.hospital_bed_availability.hv32 IS '소아 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hv33 IS '소아 중환자실(응급전용)';
COMMENT ON COLUMN public.hospital_bed_availability.hv34 IS '심장내과 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hv35 IS '음압격리 중환자실';
COMMENT ON COLUMN public.hospital_bed_availability.hv36 IS '입원실(응급전용)';
COMMENT ON COLUMN public.hospital_bed_availability.hv37 IS '소아 입원실(응급전용)';
COMMENT ON COLUMN public.hospital_bed_availability.hv38 IS '외상전용 입원실';
COMMENT ON COLUMN public.hospital_bed_availability.hv39 IS '외상전용 수술실';
COMMENT ON COLUMN public.hospital_bed_availability.hv40 IS '정신과 폐쇄병동';
COMMENT ON COLUMN public.hospital_bed_availability.hv41 IS '음압격리 입원실';
COMMENT ON COLUMN public.hospital_bed_availability.hv42 IS '분만실';
COMMENT ON COLUMN public.hospital_bed_availability.hv43 IS '화상전용처치실';
COMMENT ON COLUMN public.hospital_bed_availability.hvctayn IS 'CT 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hvmriayn IS 'MRI 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hvangioayn IS '혈관촬영기 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hvventiayn IS '인공호흡기 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hvventisoayn IS '조산아가용 인공호흡기 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hvincuayn IS '인큐베이터 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hvcrrtayn IS 'CRRT 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hvecmoayn IS 'ECMO 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hvoxyayn IS '고압산소치료기 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hvhypoayn IS '중심체온조절유도기 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hvamyn IS '구급차 가용여부';
COMMENT ON COLUMN public.hospital_bed_availability.hvidate IS '입력일시';
COMMENT ON COLUMN public.hospital_bed_availability.hpid IS '병원 식별 코드';

