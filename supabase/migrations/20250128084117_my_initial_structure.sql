alter table "public"."service_users" add column "full_name" text;

alter table "public"."reservations" rename column "department" to "bed_code";

comment on column "public"."reservations"."bed_code" is '병상 코드';
