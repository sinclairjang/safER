SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.6

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '605e275b-c1f1-4852-b94e-145fcea43c56', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"young92@metabuild.com","user_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","user_phone":""}}', '2025-01-14 05:18:51.9627+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bec5a284-51ff-4840-9769-52bdd9a4df62', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-14 08:05:23.163546+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cfbe0eaa-ca82-46a8-bd0a-70739cd9ace9', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 00:14:18.996706+00', ''),
	('00000000-0000-0000-0000-000000000000', '29e338dd-4132-4381-b8b9-9fb871236a2e', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 00:14:18.998829+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b3e1a878-15d5-4d21-a640-f81caf7109fd', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 00:14:19.076979+00', ''),
	('00000000-0000-0000-0000-000000000000', '7d746c0e-1b0b-4e79-a82d-f115db41592c', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"ch1004@metabuild.com","user_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","user_phone":""}}', '2025-01-15 01:15:11.350929+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd18e43c4-b90e-4717-9648-72852b0b42a5', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 02:00:46.528743+00', ''),
	('00000000-0000-0000-0000-000000000000', '958d8df1-4ff8-4928-a513-c259732c1409', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 02:00:46.529768+00', ''),
	('00000000-0000-0000-0000-000000000000', '58a9f227-3007-48b4-a85a-29bb6118e77b', '{"action":"logout","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 02:38:29.549919+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eac3f0b3-4635-4dae-8e50-3ad3d15cebac', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 02:40:10.688197+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fcec5d45-7048-4741-8f11-ad9c90c8bdbc', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 02:40:14.103379+00', ''),
	('00000000-0000-0000-0000-000000000000', 'acc196f7-ba1b-4efc-8d60-0913e0a9e89a', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 02:42:28.014433+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8fb3cb6-cd84-4065-8064-1c368d6e618a', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 02:42:31.473269+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de7984df-8b0a-4554-bfbe-194fea8ccb19', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 02:43:54.251124+00', ''),
	('00000000-0000-0000-0000-000000000000', '7dd02491-00f5-453d-b87e-2fb96e5a3013', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 02:45:43.518179+00', ''),
	('00000000-0000-0000-0000-000000000000', '03782f6d-31b8-4a1b-a5e0-1f19e86a1968', '{"action":"logout","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 02:45:46.087507+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e6a9ad9d-fafe-422f-ac54-eb8a2f59aee8', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 02:45:54.417947+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aa3210fe-61e0-46c0-8b78-c58deb17cf1c', '{"action":"logout","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 02:45:55.920363+00', ''),
	('00000000-0000-0000-0000-000000000000', '01f7926d-40b3-437b-8af3-ed6fd1c7f041', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 02:50:43.822415+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', 'authenticated', 'authenticated', 'young92@metabuild.com', '$2a$10$fBQyLHLHUFW.Ghc6xmKiyeQOhQnoQuwa.1hxMQtNQVePn3kTh7/vq', '2025-01-14 05:18:51.965275+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-01-15 02:45:54.419298+00', '{"tenants": ["samsunghospital"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-14 05:18:51.956406+00', '2025-01-15 02:45:54.421331+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '5cb12aad-92a7-410a-a062-44a626e1f5e8', 'authenticated', 'authenticated', 'ch1004@metabuild.com', '$2a$10$iiTdnrE4jFdjWLqnTCGBa.BVfJTDVQN1RyRekqdujiwhKrvmAaDAW', '2025-01-15 01:15:11.352728+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-01-15 02:50:43.823075+00', '{"tenants": ["safer"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-15 01:15:11.340725+00', '2025-01-15 02:50:43.82542+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('f092cc72-9816-4ec5-9a6e-37d7ea46b387', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', '{"sub": "f092cc72-9816-4ec5-9a6e-37d7ea46b387", "email": "young92@metabuild.com", "email_verified": false, "phone_verified": false}', 'email', '2025-01-14 05:18:51.961173+00', '2025-01-14 05:18:51.961214+00', '2025-01-14 05:18:51.961214+00', 'd4f0c1d1-febb-4667-8e6d-92313d7c1eac'),
	('5cb12aad-92a7-410a-a062-44a626e1f5e8', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '{"sub": "5cb12aad-92a7-410a-a062-44a626e1f5e8", "email": "ch1004@metabuild.com", "email_verified": false, "phone_verified": false}', 'email', '2025-01-15 01:15:11.348927+00', '2025-01-15 01:15:11.349029+00', '2025-01-15 01:15:11.349029+00', '76d75113-209a-4fad-afc8-50797dd9b097');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('5d32c7e1-9095-4f15-9d4f-80697c7e2226', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '2025-01-15 02:50:43.823118+00', '2025-01-15 02:50:43.823118+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '172.18.0.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('5d32c7e1-9095-4f15-9d4f-80697c7e2226', '2025-01-15 02:50:43.825796+00', '2025-01-15 02:50:43.825796+00', 'password', '08f222d7-0251-43cb-8597-463e9583479b');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 9, '048IWtIMtrvRtkJFCFBF4Q', '5cb12aad-92a7-410a-a062-44a626e1f5e8', false, '2025-01-15 02:50:43.823667+00', '2025-01-15 02:50:43.823667+00', NULL, '5d32c7e1-9095-4f15-9d4f-80697c7e2226');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('samsunghospital', '2025-01-14 06:35:27.079781+00', '삼성서울병원', 'samsunghospital.com'),
	('safer', '2025-01-15 01:47:03.978069+00', '응급구조사', 'safer.com');


--
-- Data for Name: hospitals; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hospitals" ("id", "hpid", "dutyname", "dutytel3", "created_at", "tenant_id") VALUES
	(1, 'A1100010', '삼성서울병원', '02-3410-0129', '2025-01-14 07:25:27.538904+00', 'samsunghospital');


--
-- Data for Name: hospital_bed_availability; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hospital_bed_availability" ("hospital_id", "hvec", "hvoc", "hvcc", "hvncc", "hvccc", "hvicc", "hvgc", "hv2", "hv3", "hv4", "hv5", "hv6", "hv7", "hv8", "hv9", "hv10", "hv11", "hv13", "hv14", "hv15", "hv16", "hv17", "hv18", "hv19", "hv21", "hv22", "hv23", "hv24", "hv25", "hv26", "hv27", "hv28", "hv29", "hv30", "hv31", "hv32", "hv33", "hv34", "hv35", "hv36", "hv37", "hv38", "hv39", "hv40", "hv41", "hv42", "hv43", "hvctayn", "hvmriayn", "hvangioayn", "hvventiayn", "hvventisoayn", "hvincuayn", "hvcrrtayn", "hvecmoayn", "hvoxyayn", "hvhypoayn", "hvamyn", "hvidate", "updated_at") VALUES
	(1, 3, 28, NULL, 7, 9, 3, 205, 16, 14, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 2, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 12, true, NULL, true, true, true, NULL, NULL, true, true, true, false, true, true, '20250114165452', NULL);


--
-- Data for Name: hospital_emergency_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hospital_emergency_info" ("info_id", "dutyaddr", "dutyemcls", "dutyemclsname", "wgs84lon", "wgs84lat") VALUES
	(1, '서울특별시 강남구 일원로 81', 'G007', '지역응급의료센터', 37.489109, 127.088603);


--
-- Data for Name: reservations; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "supabase_user", "department", "job_title", "organization") VALUES
	(1, '2025-01-14 06:41:40.311538+00', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', '소아과', '의사', '삼성서울병원'),
	(3, '2025-01-15 01:15:58.181125+00', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '현장대응단 구조대1팀', '응급구조사', '강남소방서');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2025-01-14 06:42:02.261955+00', 1, 'samsunghospital'),
	(2, '2025-01-15 01:47:45.056201+00', 3, 'safer');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 9, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: hospital_emergency_info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."hospital_emergency_info_info_id_seq"', 1, false);


--
-- Name: hospitals_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."hospitals_id_seq1"', 1, true);


--
-- Name: reservations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."reservations_id_seq"', 1, true);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 3, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
