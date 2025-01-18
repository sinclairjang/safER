

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE EXTENSION IF NOT EXISTS "pg_net" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";






COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."reservation_status" AS ENUM (
    'pending',
    'approved',
    'rejected',
    'cancelled'
);


ALTER TYPE "public"."reservation_status" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."set_reserved_by_value"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$BEGIN
  NEW.reserved_by := current_setting('request.jwt.claims', true)::jsonb->>'sub';
  RETURN NEW; 
END;$$;


ALTER FUNCTION "public"."set_reserved_by_value"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_reservation_timestamps"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$BEGIN
    -- Check if the status is 'Accepted'
    IF NEW.status = 'approved' THEN
        NEW.approved_at = NOW(); -- Set the current timestamp for accepted_at
    ELSIF NEW.status = 'rejected' THEN
        NEW.rejected_at = NOW(); -- Set the current timestamp for rejected_at
    ELSIF NEW.status = 'cancelled' THEN
        NEW.calcelled_at = NOW(); -- Set the current timestamp for rejected_at
    NEW.updated_at = NOW();        
    END IF;

    -- Always return the NEW row for the update to proceed
    RETURN NEW;
END;$$;


ALTER FUNCTION "public"."update_reservation_timestamps"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."hospital_bed_availability" (
    "hvec" integer,
    "hvoc" integer,
    "hvcc" integer,
    "hvncc" integer,
    "hvccc" integer,
    "hvicc" integer,
    "hvgc" integer,
    "hv2" integer,
    "hv3" integer,
    "hv4" integer,
    "hv5" boolean,
    "hv6" integer,
    "hv7" boolean,
    "hv8" integer,
    "hv9" integer,
    "hv10" boolean,
    "hv11" boolean,
    "hv13" integer,
    "hv14" integer,
    "hv15" integer,
    "hv16" integer,
    "hv17" integer,
    "hv18" integer,
    "hv19" integer,
    "hv21" integer,
    "hv22" integer,
    "hv23" integer,
    "hv24" integer,
    "hv25" integer,
    "hv26" integer,
    "hv27" integer,
    "hv28" integer,
    "hv29" integer,
    "hv30" integer,
    "hv31" integer,
    "hv32" integer,
    "hv33" integer,
    "hv34" integer,
    "hv35" integer,
    "hv36" integer,
    "hv37" integer,
    "hv38" integer,
    "hv39" integer,
    "hv40" integer,
    "hv41" integer,
    "hv42" boolean,
    "hv43" boolean,
    "hvctayn" boolean,
    "hvmriayn" boolean,
    "hvangioayn" boolean,
    "hvventiayn" boolean,
    "hvventisoayn" boolean,
    "hvincuayn" boolean,
    "hvcrrtayn" boolean,
    "hvecmoayn" boolean,
    "hvoxyayn" boolean,
    "hvhypoayn" boolean,
    "hvamyn" boolean,
    "hvidate" "text",
    "updated_at" timestamp with time zone,
    "hpid" "text" NOT NULL
);


ALTER TABLE "public"."hospital_bed_availability" OWNER TO "postgres";


COMMENT ON COLUMN "public"."hospital_bed_availability"."hvec" IS '응급실 일반 병상';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvoc" IS '수술실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvcc" IS '신경과 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvncc" IS '신생아 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvccc" IS '흉부외과 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvicc" IS '일반 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvgc" IS '일반 입원실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv2" IS '내과 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv3" IS '외과 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv4" IS '정형외과 입원실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv5" IS '신경과 입원실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv6" IS '신경외과 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv7" IS '약물 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv8" IS '화상 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv9" IS '외상 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv10" IS '소아용 VENTI 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv11" IS '인큐베이터 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv13" IS '격리진료구역 음격리병상';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv14" IS '격리진료구역 일반격리병상';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv15" IS '소아음압격리';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv16" IS '소아일반격리';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv17" IS '음압격리 중환자실(응급전용)';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv18" IS '일반격리 중환자실(응급전용)';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv19" IS '음압격리 입원실(응급전용)';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv21" IS '일반격리 입원실(응급전용)';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv22" IS '감염병 전담병상 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv23" IS '감염병 전담병상 중환자실 내 음압격리병상';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv24" IS '감염 중증 병상';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv25" IS '감염 준-중증 병상';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv26" IS '감염 중등증 병상';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv27" IS '코호트 격리';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv28" IS '소아';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv29" IS '응급실 음압 격리 병상';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv30" IS '응급실 일반 격리 병상';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv31" IS '중환자실(응급전용)';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv32" IS '소아 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv33" IS '소아 중환자실(응급전용)';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv34" IS '심장내과 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv35" IS '음압격리 중환자실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv36" IS '입원실(응급전용)';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv37" IS '소아 입원실(응급전용)';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv38" IS '외상전용 입원실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv39" IS '외상전용 수술실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv40" IS '정신과 폐쇄병동';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv41" IS '음압격리 입원실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv42" IS '분만실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hv43" IS '화상전용처치실';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvctayn" IS 'CT 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvmriayn" IS 'MRI 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvangioayn" IS '혈관촬영기 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvventiayn" IS '인공호흡기 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvventisoayn" IS '조산아가용 인공호흡기 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvincuayn" IS '인큐베이터 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvcrrtayn" IS 'CRRT 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvecmoayn" IS 'ECMO 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvoxyayn" IS '고압산소치료기 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvhypoayn" IS '중심체온조절유도기 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvamyn" IS '구급차 가용여부';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hvidate" IS '입력일시';



