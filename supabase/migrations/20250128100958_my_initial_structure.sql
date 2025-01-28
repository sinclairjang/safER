alter table "public"."patient_assessments" drop constraint "patient_assessments_name_check";

create table "public"."patients" (
    "reg_number" text not null,
    "created_at" timestamp with time zone not null default now()
);


alter table "public"."patients" enable row level security;

alter table "public"."patient_assessments" drop column "name";

alter table "public"."patient_assessments" add column "assessed_by" bigint;

alter table "public"."patient_assessments" add column "patient_reg_number" text;

alter table "public"."patient_assessments" add column "reservation_id" uuid not null;

CREATE UNIQUE INDEX patient_assessments_name_key ON public.patient_assessments USING btree (patient_reg_number);

CREATE UNIQUE INDEX patients_pkey ON public.patients USING btree (reg_number);

alter table "public"."patients" add constraint "patients_pkey" PRIMARY KEY using index "patients_pkey";

alter table "public"."patient_assessments" add constraint "patient_assessments_assessed_by_fkey" FOREIGN KEY (assessed_by) REFERENCES service_users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."patient_assessments" validate constraint "patient_assessments_assessed_by_fkey";

alter table "public"."patient_assessments" add constraint "patient_assessments_name_key" UNIQUE using index "patient_assessments_name_key";

alter table "public"."patient_assessments" add constraint "patient_assessments_reservation_id_fkey" FOREIGN KEY (reservation_id) REFERENCES reservations(id) not valid;

alter table "public"."patient_assessments" validate constraint "patient_assessments_reservation_id_fkey";

grant delete on table "public"."patients" to "anon";

grant insert on table "public"."patients" to "anon";

grant references on table "public"."patients" to "anon";

grant select on table "public"."patients" to "anon";

grant trigger on table "public"."patients" to "anon";

grant truncate on table "public"."patients" to "anon";

grant update on table "public"."patients" to "anon";

grant delete on table "public"."patients" to "authenticated";

grant insert on table "public"."patients" to "authenticated";

grant references on table "public"."patients" to "authenticated";

grant select on table "public"."patients" to "authenticated";

grant trigger on table "public"."patients" to "authenticated";

grant truncate on table "public"."patients" to "authenticated";

grant update on table "public"."patients" to "authenticated";

grant delete on table "public"."patients" to "service_role";

grant insert on table "public"."patients" to "service_role";

grant references on table "public"."patients" to "service_role";

grant select on table "public"."patients" to "service_role";

grant trigger on table "public"."patients" to "service_role";

grant truncate on table "public"."patients" to "service_role";

grant update on table "public"."patients" to "service_role";


