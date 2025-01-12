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
	('00000000-0000-0000-0000-000000000000', 'b4b40721-cd18-480c-89ab-b7606a0b6f40', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"young92@metabuild.co.kr","user_id":"04ffa013-665f-451d-a014-b0e9b552e78c","user_phone":""}}', '2024-12-28 05:30:39.063547+00', ''),
	('00000000-0000-0000-0000-000000000000', '69fc8674-e82f-4b09-b341-e61c0d622568', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 06:38:57.636008+00', ''),
	('00000000-0000-0000-0000-000000000000', '586397ec-c5fb-4295-86c2-5c4ab67bfcfa', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 06:39:00.227246+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a05d0aa8-13c1-44a2-9362-2f3091e36c0f', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 06:40:43.680038+00', ''),
	('00000000-0000-0000-0000-000000000000', '485056d7-d4f2-42d0-91f9-e9f81e38ec68', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 06:41:06.733416+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0d02ead-32ad-4495-b75b-d0255ea07bd7', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 06:42:53.366416+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6cf458e-5605-4946-9d5d-246c2f06d238', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-28 07:14:39.288564+00', ''),
	('00000000-0000-0000-0000-000000000000', '8afe1aa3-3c92-4c1b-ad47-d478045c301f', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 07:15:20.674739+00', ''),
	('00000000-0000-0000-0000-000000000000', '1872b360-2003-44a8-9aac-8331fca3054c', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-28 07:26:56.02676+00', ''),
	('00000000-0000-0000-0000-000000000000', '163dce1d-58c3-4a0b-ac49-79df14933871', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 07:27:21.935314+00', ''),
	('00000000-0000-0000-0000-000000000000', '8fc1a556-8a90-4b63-89aa-e3cfbd4b400e', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-28 07:27:23.679797+00', ''),
	('00000000-0000-0000-0000-000000000000', '034eff24-331c-454d-b6e4-992e997affb2', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 08:02:09.399804+00', ''),
	('00000000-0000-0000-0000-000000000000', '103c2190-f4ff-47e5-a81f-d87c25b4752d', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 08:02:11.439974+00', ''),
	('00000000-0000-0000-0000-000000000000', '14acfb4b-6747-4973-b9ef-f80fc7460861', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 08:02:17.321815+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d844089-25ae-4991-8e54-0ce88fa12737', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 08:02:18.266171+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c26a9337-684e-4abe-8379-8e08df643b0b', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-28 08:05:59.517161+00', ''),
	('00000000-0000-0000-0000-000000000000', '40cc8091-fdec-4f61-8e26-ea49fed70564', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 08:07:48.313232+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1d1eadb-159d-405c-bad6-1b63718ead6c', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-28 08:10:11.004584+00', ''),
	('00000000-0000-0000-0000-000000000000', '827cca6d-c56b-4d20-9acc-71aae03a4be0', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 08:10:19.722307+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ac7bef5c-1d46-40c7-8172-91c78cafd51b', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-28 08:18:17.960507+00', ''),
	('00000000-0000-0000-0000-000000000000', '659ded49-5c0f-4e3c-8ed2-49c38255a6e1', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 08:18:45.995188+00', ''),
	('00000000-0000-0000-0000-000000000000', '177f84bf-d912-45ed-a013-a0a215645caf', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-28 08:18:49.64343+00', ''),
	('00000000-0000-0000-0000-000000000000', '4120ef61-211b-40be-b089-0ee05f99f503', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 08:19:55.562831+00', ''),
	('00000000-0000-0000-0000-000000000000', '24e250e3-e718-4453-9742-3546b26fd359', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-28 08:26:49.580739+00', ''),
	('00000000-0000-0000-0000-000000000000', '47bdf5a1-58e3-4bbd-b46a-abf485152d63', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 08:28:30.4376+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc6e692f-69f3-41b0-9048-6e3ef6670adf', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-28 08:33:32.327597+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b230e5a9-50bc-4773-9aa9-2d1fd42c4bda', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 08:33:41.613682+00', ''),
	('00000000-0000-0000-0000-000000000000', '523f1448-9df1-4ab6-ab62-16305c91d245', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-28 08:43:03.370705+00', ''),
	('00000000-0000-0000-0000-000000000000', '68cb1d73-529a-4460-b72a-a5bf75a79e7f', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-28 08:44:30.135474+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b93d4b59-1201-47d3-bbf5-8e97f61cb90c', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2024-12-29 03:16:01.128499+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f883d9e-335b-4a3b-b43a-1168fba512b3', '{"action":"token_revoked","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2024-12-29 03:16:01.130409+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aff4778a-fe0f-4901-be6a-a220d6324b38', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2024-12-29 03:16:01.172565+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f84aadf-315c-42f7-89f0-78a3ba3ca729', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 03:16:10.841839+00', ''),
	('00000000-0000-0000-0000-000000000000', '53d586ad-8760-4b1f-97c9-5a0a68258657', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-29 03:19:48.587224+00', ''),
	('00000000-0000-0000-0000-000000000000', '57603ca9-e057-404f-b0c9-1b1793e97efe', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 03:20:10.761062+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d4fa966-03e9-4c74-8ff8-3d4ff6f332d3', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-29 03:24:16.709999+00', ''),
	('00000000-0000-0000-0000-000000000000', '402ec780-44dd-42ec-badd-23fb0e1b83e0', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 03:24:19.348755+00', ''),
	('00000000-0000-0000-0000-000000000000', '3b10ea6c-077e-4121-8cc6-6b8d78ef16d8', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-29 03:25:09.638006+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ada0e724-a056-40ce-9bf7-1896a4da8982', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 03:26:36.352819+00', ''),
	('00000000-0000-0000-0000-000000000000', '32005522-6717-46f2-bee3-ae3b5ccb91f5', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-29 03:27:17.515249+00', ''),
	('00000000-0000-0000-0000-000000000000', '08aa736f-602d-44b3-b651-727fc8e4d3dd', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 03:27:22.713442+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fe2db556-5713-4c4c-b779-50c2d021c93e', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-29 03:33:00.733543+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fd302324-cefe-4015-9817-36e34041d783', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 03:33:04.194456+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3619616-cf60-4616-ae66-50a8d2ae8902', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-29 03:35:31.449222+00', ''),
	('00000000-0000-0000-0000-000000000000', '7cd7fc99-1dce-47b6-bf00-1caf9eaa0405', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 03:41:06.446363+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4f4813f-1765-4b8b-b4dc-ad58837ee3e7', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-29 03:55:39.969122+00', ''),
	('00000000-0000-0000-0000-000000000000', '1163fdb6-9764-473e-84ef-b6d44e11287d', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 03:57:22.287993+00', ''),
	('00000000-0000-0000-0000-000000000000', 'daa85fdd-e364-4088-a946-0f83d7c00c90', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-29 03:58:01.180556+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e85d92cd-b366-42d7-a354-d624bb7553f6', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 04:54:54.716796+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1d08bd4-04cd-482f-806d-28601a63ec47', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-29 05:11:15.399311+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ebd3be56-e73e-4b33-948e-7abe3a506de3', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-29 05:12:30.060481+00', ''),
	('00000000-0000-0000-0000-000000000000', '149b84f6-9787-4b31-8fcc-5324e3017770', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 05:13:16.04137+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d1b9e21-f646-4151-b627-d803bfc80a66', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-29 05:22:17.9864+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c1f1961-1de3-42ed-99c2-8c11eca8ae07', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 05:22:33.182275+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eec49cc4-4880-4036-9ab5-e0dae14bc9af', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-29 05:55:59.443076+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e01f75a-0dc0-4974-bcf6-0a50d32b20f7', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-29 06:02:00.158662+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a19ba05c-b4a2-441f-b35d-6bb80680c466', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-29 06:16:34.546586+00', ''),
	('00000000-0000-0000-0000-000000000000', '2fbc8bcc-1fea-4b75-87a5-b981a25474fc', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-29 06:17:25.682013+00', ''),
	('00000000-0000-0000-0000-000000000000', '21dc8d82-1046-450d-b3a0-42381b7aec1a', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-29 06:22:02.833723+00', ''),
	('00000000-0000-0000-0000-000000000000', '4840ae84-b12e-4ea2-864a-c1bdac0fe396', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-29 06:25:02.707062+00', ''),
	('00000000-0000-0000-0000-000000000000', '60605d50-29cb-4d59-bc19-c6e8603f42cd', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 06:25:55.711666+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ada9e29d-103e-4371-a1e3-095ae956fbd7', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-29 06:45:32.939846+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c89d7e9-49a0-406c-9e2c-35010c8d627b', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-29 06:54:23.639003+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f48bda08-23f6-4f32-9d65-554ba9990d22', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-29 07:02:19.431947+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b43a0b7e-7fa1-4df0-abac-8df77b91fb54', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-29 07:06:42.968175+00', ''),
	('00000000-0000-0000-0000-000000000000', '57f962ad-31dd-4e02-a90b-8c1e45441657', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-29 07:25:39.904576+00', ''),
	('00000000-0000-0000-0000-000000000000', '8d83e156-19a2-43ca-b3a3-69b801798963', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-29 08:14:17.029667+00', ''),
	('00000000-0000-0000-0000-000000000000', '584f424d-a1b4-48a1-a22a-a13986b5ac11', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-29 08:14:56.881184+00', ''),
	('00000000-0000-0000-0000-000000000000', '4de0c35d-f2be-410a-bc93-88710da4df83', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2024-12-29 08:14:57.245639+00', ''),
	('00000000-0000-0000-0000-000000000000', '20c132d4-54a5-4e2b-a94a-f45f58b712d7', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2024-12-31 00:09:42.490037+00', ''),
	('00000000-0000-0000-0000-000000000000', '6096fa52-646e-4636-b80b-c664f4d26423', '{"action":"token_revoked","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2024-12-31 00:09:42.492365+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c33814b-bcea-42bb-829e-1669b1f5953f', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2024-12-31 00:09:42.555453+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd81b34d6-6fc0-43f1-992c-adb2d543141a', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-31 00:09:49.08337+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf529e75-cfaa-4cfe-ab2f-5ff7125299ba', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2024-12-31 00:11:13.010683+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e933892c-1f55-4dbd-8ea4-d3b3f9f52aaf', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2024-12-31 00:11:50.42951+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c361d06-5305-477c-ad78-a14bfb1c472e', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2024-12-31 00:11:50.869563+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b92eb3f-be2b-4da1-a55c-5ca36ce462b1', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-01 04:50:39.878162+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f468394a-84e7-496f-adea-5d5a6b1da2dd', '{"action":"token_revoked","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-01 04:50:39.880545+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3f7eb7f-27c6-472b-999d-c5bcc3b18a3b', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-01 04:50:39.950686+00', ''),
	('00000000-0000-0000-0000-000000000000', '8866d3da-f77b-42e2-83f4-575c27c674e2', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-01 06:21:38.843851+00', ''),
	('00000000-0000-0000-0000-000000000000', '4356cc96-7b7a-4f40-9db9-f4bfdea10b14', '{"action":"token_revoked","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-01 06:21:38.845272+00', ''),
	('00000000-0000-0000-0000-000000000000', '6dc2fd07-ce09-4629-b753-3ee296f21e29', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-01 06:21:40.966894+00', ''),
	('00000000-0000-0000-0000-000000000000', '57cbf54a-9495-4051-8a92-0842cc41580c', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-01 06:22:10.422105+00', ''),
	('00000000-0000-0000-0000-000000000000', '1673ed7f-b8be-4b3c-89ca-e9aa54f7da76', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-01 06:22:39.165426+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ab1cd77a-1435-4ce9-9e51-d1aa3e5c0cad', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-01-01 06:22:39.500863+00', ''),
	('00000000-0000-0000-0000-000000000000', '93fb8959-ec03-4ca6-a5c2-8e096321aacb', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-01 06:25:34.619824+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffb006f4-f95f-421e-90c8-edcc795783c0', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-01 06:25:44.195046+00', ''),
	('00000000-0000-0000-0000-000000000000', '08808ee4-4228-4e83-b76f-817f2cba30e3', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-01 06:26:26.222456+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b6f8557-62ac-4b0f-ba5d-2ed553cc01bc', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-01-01 06:26:26.513646+00', ''),
	('00000000-0000-0000-0000-000000000000', '72f66383-34d1-490e-b850-92339a6671db', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-01 06:28:37.194931+00', ''),
	('00000000-0000-0000-0000-000000000000', '63adc94e-169c-4a91-b769-47a8a3e3e4d9', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-01 06:28:41.022892+00', ''),
	('00000000-0000-0000-0000-000000000000', '15946c0a-de59-4663-81d9-826b67bf5045', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-01 06:29:15.627423+00', ''),
	('00000000-0000-0000-0000-000000000000', 'adac85f7-877b-4ba9-b07f-51cdcf1a2e01', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-01-01 06:29:16.121161+00', ''),
	('00000000-0000-0000-0000-000000000000', '060a43a5-1b14-43e3-97f5-3176005a51de', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-01 08:18:46.257358+00', ''),
	('00000000-0000-0000-0000-000000000000', '814bb8ac-b3f3-4ad3-95e8-454ec3415197', '{"action":"token_revoked","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-01 08:18:46.260222+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c8996a03-c4bd-43b3-8bdb-610388cf67f2', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-01 08:52:17.478754+00', ''),
	('00000000-0000-0000-0000-000000000000', '3ffb3fdb-69bc-4bcc-89e6-efb7b1bafc67', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-01 08:52:22.484342+00', ''),
	('00000000-0000-0000-0000-000000000000', '3364d022-3340-4f95-b2de-d7c8b3d611db', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-01 08:53:36.627979+00', ''),
	('00000000-0000-0000-0000-000000000000', '77db51c2-7dda-4465-9d5a-e9688d23cb59', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-01 08:56:02.533912+00', ''),
	('00000000-0000-0000-0000-000000000000', '68c4733a-f50c-4b4e-84c1-898b92f45d57', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-02 06:27:19.960342+00', ''),
	('00000000-0000-0000-0000-000000000000', '3cb3eb9d-4c80-44a4-82f0-6cc42e91b744', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-02 06:57:08.012599+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c1fcfd9-ee01-4054-8636-f38a757ddb3b', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-02 07:08:18.390195+00', ''),
	('00000000-0000-0000-0000-000000000000', '2271d1a8-a2e6-4c0f-8e4d-4c0b8a7d9b26', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-02 07:10:14.052792+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c742d39c-c546-4773-ac3e-84edafe7a728', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-02 07:12:03.099201+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a215728d-a637-4e09-b554-58239971b68c', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-02 07:12:12.142187+00', ''),
	('00000000-0000-0000-0000-000000000000', '141f45ef-b88e-450e-a715-ce4627ffbc54', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-02 07:13:42.557688+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5431421-aeb1-4803-b0b4-9571db488b29', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-02 07:13:54.687357+00', ''),
	('00000000-0000-0000-0000-000000000000', '43d3d12d-2510-482d-8647-3b28b8ab7614', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-02 07:44:33.587719+00', ''),
	('00000000-0000-0000-0000-000000000000', '7617d532-27bc-4eb5-8107-a2d0f8478e97', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-03 08:25:09.582879+00', ''),
	('00000000-0000-0000-0000-000000000000', '53abf210-455c-41f4-8a54-06f5e69199b8', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-03 08:42:32.412554+00', ''),
	('00000000-0000-0000-0000-000000000000', 'faa6a25a-aee1-4725-9bef-ed57ed0c1348', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-03 08:42:46.106052+00', ''),
	('00000000-0000-0000-0000-000000000000', '04c58986-8849-464c-9597-0e9d42efc78a', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-04 06:22:06.266052+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ba94516-a04e-4d81-a353-117f2ae5b9d4', '{"action":"token_revoked","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-04 06:22:06.267913+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e60c377-7779-43df-8a9a-ebb641d5317c', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-04 06:22:06.344357+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c0a2a1e2-1c04-4843-b7f1-541e5bc523ed', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-04 07:20:50.230354+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d8ea67c-f5ca-4755-99ba-8cb0d020bb8a', '{"action":"token_revoked","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-04 07:20:50.231619+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2439215-d5ed-407e-9af9-1aae217eb1d6', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-06 05:02:17.93338+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4893f81-8460-4f7d-b013-cb53712ac18c', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-06 05:04:06.692413+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f41ca0ce-5cbf-4b4a-82d3-d7ee52519672', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-06 06:05:53.900316+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b31af30-efad-404a-8452-1e99a1791d03', '{"action":"token_revoked","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-06 06:05:53.902628+00', ''),
	('00000000-0000-0000-0000-000000000000', '53d55782-4a57-4396-988b-fc5eb61c74a8', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-06 06:05:53.971419+00', ''),
	('00000000-0000-0000-0000-000000000000', '771ec4d1-f759-4d08-82c7-1c61a907cfc1', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-06 06:05:56.237177+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd8e2850-c53d-4d57-9a68-e75c1cb9627d', '{"action":"user_recovery_requested","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-06 06:06:07.085623+00', ''),
	('00000000-0000-0000-0000-000000000000', '39be984a-536e-43e1-81f0-28b1fe281d14', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-06 06:06:23.023165+00', ''),
	('00000000-0000-0000-0000-000000000000', '6974c0a8-02aa-4bdc-9677-5bb164e89bed', '{"action":"user_updated_password","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-06 06:08:37.645815+00', ''),
	('00000000-0000-0000-0000-000000000000', '8666c2eb-5fa5-4c52-91f3-852cf2d8b9d5', '{"action":"user_modified","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-06 06:08:37.646312+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd9673aaa-bc91-46d1-9fe7-819d7443340a', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-06 06:10:40.923192+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c03f4883-83fd-4415-a4c0-2a455bcba3fe', '{"action":"login","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-06 06:10:56.065758+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a621ab77-58e5-49b6-b628-591110466cf7', '{"action":"token_refreshed","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-06 07:15:24.575079+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c4f49351-10c7-4ba2-80ea-71aeee95c18c', '{"action":"token_revoked","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"token"}', '2025-01-06 07:15:24.576755+00', ''),
	('00000000-0000-0000-0000-000000000000', '9bc81c3a-f81a-412f-b6ab-19ce2e26e79b', '{"action":"logout","actor_id":"04ffa013-665f-451d-a014-b0e9b552e78c","actor_username":"young92@metabuild.co.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-06 07:15:27.797917+00', ''),
	('00000000-0000-0000-0000-000000000000', '788c84ef-48cc-4175-a5be-c07db391c287', '{"action":"user_recovery_requested","actor_id":"fe95c2df-2e62-4d12-8719-098fb96714c8","actor_username":"test@test.com","actor_via_sso":false,"log_type":"user"}', '2025-01-06 07:18:35.53618+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c98504d1-5abc-4150-af42-61af9c03bf49', '{"action":"user_signedup","actor_id":"fe95c2df-2e62-4d12-8719-098fb96714c8","actor_username":"test@test.com","actor_via_sso":false,"log_type":"team"}', '2025-01-06 07:19:02.290998+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d95821d-2ccf-4389-a576-1b86a53a9e10', '{"action":"user_updated_password","actor_id":"fe95c2df-2e62-4d12-8719-098fb96714c8","actor_username":"test@test.com","actor_via_sso":false,"log_type":"user"}', '2025-01-06 07:19:06.80965+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e3472a3-7038-4507-865d-8fc1d7cc8ff8', '{"action":"user_modified","actor_id":"fe95c2df-2e62-4d12-8719-098fb96714c8","actor_username":"test@test.com","actor_via_sso":false,"log_type":"user"}', '2025-01-06 07:19:06.810775+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c338177f-71cc-43e7-909f-c025f889aa4c', '{"action":"logout","actor_id":"fe95c2df-2e62-4d12-8719-098fb96714c8","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2025-01-06 07:19:09.766871+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ada705a-1ed3-492c-8fa8-c53300555b4b', '{"action":"login","actor_id":"fe95c2df-2e62-4d12-8719-098fb96714c8","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-06 07:19:16.809331+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dbf208e8-818c-488d-a77e-2009975f21dd', '{"action":"logout","actor_id":"fe95c2df-2e62-4d12-8719-098fb96714c8","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2025-01-06 07:20:54.478133+00', ''),
	('00000000-0000-0000-0000-000000000000', '718ec0f5-0b18-4117-adb9-6518fe7acc7b', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test@test.com","user_id":"fe95c2df-2e62-4d12-8719-098fb96714c8","user_phone":""}}', '2025-01-08 03:19:42.076466+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eec4c7b6-ae82-45f7-97d5-d20566e195d2', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"ch@metabuild.co.kr","user_id":"8bec3c7e-0385-4743-8de3-8a78b04dea61","user_phone":""}}', '2025-01-08 03:20:17.088996+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") VALUES
	('f7c705db-dcf1-4aad-bee3-c4fa11c1f8d4', '04ffa013-665f-451d-a014-b0e9b552e78c', '8868e7bf-a5fa-4016-8c17-1d342419ca56', 's256', 'H1Z0IPEor4xtvZLhT1bsJ8Ed8rKVPN-bfkT6LTMNaps', 'magiclink', '', '', '2024-12-29 05:55:59.431069+00', '2024-12-29 05:55:59.431069+00', 'magiclink', NULL),
	('b4f549ce-352c-431c-b17b-5bf74c03db40', '04ffa013-665f-451d-a014-b0e9b552e78c', '90e73ee9-9aa0-47d0-8d48-d9f81eb2e231', 's256', 'Q6jiBABQdTIhkVsSttTz-eKdTy3GPgjYpXCS4YemM3c', 'magiclink', '', '', '2024-12-29 06:02:00.156868+00', '2024-12-29 06:02:00.156868+00', 'magiclink', NULL),
	('9150cd36-55a0-4283-9914-a98fbbc4d3fa', '04ffa013-665f-451d-a014-b0e9b552e78c', '63513f48-a9f7-4b6a-88c7-871026ab1275', 's256', '5GU3SKvV3s4F_QLckBdMRDiHi7udEqlx0lgMa-rqas8', 'magiclink', '', '', '2024-12-29 06:16:34.539982+00', '2024-12-29 06:16:34.539982+00', 'magiclink', NULL),
	('a30f2e56-9891-4be0-99ba-69b7859ebecf', '04ffa013-665f-451d-a014-b0e9b552e78c', '64b6f75d-1a5b-4dd4-b200-646062cb66d8', 's256', '-99aWVREciPCktJejkzyLDc6ifcqhWjzKzS1ehaXLt0', 'magiclink', '', '', '2024-12-29 06:17:25.680303+00', '2024-12-29 06:17:25.680303+00', 'magiclink', NULL),
	('a3f25f14-c1f2-41d5-9021-9d3d609f7140', '04ffa013-665f-451d-a014-b0e9b552e78c', 'eab4b2d7-1d67-4281-bff7-fe929785976d', 's256', 'sCUnjAtRnsXVhC0mc1kewiwxC83cSuZryVs_S9ckfqk', 'magiclink', '', '', '2024-12-29 06:22:02.827073+00', '2024-12-29 06:22:02.827073+00', 'magiclink', NULL),
	('7a8fa92b-2239-4e59-98d2-4d5871f2ba67', '04ffa013-665f-451d-a014-b0e9b552e78c', '07b903dd-2ced-4d20-91a0-0232d5a99775', 's256', 'E_ueMm8U4hrwnSe8ICUozRHdB_ObvaaDDEmf1zy-xVQ', 'magiclink', '', '', '2024-12-29 06:25:02.702884+00', '2024-12-29 06:25:55.718033+00', 'magiclink', '2024-12-29 06:25:55.717982+00'),
	('3647d2af-0575-48e4-8331-94d8f16ec990', '04ffa013-665f-451d-a014-b0e9b552e78c', '51b70ba6-4477-4748-9506-5bc3d465a42c', 's256', '6vlp9teZtdPmzVsKC26hyWY90i8XL3g_OvbHckiKbJE', 'magiclink', '', '', '2024-12-29 06:54:23.636535+00', '2024-12-29 06:54:23.636535+00', 'magiclink', NULL),
	('5c822782-7efa-447f-af55-b936f4b92796', '04ffa013-665f-451d-a014-b0e9b552e78c', '1083d86b-9cc7-49e5-8fd6-7ab1240df21a', 's256', 'qYXJI1cPOPTRcjN5eMgCKqNTeCCEn0UVQ1GyAogbAcY', 'magiclink', '', '', '2024-12-29 07:02:19.428566+00', '2024-12-29 07:02:19.428566+00', 'magiclink', NULL),
	('eddf45ab-3211-4896-bd6d-cc3da2153c74', '04ffa013-665f-451d-a014-b0e9b552e78c', '5a93a1b0-fc25-46d1-8940-29fe98e420e8', 's256', '6foH-UhaU748d1V6uMAjni8zW9TrXr2V1dqJP2yfznc', 'magiclink', '', '', '2024-12-29 07:06:42.961514+00', '2024-12-29 07:06:42.961514+00', 'magiclink', NULL),
	('8f6874c7-e8d5-4d85-9ac6-86aa07b60a9e', '04ffa013-665f-451d-a014-b0e9b552e78c', 'de5245fc-7b0a-4a6a-979c-b7d81b72658c', 's256', 'wKwQqylll2BF-fSOujFfedKok0ZCe2AAGfDRCdzwvLo', 'magiclink', '', '', '2024-12-29 07:25:39.899444+00', '2024-12-29 07:25:39.899444+00', 'magiclink', NULL);


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '04ffa013-665f-451d-a014-b0e9b552e78c', 'authenticated', 'authenticated', 'young92@metabuild.co.kr', '$2a$10$55P010GTM0prEy9yD1cqnOkikLj6GkQXDeZnXkOZAEo5LdsWQVvAi', '2024-12-28 05:30:39.067235+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-01-06 06:10:56.066364+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-12-28 05:30:39.055133+00', '2025-01-06 07:15:24.580403+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '8bec3c7e-0385-4743-8de3-8a78b04dea61', 'authenticated', 'authenticated', 'ch@metabuild.co.kr', '$2a$10$XUHaGKZPMNdax7KmCJ7QxeUkgzeHpo7zyZ8VgxqWey0RbT/kcb.NW', '2025-01-08 03:20:17.089863+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-08 03:20:17.08482+00', '2025-01-08 03:20:17.08999+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('04ffa013-665f-451d-a014-b0e9b552e78c', '04ffa013-665f-451d-a014-b0e9b552e78c', '{"sub": "04ffa013-665f-451d-a014-b0e9b552e78c", "email": "young92@metabuild.co.kr", "email_verified": false, "phone_verified": false}', 'email', '2024-12-28 05:30:39.061487+00', '2024-12-28 05:30:39.061538+00', '2024-12-28 05:30:39.061538+00', '7d99d313-f372-47db-ad7e-1529e7efe262'),
	('8bec3c7e-0385-4743-8de3-8a78b04dea61', '8bec3c7e-0385-4743-8de3-8a78b04dea61', '{"sub": "8bec3c7e-0385-4743-8de3-8a78b04dea61", "email": "ch@metabuild.co.kr", "email_verified": false, "phone_verified": false}', 'email', '2025-01-08 03:20:17.088283+00', '2025-01-08 03:20:17.088354+00', '2025-01-08 03:20:17.088354+00', '3c155146-c57b-42f6-9c90-b54c8695454f');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



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
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2025-01-08 03:18:51.755738+00', '장진영', '04ffa013-665f-451d-a014-b0e9b552e78c'),
	(2, '2025-01-08 03:21:03.611249+00', '박찬호', '8bec3c7e-0385-4743-8de3-8a78b04dea61');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('snuh', '2025-01-08 02:47:39.836858+00', '서울대학교병원', 'snuh.org'),
	('samsunghospital', '2025-01-08 02:49:22.57787+00', '삼성서울병원', 'samsunghospital.com'),
	('hyumc', '2025-01-08 02:49:57.675619+00', '한양대학교병원', 'hyumc.kr');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: auth; Owner: postgres
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2025-01-08 07:49:55.725442+00', 1, 'hyumc'),
	(2, '2025-01-08 07:50:12.315689+00', 1, 'samsunghospital');


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 51, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: postgres
--

SELECT pg_catalog.setval('"auth"."tenant_permissions_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 2, true);


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