COMMENT ON COLUMN "public"."hospital_bed_availability"."hpid" IS '병원 식별 코드';



CREATE TABLE IF NOT EXISTS "public"."hospital_location_info" (
    "hpid" "text" NOT NULL,
    "dutyaddr" "text" NOT NULL,
    "dutyemcls" "text" NOT NULL,
    "dutyemclsname" "text" NOT NULL,
    "wgs84lon" double precision NOT NULL,
    "wgs84lat" double precision NOT NULL,
    CONSTRAINT "hospital_emergency_info_dutyemcls_check" CHECK (("dutyemcls" = ANY (ARRAY['G001'::"text", 'G006'::"text", 'G007'::"text", 'G009'::"text"])))
);


ALTER TABLE "public"."hospital_location_info" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."hospital_emergency_info_info_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."hospital_emergency_info_info_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."hospital_emergency_info_info_id_seq" OWNED BY "public"."hospital_location_info"."hpid";



CREATE TABLE IF NOT EXISTS "public"."hospitals" (
    "hpid" "text" NOT NULL,
    "dutyname" "text" NOT NULL,
    "dutytel3" "text",
    "created_at" timestamp with time zone DEFAULT "now"(),
    "tenant_id" "text" NOT NULL
);


ALTER TABLE "public"."hospitals" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."reservations" (
    "id" integer NOT NULL,
    "department" "text" NOT NULL,
    "reserved_by" "uuid" NOT NULL,
    "reserved_beds" integer NOT NULL,
    "requested_at" timestamp with time zone DEFAULT "now"(),
    "approved_at" timestamp with time zone,
    "rejected_at" timestamp with time zone,
    "cancelled_at" timestamp with time zone,
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "status" "public"."reservation_status" DEFAULT 'pending'::"public"."reservation_status" NOT NULL,
    "hpid" "text" NOT NULL
);


ALTER TABLE "public"."reservations" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."reservations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."reservations_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."reservations_id_seq" OWNED BY "public"."reservations"."id";



CREATE TABLE IF NOT EXISTS "public"."service_users" (
    "id" bigint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "supabase_user" "uuid" NOT NULL,
    "department" "text",
    "job_title" "text",
    "organization" "text"
);


ALTER TABLE "public"."service_users" OWNER TO "postgres";


ALTER TABLE "public"."service_users" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."service_users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."tenant_permissions" (
    "id" bigint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "service_user" bigint NOT NULL,
    "tenant" "text" NOT NULL
);


ALTER TABLE "public"."tenant_permissions" OWNER TO "postgres";


ALTER TABLE "public"."tenant_permissions" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."tenant_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."tenants" (
    "id" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "name" "text" NOT NULL,
    "domain" "text" NOT NULL
);


ALTER TABLE "public"."tenants" OWNER TO "postgres";


ALTER TABLE ONLY "public"."reservations" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."reservations_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."hospital_bed_availability"
    ADD CONSTRAINT "hospital_bed_availability_pkey" PRIMARY KEY ("hpid");



ALTER TABLE ONLY "public"."hospital_location_info"
    ADD CONSTRAINT "hospital_emergency_info_pkey" PRIMARY KEY ("hpid");



ALTER TABLE ONLY "public"."hospitals"
    ADD CONSTRAINT "hospitals_hpid_key1" UNIQUE ("hpid");



