create sequence "public"."patient_assessments_id_seq";

create table "public"."patient_assessments" (
    "id" integer not null default nextval('patient_assessments_id_seq'::regclass),
    "name" text not null,
    "condition" text not null,
    "emergency_contact" character varying(15) not null,
    "eta" time without time zone not null,
    "notes" text,
    "created_at" timestamp without time zone default CURRENT_TIMESTAMP
);


alter sequence "public"."patient_assessments_id_seq" owned by "public"."patient_assessments"."id";

CREATE UNIQUE INDEX patient_assessments_pkey ON public.patient_assessments USING btree (id);

alter table "public"."patient_assessments" add constraint "patient_assessments_pkey" PRIMARY KEY using index "patient_assessments_pkey";

alter table "public"."patient_assessments" add constraint "patient_assessments_condition_check" CHECK ((condition !~ '[''\"\\;%]'::text)) not valid;

alter table "public"."patient_assessments" validate constraint "patient_assessments_condition_check";

alter table "public"."patient_assessments" add constraint "patient_assessments_emergency_contact_check" CHECK (((emergency_contact)::text ~ '^\d{10,15}$'::text)) not valid;

alter table "public"."patient_assessments" validate constraint "patient_assessments_emergency_contact_check";

alter table "public"."patient_assessments" add constraint "patient_assessments_name_check" CHECK ((name ~ '^[^!@#$%^&*(),.?":{}|<>'';%]+$'::text)) not valid;

alter table "public"."patient_assessments" validate constraint "patient_assessments_name_check";

alter table "public"."patient_assessments" add constraint "patient_assessments_notes_check" CHECK (((notes IS NULL) OR (notes !~ '[''\"\\;%]'::text))) not valid;

alter table "public"."patient_assessments" validate constraint "patient_assessments_notes_check";

grant delete on table "public"."patient_assessments" to "anon";

grant insert on table "public"."patient_assessments" to "anon";

grant references on table "public"."patient_assessments" to "anon";

grant select on table "public"."patient_assessments" to "anon";

grant trigger on table "public"."patient_assessments" to "anon";

grant truncate on table "public"."patient_assessments" to "anon";

grant update on table "public"."patient_assessments" to "anon";

grant delete on table "public"."patient_assessments" to "authenticated";

grant insert on table "public"."patient_assessments" to "authenticated";

grant references on table "public"."patient_assessments" to "authenticated";

grant select on table "public"."patient_assessments" to "authenticated";

grant trigger on table "public"."patient_assessments" to "authenticated";

grant truncate on table "public"."patient_assessments" to "authenticated";

grant update on table "public"."patient_assessments" to "authenticated";

grant delete on table "public"."patient_assessments" to "service_role";

grant insert on table "public"."patient_assessments" to "service_role";

grant references on table "public"."patient_assessments" to "service_role";

grant select on table "public"."patient_assessments" to "service_role";

grant trigger on table "public"."patient_assessments" to "service_role";

grant truncate on table "public"."patient_assessments" to "service_role";

grant update on table "public"."patient_assessments" to "service_role";


