create table
  public.hospital_bed_operation_rate (
    hpid text not null,
    hvec_rate integer null,
    hvoc_rate integer null,
    hvcc_rate integer null,
    hvncc_rate integer null,
    hvccc_rate integer null,
    hvicc_rate integer null,
    hv2_rate integer null,
    hv3_rate integer null,
    hv5 boolean null,
    hv6_rate integer null,
    hv7 boolean null,
    hv8_rate integer null,
    hv9_rate integer null,
    hv10 boolean null,
    hv11 boolean null,
    hv13_rate integer null,
    hv14_rate integer null,
    hv15_rate integer null,
    hv16_rate integer null,
    hv17_rate integer null,
    hv18_rate integer null,
    hv19_rate integer null,
    hv21_rate integer null,
    hv22_rate integer null,
    hv23_rate integer null,
    hv24_rate integer null,
    hv25_rate integer null,
    hv26_rate integer null,
    hv27_rate integer null,
    hv29_rate integer null,
    hv30_rate integer null,
    hv31_rate integer null,
    hv32_rate integer null,
    hv33_rate integer null,
    hv34_rate integer null,
    hv35_rate integer null,
    hv37_rate integer null,
    hv38_rate integer null,
    hv39_rate integer null,
    hv41_rate integer null,
    hv42 boolean null,
    hv43 boolean null,
    hvctayn boolean null,
    hvmriayn boolean null,
    hvangioayn boolean null,
    hvventiayn boolean null,
    hvventisoayn boolean null,
    hvincuayn boolean null,
    hvcrrtayn boolean null,
    hvecmoayn boolean null,
    hvoxyayn boolean null,
    hvhypoayn boolean null,
    hvamyn boolean null,
    hvidate text null,
    updated_at timestamp with time zone null default now(),
    constraint hospital_bed_availability_rate_pkey primary key (hpid),
    constraint hospital_bed_availability_rate_fkey foreign key (hpid) references hospitals (hpid) on update cascade on delete cascade
  ) tablespace pg_default;

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM pg_roles
        WHERE rolname = 'chanho'
    ) THEN
        CREATE ROLE chanho WITH LOGIN PASSWORD '1234';
        GRANT CONNECT ON DATABASE postgres TO chanho;
        GRANT USAGE ON SCHEMA public TO chanho;
        REVOKE ALL ON SCHEMA public FROM chanho;
        GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.hospital_bed_availability TO chanho;
        GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.hospital_bed_operation_rate TO chanho;
    END IF;
END $$;