ALTER TABLE ONLY "public"."hospitals"
    ADD CONSTRAINT "hospitals_pkey" PRIMARY KEY ("hpid");



ALTER TABLE ONLY "public"."hospitals"
    ADD CONSTRAINT "hospitals_tenant_id_key" UNIQUE ("tenant_id");



ALTER TABLE ONLY "public"."reservations"
    ADD CONSTRAINT "reservations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."service_users"
    ADD CONSTRAINT "service_users_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."service_users"
    ADD CONSTRAINT "service_users_supabase_user_key" UNIQUE ("supabase_user");



ALTER TABLE ONLY "public"."tenant_permissions"
    ADD CONSTRAINT "tenant_permissions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."tenants"
    ADD CONSTRAINT "tenants_domain_key" UNIQUE ("domain");



ALTER TABLE ONLY "public"."tenants"
    ADD CONSTRAINT "tenants_pkey" PRIMARY KEY ("id");



CREATE OR REPLACE TRIGGER "tf_reservation_status" BEFORE UPDATE ON "public"."reservations" FOR EACH ROW WHEN (("old"."status" IS DISTINCT FROM "new"."status")) EXECUTE FUNCTION "public"."update_reservation_timestamps"();



CREATE OR REPLACE TRIGGER "tf_reservations_autoset_reserved_by" BEFORE INSERT ON "public"."reservations" FOR EACH ROW EXECUTE FUNCTION "public"."set_reserved_by_value"();



ALTER TABLE ONLY "public"."hospital_bed_availability"
    ADD CONSTRAINT "hospital_bed_availability_hpid_fkey" FOREIGN KEY ("hpid") REFERENCES "public"."hospitals"("hpid") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."hospital_location_info"
    ADD CONSTRAINT "hospital_emergency_info_hpid_fkey" FOREIGN KEY ("hpid") REFERENCES "public"."hospitals"("hpid") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."hospitals"
    ADD CONSTRAINT "hospitals_tenant_id_fkey" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."reservations"
    ADD CONSTRAINT "reservations_hpid_fkey" FOREIGN KEY ("hpid") REFERENCES "public"."hospitals"("hpid") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."reservations"
    ADD CONSTRAINT "reservations_reserved_by_fkey" FOREIGN KEY ("reserved_by") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."service_users"
    ADD CONSTRAINT "service_users_supabase_user_fkey" FOREIGN KEY ("supabase_user") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."tenant_permissions"
    ADD CONSTRAINT "tenant_permissions_service_user_fkey" FOREIGN KEY ("service_user") REFERENCES "public"."service_users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."tenant_permissions"
    ADD CONSTRAINT "tenant_permissions_tenant_fkey" FOREIGN KEY ("tenant") REFERENCES "public"."tenants"("id") ON UPDATE CASCADE ON DELETE CASCADE;



CREATE POLICY "access own hospital bed availability info" ON "public"."hospital_bed_availability" FOR SELECT TO "authenticated" USING (COALESCE(((("auth"."jwt"() -> 'app_metadata'::"text") -> 'tenants'::"text") ? ( SELECT "hospitals"."tenant_id"
   FROM "public"."hospitals"
  WHERE ("hospitals"."hpid" = "hospital_bed_availability"."hpid"))), false));



CREATE POLICY "access own hospital info" ON "public"."hospitals" FOR SELECT TO "authenticated" USING (COALESCE(((("auth"."jwt"() -> 'app_metadata'::"text") -> 'tenants'::"text") ? "tenant_id"), false));



CREATE POLICY "access own hospital location info" ON "public"."hospital_location_info" FOR SELECT TO "authenticated" USING (COALESCE(((("auth"."jwt"() -> 'app_metadata'::"text") -> 'tenants'::"text") ? ( SELECT "hospitals"."tenant_id"
   FROM "public"."hospitals"
  WHERE ("hospitals"."hpid" = "hospital_location_info"."hpid"))), false));



CREATE POLICY "access own reservation info" ON "public"."reservations" FOR SELECT TO "authenticated" USING (COALESCE(((("auth"."jwt"() -> 'app_metadata'::"text") -> 'tenants'::"text") ? ( SELECT "hospitals"."tenant_id"
   FROM "public"."hospitals"
  WHERE ("hospitals"."hpid" = "reservations"."hpid"))), false));



