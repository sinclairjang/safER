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
        GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.hospital_bed_availability_rate TO chanho;
    END IF;
END $$;


