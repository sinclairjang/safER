DROP TABLE IF EXISTS "public"."reservations";

create table
  public.reservations (
    department text not null,
    reserved_by uuid not null,
    reserved_beds integer not null,
    requested_at timestamp with time zone null default now(),
    approved_at timestamp with time zone null,
    rejected_at timestamp with time zone null,
    cancelled_at timestamp with time zone null,
    updated_at timestamp with time zone null default now(),
    status public.reservation_status not null default 'pending'::reservation_status,
    hpid text not null,
    id uuid not null,
    constraint reservations_pkey primary key (id),
    constraint reservations_reserved_by_fkey foreign key (reserved_by) references auth.users (id) on update cascade on delete cascade,
    constraint reservations_hpid_fkey foreign key (hpid) references hospitals (hpid) on update cascade on delete cascade
  ) tablespace pg_default;


create policy "allow to read filter combinations"
on "public"."availability_filter_combos"
as permissive
for select
to authenticated
using (true);


create policy "allow own access to operation rate"
on "public"."hospital_bed_operation_rate"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? ( SELECT hospitals.tenant_id
   FROM hospitals
  WHERE (hospitals.hpid = hospital_bed_operation_rate.hpid))), false));