CREATE POLICY "allow all authenticated insert" ON "public"."reservations" FOR INSERT TO "authenticated" WITH CHECK (true);



CREATE POLICY "allow anon to read user data" ON "public"."service_users" FOR SELECT TO "anon" USING (true);



CREATE POLICY "allow reading own permissions" ON "public"."tenant_permissions" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT
   FROM "public"."service_users" "su"
  WHERE (("su"."id" = "tenant_permissions"."service_user") AND ("su"."supabase_user" = "auth"."uid"())))));



CREATE POLICY "can read tenant if has permission" ON "public"."tenants" FOR SELECT TO "authenticated" USING (COALESCE(((("auth"."jwt"() -> 'app_metadata'::"text") -> 'tenants'::"text") ? "id"), false));



CREATE POLICY "delete own reservation" ON "public"."reservations" FOR DELETE TO "authenticated" USING (COALESCE(((("auth"."jwt"() -> 'app_metadata'::"text") -> 'tenants'::"text") ? ( SELECT "hospitals"."tenant_id"
   FROM "public"."hospitals"
  WHERE ("hospitals"."hpid" = "reservations"."hpid"))), false));



ALTER TABLE "public"."hospital_bed_availability" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."hospital_location_info" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."hospitals" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."reservations" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."service_users" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."tenant_permissions" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."tenants" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "update own reservation status" ON "public"."reservations" FOR UPDATE TO "authenticated" USING (COALESCE(((("auth"."jwt"() -> 'app_metadata'::"text") -> 'tenants'::"text") ? ( SELECT "hospitals"."tenant_id"
   FROM "public"."hospitals"
  WHERE ("hospitals"."hpid" = "reservations"."hpid"))), false)) WITH CHECK ((("hpid" = "hpid") AND ("department" = "department") AND ("reserved_by" = "reserved_by") AND ("reserved_beds" = "reserved_beds") AND ("requested_at" = "requested_at")));



CREATE POLICY "update own user data" ON "public"."service_users" FOR UPDATE TO "authenticated" USING (("supabase_user" = "auth"."uid"())) WITH CHECK (("supabase_user" = "auth"."uid"()));





ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";





GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";





























































































































































































GRANT ALL ON FUNCTION "public"."set_reserved_by_value"() TO "anon";
GRANT ALL ON FUNCTION "public"."set_reserved_by_value"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."set_reserved_by_value"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_reservation_timestamps"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_reservation_timestamps"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_reservation_timestamps"() TO "service_role";


















GRANT ALL ON TABLE "public"."hospital_bed_availability" TO "anon";
GRANT ALL ON TABLE "public"."hospital_bed_availability" TO "authenticated";
GRANT ALL ON TABLE "public"."hospital_bed_availability" TO "service_role";



GRANT ALL ON TABLE "public"."hospital_location_info" TO "anon";
GRANT ALL ON TABLE "public"."hospital_location_info" TO "authenticated";
GRANT ALL ON TABLE "public"."hospital_location_info" TO "service_role";



GRANT ALL ON SEQUENCE "public"."hospital_emergency_info_info_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."hospital_emergency_info_info_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."hospital_emergency_info_info_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."hospitals" TO "anon";
GRANT ALL ON TABLE "public"."hospitals" TO "authenticated";
GRANT ALL ON TABLE "public"."hospitals" TO "service_role";



GRANT ALL ON TABLE "public"."reservations" TO "anon";
GRANT ALL ON TABLE "public"."reservations" TO "authenticated";
GRANT ALL ON TABLE "public"."reservations" TO "service_role";



GRANT ALL ON SEQUENCE "public"."reservations_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."reservations_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."reservations_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."service_users" TO "anon";
GRANT ALL ON TABLE "public"."service_users" TO "authenticated";
GRANT ALL ON TABLE "public"."service_users" TO "service_role";



GRANT ALL ON SEQUENCE "public"."service_users_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."service_users_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."service_users_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."tenant_permissions" TO "anon";
GRANT ALL ON TABLE "public"."tenant_permissions" TO "authenticated";
GRANT ALL ON TABLE "public"."tenant_permissions" TO "service_role";



GRANT ALL ON SEQUENCE "public"."tenant_permissions_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."tenant_permissions_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."tenant_permissions_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."tenants" TO "anon";
GRANT ALL ON TABLE "public"."tenants" TO "authenticated";
GRANT ALL ON TABLE "public"."tenants" TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";






























RESET ALL;
