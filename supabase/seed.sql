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
	('00000000-0000-0000-0000-000000000000', '01f7926d-40b3-437b-8af3-ed6fd1c7f041', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 02:50:43.822415+00', ''),
	('00000000-0000-0000-0000-000000000000', '0fe140f7-18af-4c7e-a7ec-eaa33093e3bf', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 03:26:40.128425+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c18fd0c-e82a-452c-b21c-01e0a799b52a', '{"action":"logout","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 03:28:59.748898+00', ''),
	('00000000-0000-0000-0000-000000000000', '042c08bd-037d-4f3a-8332-654284a3b492', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 03:31:06.166641+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd7e44217-74fe-4924-abf9-ee07d259418c', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 05:01:49.930364+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b65eb781-dbb7-4b93-b0a0-9f0cb729af5e', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 05:01:49.931285+00', ''),
	('00000000-0000-0000-0000-000000000000', '04bbf97d-c7fb-48ab-bb18-09cd2e288f98', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 05:02:30.625905+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dacc006f-eabc-4a9d-b984-8affc15e004b', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 05:02:30.626281+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3d0183e-0844-49b9-bffe-398485628286', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 05:02:30.807225+00', ''),
	('00000000-0000-0000-0000-000000000000', '1057f349-a895-466d-a1e2-02714d097e49', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 06:04:33.647043+00', ''),
	('00000000-0000-0000-0000-000000000000', '42212a5f-b981-43e1-b2ec-8c94e8fc87c6', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 06:04:33.648645+00', ''),
	('00000000-0000-0000-0000-000000000000', '7cebfa0c-8991-40a5-97d4-f1dc8d44378d', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 06:13:38.525227+00', ''),
	('00000000-0000-0000-0000-000000000000', '4c1caab7-b9c0-415b-ad69-4ef72f0ba9d4', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 06:13:38.525981+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da540214-fa17-4c7a-b816-3353691eef57', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-15 06:13:38.569776+00', ''),
	('00000000-0000-0000-0000-000000000000', '37b0d445-13c8-4ae3-8590-ca09b0f8bf33', '{"action":"logout","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 06:13:48.707918+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec54ed24-96ee-4527-9660-6de6e31d5482', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 06:46:00.828296+00', ''),
	('00000000-0000-0000-0000-000000000000', '86fd620b-cf1a-48fd-8502-5b59aea4e70c', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 06:46:15.521861+00', ''),
	('00000000-0000-0000-0000-000000000000', '5a600acf-3f2e-4954-a18d-9f176da6439f', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 06:47:16.176562+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a8d7883e-37b9-4f7d-9fc4-8ede16035c63', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 06:47:41.494941+00', ''),
	('00000000-0000-0000-0000-000000000000', '30d32e28-de2c-414b-b305-0be21415940b', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 06:48:44.625741+00', ''),
	('00000000-0000-0000-0000-000000000000', '1eee5dcd-e5ea-4fdd-901f-33712c484ffc', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 06:48:51.22526+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c6d08a4-a0be-4357-bf0a-18f80615c5bc', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 06:49:00.706783+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce29a353-dade-4b98-8651-00c40f757e59', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 06:49:20.528531+00', ''),
	('00000000-0000-0000-0000-000000000000', '82ec747a-d4aa-41cf-a4ab-059ab1390340', '{"action":"logout","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 06:49:27.90691+00', ''),
	('00000000-0000-0000-0000-000000000000', '64752e67-737f-4c5e-88c7-1000bf1279c7', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 06:50:29.056327+00', ''),
	('00000000-0000-0000-0000-000000000000', '37d4c179-4898-4f5b-9639-274ce3b6c2ae', '{"action":"logout","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-15 06:50:38.841197+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d0e754a-41f6-4904-8b88-b70fb7b5d641', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 06:51:03.080471+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b767ed1e-60fe-4a8e-99b5-bbd156cf4e58', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-16 00:15:41.989474+00', ''),
	('00000000-0000-0000-0000-000000000000', '8851e9c3-2e7c-497d-b6b8-efc12104c670', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 01:55:40.876646+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c82d93dd-e116-48eb-a0f4-1563a69714d1', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 01:55:40.878011+00', ''),
	('00000000-0000-0000-0000-000000000000', '64caf2bf-2367-42d9-ba80-a973be814162', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-16 01:56:05.319824+00', ''),
	('00000000-0000-0000-0000-000000000000', '803421e0-3f72-4b16-b5f0-d214931b3528', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-16 02:43:14.93185+00', ''),
	('00000000-0000-0000-0000-000000000000', 'feaca318-7844-42a1-8dab-ef33a222137b', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-16 02:43:22.048927+00', ''),
	('00000000-0000-0000-0000-000000000000', '029b2ed2-9b77-445d-a1f1-9538ed8bcc63', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-16 02:44:38.89078+00', ''),
	('00000000-0000-0000-0000-000000000000', '35685d4d-7194-45f9-9ef0-38d9c3ae586a', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 03:23:11.215946+00', ''),
	('00000000-0000-0000-0000-000000000000', '0f31dbf6-80dd-4ea7-b1ae-7e4580dfc7f0', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 03:23:11.216962+00', ''),
	('00000000-0000-0000-0000-000000000000', '4662189f-3061-43c2-8041-d7b94c2a7235', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 05:43:24.831314+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c7d924c3-7c34-4114-a214-5114f9935590', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 05:43:24.834382+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fcfc7cee-12a8-40d1-9b03-4ad9f262d5c1', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 05:43:27.300839+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6a8f69d-29dd-4d9e-bee0-d319e0c1ef70', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 05:43:27.301434+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2ac2529-0312-4ea6-81c8-444b94487410', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 06:41:47.642283+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f4c4fbd-f90a-43ae-ae02-c9abef0ce89e', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 06:41:47.64335+00', ''),
	('00000000-0000-0000-0000-000000000000', '65c98212-c8ad-4416-bbd2-f4c42f1b2ec6', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 07:40:06.191072+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c7e75a92-e9b3-49d2-9132-021316fbbaca', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 07:40:06.194301+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ebf46270-d33a-49fb-bdf8-2f58fb194bd8', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 07:57:43.620277+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b69c7fa4-1976-4d3a-8a43-62bb5909bdf7', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 07:57:43.621216+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e1432ca-dee2-4972-8083-027017ca7de7', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 08:38:08.154143+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c5982c5b-d7e1-438f-b691-2ae5fafe0a65', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-16 08:38:08.155236+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ebbcf52d-5ad0-479d-a126-0c1ea48bb7d5', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 01:03:25.673685+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b08fe9f9-3c90-4813-9510-844e0515ce2c', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 01:03:25.675456+00', ''),
	('00000000-0000-0000-0000-000000000000', 'befa882b-6943-4380-9d45-970e2e67a1cf', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 01:03:25.749859+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bfca7b65-fa0d-421b-bdc5-e99012b83130', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 01:03:53.856119+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c7cca90-4a9d-4f9f-a9bf-cecbdd32ab5b', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 01:03:53.856529+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb619072-dd37-49f9-83c5-4b16c7fd7318', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 01:03:53.915771+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b3679fde-bab8-4089-b6e7-1156649e7845', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 02:02:15.169528+00', ''),
	('00000000-0000-0000-0000-000000000000', '86021ae9-f156-434e-b128-b6a375d52363', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 02:02:15.170956+00', ''),
	('00000000-0000-0000-0000-000000000000', '416f4263-33a9-4454-bb4d-051f2024b47a', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 02:03:25.110302+00', ''),
	('00000000-0000-0000-0000-000000000000', '98763f39-42cc-43c8-943e-01a85d4d1281', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 02:03:25.110948+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fd5eb054-d4c3-41eb-adfa-fce23579dc9f', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 02:04:03.874317+00', ''),
	('00000000-0000-0000-0000-000000000000', '59850d1f-01ec-4d94-8446-96601f6e6353', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 02:04:03.874884+00', ''),
	('00000000-0000-0000-0000-000000000000', '23c9a9e8-c2e0-41c5-828b-f5479f1abb6e', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 02:04:03.955638+00', ''),
	('00000000-0000-0000-0000-000000000000', '97d14709-877b-4f18-9e51-53f06e285068', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 02:15:33.038468+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e37e6a1-92a1-4c4b-b7a6-0fdec6899a0d', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 02:15:45.082623+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a841c0c4-40f1-41ac-a26a-6ae1fd249c9a', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 02:16:06.31517+00', ''),
	('00000000-0000-0000-0000-000000000000', '99061b89-8776-4dcd-87a7-64dbbcaec97e', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 02:16:12.739903+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8f9d91a-a9c9-46e5-ad87-00e2a8e1884d', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 02:16:48.167653+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fe814c8f-e6c7-4589-8ca8-cd4073267c83', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 02:16:53.785361+00', ''),
	('00000000-0000-0000-0000-000000000000', '33144808-559d-4857-ba44-03a3f4751b3a', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 02:22:12.088165+00', ''),
	('00000000-0000-0000-0000-000000000000', '4db2d940-bda0-4883-9a7c-cdcf7ccdc9c5', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 02:22:18.186236+00', ''),
	('00000000-0000-0000-0000-000000000000', '65dc245c-91c3-4246-8195-92f34cb20b23', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 02:24:24.674375+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c60a26b-6301-40ff-b9d5-06fc739bce8e', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 02:24:32.572301+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f89585b5-6926-4cbb-84b2-af0cb482edff', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 02:28:36.938709+00', ''),
	('00000000-0000-0000-0000-000000000000', '837ba33d-ea6d-49f4-adbc-aa901952e102', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 02:28:44.665819+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b9b375f-995a-4c70-a504-0173a23e377e', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 02:33:23.230209+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffde27d0-94c8-4a08-bb50-ca12b66ee997', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 02:33:28.71226+00', ''),
	('00000000-0000-0000-0000-000000000000', '1553fabb-6230-42bb-845a-4699ee6a04c7', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 02:33:52.132414+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c312f9c2-2d55-4c08-83dc-2504e631a488', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 02:33:57.675024+00', ''),
	('00000000-0000-0000-0000-000000000000', '808f7b32-9184-4f5c-8189-1615cc763fd6', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 02:35:07.231837+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0f7d853-2451-42d8-bf04-1c9cbb8c3592', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 02:35:12.463369+00', ''),
	('00000000-0000-0000-0000-000000000000', '62cd262f-8ce4-4265-9a76-920f7b9576d4', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 02:35:38.87756+00', ''),
	('00000000-0000-0000-0000-000000000000', '4050a436-3f1c-4477-8572-7c58aa529357', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 02:35:44.243609+00', ''),
	('00000000-0000-0000-0000-000000000000', 'df6c1067-0bb9-49da-96cc-a4dcce9359ca', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 02:41:19.377395+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb52446b-8da5-49f2-9069-efec2549d982', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 02:41:26.724911+00', ''),
	('00000000-0000-0000-0000-000000000000', '698cee3f-3b0a-4145-8868-94667acfe35a', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 02:58:59.11786+00', ''),
	('00000000-0000-0000-0000-000000000000', '6a6a2a04-b781-4643-9a59-e7bf8a17f0ec', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 02:59:04.82345+00', ''),
	('00000000-0000-0000-0000-000000000000', '04d9ea88-ffad-46fc-862c-199d6436e6c1', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 03:04:19.585869+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a966cee-2edd-481e-ac04-148d299f5cdc', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 03:04:25.421588+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e9911b9-2d6d-4df8-9a52-cd531bc8dd78', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 03:13:21.785714+00', ''),
	('00000000-0000-0000-0000-000000000000', '216ead18-a811-423f-a84e-fcfc91f76ce6', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 03:13:21.78644+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cc26448d-e113-4131-b288-461b0c6d498f', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 03:32:06.88509+00', ''),
	('00000000-0000-0000-0000-000000000000', '81b852fe-80f0-4511-bf33-79d413f43849', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 03:32:13.85083+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd219580-f62a-4bda-8f0f-11f132771746', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 05:21:59.538042+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0a742a5-a96f-4f6a-89d1-c255b1cc2408', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 05:21:59.539151+00', ''),
	('00000000-0000-0000-0000-000000000000', '416895b0-abcc-4517-ab4a-1cb91e1b701e', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 05:22:00.412293+00', ''),
	('00000000-0000-0000-0000-000000000000', '6a8c0af4-174e-4ecc-ae3e-300baa00a294', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 05:22:00.413163+00', ''),
	('00000000-0000-0000-0000-000000000000', '0798441c-5ca8-480e-9cc1-9f8d42c66632', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 06:21:18.754674+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd6324fc8-5122-43e9-a24d-d70f1f147cd6', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 06:21:18.756395+00', ''),
	('00000000-0000-0000-0000-000000000000', '9cd2885b-b98d-4204-9ef7-8ebc341f734a', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 06:33:36.314044+00', ''),
	('00000000-0000-0000-0000-000000000000', '84c0d2af-4fff-4005-b727-82318fc5d02e', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 06:33:36.314732+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a5269c80-ab36-44fb-9241-779c1d853484', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 07:19:24.829196+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee041cf0-0161-4cd6-9efe-78103ded6ef0', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 07:19:24.831832+00', ''),
	('00000000-0000-0000-0000-000000000000', 'af8bb1ea-96d2-4cc3-82c1-acc65c66d906', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-17 07:28:03.214026+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd7828382-9bfc-4d0a-8181-0672ea374794', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-17 07:28:10.883853+00', ''),
	('00000000-0000-0000-0000-000000000000', '9763e25a-87d8-4130-bbed-5e753eacb4fb', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 07:32:25.126374+00', ''),
	('00000000-0000-0000-0000-000000000000', '6893645f-825e-492e-9f97-a41966cffef5', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 07:32:25.126927+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f654801d-593b-4c03-94fe-572a2b692997', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 08:26:10.805349+00', ''),
	('00000000-0000-0000-0000-000000000000', '62eb249d-5963-4c5a-8187-81ec7f9f06a9', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 08:26:10.811392+00', ''),
	('00000000-0000-0000-0000-000000000000', '5882616f-ae8b-410e-879b-9e2ea092d12f', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 08:37:35.696189+00', ''),
	('00000000-0000-0000-0000-000000000000', '0479b37c-f405-4088-9d80-411c4e360c61', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 08:37:35.696989+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d52d259-9b99-4893-8b4b-e47025282233', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-20 02:35:06.520434+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed48a47f-7904-47f9-bb4d-c8f82a1b5856', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-20 02:40:29.879981+00', ''),
	('00000000-0000-0000-0000-000000000000', '23707dfb-16b6-4084-bdff-f66520871ad2', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-20 05:09:26.523073+00', ''),
	('00000000-0000-0000-0000-000000000000', '177c7a2c-c9c6-4c4d-80a6-d4a0c7a94b0c', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-20 05:09:26.523986+00', ''),
	('00000000-0000-0000-0000-000000000000', '73a64b48-6dbd-49dc-b96c-a6d12271e15b', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-20 06:01:31.874845+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fe1ccb3f-79e3-4a66-9062-798202b14a4d', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-20 06:01:31.875495+00', ''),
	('00000000-0000-0000-0000-000000000000', '4800166b-6e35-448c-bb86-68332ad64488', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-20 06:10:00.562449+00', ''),
	('00000000-0000-0000-0000-000000000000', 'acf49212-0008-416f-9549-3f5d73c28a08', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-20 06:10:00.562944+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb7704f6-9ae9-4005-80a2-736029daf4d5', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-20 07:08:27.077433+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c4c2829f-2fe4-48c6-8821-70016d9a6b80', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-20 07:08:27.078395+00', ''),
	('00000000-0000-0000-0000-000000000000', '6acaadd7-e140-48a4-956d-40d7b9ba7a3d', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-20 08:06:47.837206+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b5d235b-ec42-4ed2-8c56-949e8768637c', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-20 08:06:47.838167+00', ''),
	('00000000-0000-0000-0000-000000000000', '62df3034-6928-4791-9c07-708fd6ed095f', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-20 08:33:20.759761+00', ''),
	('00000000-0000-0000-0000-000000000000', '338102a5-2cd0-45c7-a7b2-0acde0a720ae', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-20 08:33:28.328507+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e223b6ff-679d-497f-966a-41cd0c3b91ea', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 01:03:58.128403+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4efe606-2eee-4ccf-8a83-808c54295889', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 01:03:58.130445+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd07641d1-0f81-41ae-adef-f02db97c492d', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 01:03:58.204303+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd2269043-8d1c-44ff-9bf8-7ed4657c2e38', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 01:03:59.79221+00', ''),
	('00000000-0000-0000-0000-000000000000', '09147d4d-0b1b-4b29-9502-d4dcda547154', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 01:03:59.793073+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb933fbb-3bf8-4715-b8de-840e0f1fe8f4', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 01:03:59.83917+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d404d6d-a0bf-4c6c-a619-c04449e0bf92', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 02:02:12.369713+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e11d4546-dfd5-44c2-8c5b-1f0807044c70', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 02:02:12.371047+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c58c5f83-dfef-4bcf-9cdc-7d13f199bf74', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 03:00:20.209049+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aad2862f-5228-45a0-b179-b7a7b8814b8c', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 03:00:20.21123+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed0e3940-6d64-4f57-a41f-ff1623ac6c1e', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 07:48:24.522418+00', ''),
	('00000000-0000-0000-0000-000000000000', '45a3a371-8397-4a45-81fa-74035c592d66', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 07:48:24.523981+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd7ab6129-f884-43e0-85a2-7b29da599ce6', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 00:51:12.469319+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd6eccad-e685-4793-8b44-8b6af5362428', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 00:51:12.558363+00', ''),
	('00000000-0000-0000-0000-000000000000', '2fdf291e-6ec8-418c-bf1e-3ff625821199', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 00:51:14.398915+00', ''),
	('00000000-0000-0000-0000-000000000000', '4cd163bd-7a90-4ff6-8876-c944992f0ece', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 00:51:14.399579+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b80e2394-5cd6-4828-9526-7cb7b8e0739a', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 00:51:14.445876+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ae9a32c-db7a-4618-9764-0e1b99623f49', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 01:49:23.372233+00', ''),
	('00000000-0000-0000-0000-000000000000', '1fe72d5d-07d2-4e4a-a7e5-ce0dfd42037e', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 01:49:23.373922+00', ''),
	('00000000-0000-0000-0000-000000000000', '58ea447d-8d99-47f2-8cbd-ae17faa9d048', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 02:47:27.498615+00', ''),
	('00000000-0000-0000-0000-000000000000', '39c5bfac-6b81-476a-bcbe-92c25d0fad81', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 02:47:27.502502+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a41d2cf4-8375-4680-aa36-e06bc0d72de3', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-22 03:12:10.388282+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a03017b7-8224-40fe-b7fe-559b4691a645', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-22 03:12:45.176947+00', ''),
	('00000000-0000-0000-0000-000000000000', '78c310f1-23b1-4b11-9d71-4773e109c3b3', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-22 03:12:56.642694+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dcf2fba6-362a-4d60-8c86-e2c733cb9a47', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 05:09:27.724584+00', ''),
	('00000000-0000-0000-0000-000000000000', '2913950f-1177-46d1-bad8-c5071c7bdaa1', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 05:09:27.726527+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed7e04e1-4139-4d44-b953-c13826bd1d6c', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 06:15:13.839839+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e27b38bc-b1e9-475d-84e9-e0206f2db20d', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 06:15:13.84135+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e1e298e3-aaf8-4b2c-bd1c-a9ee37f8a54f', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 07:13:15.216511+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c2cc554-5a43-4b32-bd85-845aa6789427', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 07:13:15.218189+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f9a19a52-40d2-4b4e-a064-8518d8a93159', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-23 06:49:28.259331+00', ''),
	('00000000-0000-0000-0000-000000000000', '3f4aa648-1409-4ec4-9faf-1184877b0314', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-23 06:49:28.262051+00', ''),
	('00000000-0000-0000-0000-000000000000', '90e84256-b36d-4c02-8628-efa49315a3cd', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-23 06:49:28.319028+00', ''),
	('00000000-0000-0000-0000-000000000000', '635d7a02-f202-46bc-b473-4734ae756b3d', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-23 08:43:17.454627+00', ''),
	('00000000-0000-0000-0000-000000000000', '772cf5f8-20a7-42e9-acd4-a4ea590ecd3d', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-23 08:43:17.456184+00', ''),
	('00000000-0000-0000-0000-000000000000', '587c1806-97f2-4da5-9638-d182a1a16556', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 00:26:17.628941+00', ''),
	('00000000-0000-0000-0000-000000000000', '77e9fd49-e755-46f6-bdda-ae42a39a7f43', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 00:26:17.630114+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd46c8e34-9b55-46d8-82db-bd8b6c7be004', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 00:26:17.699131+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b309c51d-07cd-4b50-9894-743536560992', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 01:24:42.789426+00', ''),
	('00000000-0000-0000-0000-000000000000', '2892e646-8658-43bf-9e5f-2d62d359a0b4', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 01:24:42.791148+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f7f95e6b-8279-4fc8-a84b-8c7e85f10b50', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 02:23:06.067626+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fe2ceae8-ced8-46ae-be8d-1d2f951da7b0', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 02:23:06.068824+00', ''),
	('00000000-0000-0000-0000-000000000000', 'faa44874-9759-4457-8638-3f82169b8bb5', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 03:35:48.513257+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8591ed0-026d-4daf-960c-bd575a4dd33d', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 03:35:48.514707+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e2f03db-c7f4-4908-8e30-a6992f52e093', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-24 03:48:04.14245+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed74ce3a-1960-46b3-9347-67e755239f7c', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 05:20:15.301472+00', ''),
	('00000000-0000-0000-0000-000000000000', '2178d72b-c94b-4c3c-8308-441b02e38b0e', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 05:20:15.302366+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c1b92e9-ecd5-4aba-aa57-dcc5a49629ed', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 05:45:11.152262+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd2b85e43-ace5-43e0-98e2-746e3c6fdc10', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 05:45:11.163422+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f25ca375-7877-4838-a50c-46d338e9b6c1', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 05:50:23.079038+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd197efab-0d69-4ca8-bf8a-9904d8d626d0', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 05:50:23.122985+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd046f4a1-f2cb-42f6-ac25-58e9aee6d6a0', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 06:20:26.196999+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed4e5b5c-573f-473e-bfb2-f42b26db42c8', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 06:20:26.197628+00', ''),
	('00000000-0000-0000-0000-000000000000', '9edf9f1e-4f13-4424-9c22-bf15e0921738', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 06:50:41.640131+00', ''),
	('00000000-0000-0000-0000-000000000000', '70dcabc4-f5c0-49a6-865e-2cb7a400c4f8', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 06:50:41.641002+00', ''),
	('00000000-0000-0000-0000-000000000000', '9e9e2584-efe0-4595-9c4f-7a412c01b25b', '{"action":"logout","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-24 06:53:37.160432+00', ''),
	('00000000-0000-0000-0000-000000000000', '1b45f407-c446-442d-848f-2a727f0a4140', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 07:18:40.061943+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd62d8330-faaf-443d-9d02-53a42033b6fe', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-24 07:18:40.062565+00', ''),
	('00000000-0000-0000-0000-000000000000', '4c12b064-fde6-4c60-ada7-ab40d29a9d3e', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 04:41:12.561529+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc40402b-cdd1-47f3-abf9-23a68cffda4f', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 04:41:12.564022+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf276e65-16de-4757-92fb-3d764be96fad', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 04:41:12.636514+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4e5e914-3b30-4821-a096-b79822c75585', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 05:39:17.075599+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a8346618-4263-4c8f-b7d1-29b192831c77', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 05:39:17.076899+00', ''),
	('00000000-0000-0000-0000-000000000000', '09f7013c-dc3d-4f35-81e4-3f712481f9c8', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 06:37:24.246478+00', ''),
	('00000000-0000-0000-0000-000000000000', '6a1b0ed0-22f3-4861-b47b-c9cd25cb2766', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 06:37:24.248008+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc9314b4-4e41-4cb9-a313-02c2daea4a84', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 07:35:35.189841+00', ''),
	('00000000-0000-0000-0000-000000000000', '25ac992f-9d05-4ea7-81b9-43f59a521485', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 07:35:35.191534+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fe6f7dc8-a04a-4856-8abb-85a70919fdec', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 08:34:02.172583+00', ''),
	('00000000-0000-0000-0000-000000000000', '1b51be71-04ec-4f8b-83c6-26b73ad1b7aa', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 08:34:02.173683+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d6f0f70-9573-4a68-9bb2-23b980389096', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 09:32:24.678058+00', ''),
	('00000000-0000-0000-0000-000000000000', '77cb53f7-4748-4ee0-9a80-e252157eaa71', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 09:32:24.679642+00', ''),
	('00000000-0000-0000-0000-000000000000', '24560417-94d2-4d3f-ad16-ec6ab906cef0', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-26 04:17:57.609757+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cc106764-ea9b-4c7f-b87c-04b3cf089a03', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-26 04:20:57.595159+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc1fcdb3-ea05-46c8-b851-8fa45ce1df9a', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-26 04:21:03.438646+00', ''),
	('00000000-0000-0000-0000-000000000000', '93f98c80-08a7-4326-a11b-db2abe32ee74', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-26 04:26:11.100495+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ccfd7749-9eb5-4e8b-9c26-0b1b1d57202c', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-26 04:27:15.328743+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf12de5e-45b6-43a7-b4aa-653757e0a9b2', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-26 04:29:17.645796+00', ''),
	('00000000-0000-0000-0000-000000000000', '811ed01a-d86a-487b-9ead-f10e6eaf8380', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-26 04:33:48.758216+00', ''),
	('00000000-0000-0000-0000-000000000000', '492715c9-9751-4985-9ac1-282d9da731c0', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-26 04:39:25.841867+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb81455e-ff17-4c4f-92e1-3871809a18c9', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-26 04:45:32.300455+00', ''),
	('00000000-0000-0000-0000-000000000000', '7043893c-934c-4eec-a7bc-5384c4ff1312', '{"action":"logout","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-26 04:47:14.049673+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c61c13b4-bc90-46cf-a7ea-454993212a8b', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-26 04:48:09.7322+00', ''),
	('00000000-0000-0000-0000-000000000000', '934c8cf6-7100-434a-baed-cdae5e2c01c6', '{"action":"logout","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-26 04:49:55.321461+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd57edbe3-fb40-45dc-8a54-a15e1c04f5e3', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-26 04:50:14.409519+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c6aa434-346e-42a0-b7c8-9b87798e5dcf', '{"action":"logout","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-26 04:50:16.193+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba3379c9-ca29-4d46-892d-327b9b2afb7c', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-26 04:50:22.573561+00', ''),
	('00000000-0000-0000-0000-000000000000', '916ae866-27d7-4570-b30d-693da2639b01', '{"action":"login","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-26 04:50:46.989319+00', ''),
	('00000000-0000-0000-0000-000000000000', '5df0b7a4-c532-47a1-917e-e60ffe82b5d2', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 05:48:37.87053+00', ''),
	('00000000-0000-0000-0000-000000000000', '233148d6-64b7-434d-85a8-48aa346218af', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 05:48:37.872164+00', ''),
	('00000000-0000-0000-0000-000000000000', '2281c5a6-96dc-4748-9dd9-a8de43598f04', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 05:55:12.026145+00', ''),
	('00000000-0000-0000-0000-000000000000', '9fd197bc-87a3-4f16-9bbf-6ee48bb37103', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 05:55:12.026697+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c150262-4c10-4b5a-bd48-22ee5cc02105', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 06:54:20.332654+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4f58849-caa4-4cb7-b123-5a6be3e2a651', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 06:54:20.334328+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd812ab9a-cffc-4ace-a3d3-6d7acc6abd5d', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 09:53:09.605033+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb8e1283-8a90-4ca8-a369-7a2a1eeb8e7d', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 09:53:09.606746+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4d05849-0651-46c1-b929-b12e435d88ca', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 09:53:10.398057+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fd3dbbed-e3d1-4afa-90fa-73c3800b50df', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 09:53:10.399137+00', ''),
	('00000000-0000-0000-0000-000000000000', '89f55134-991f-4d9e-a288-c91cd0a73e94', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 00:50:52.931073+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ae5fb3d-109b-4c63-ac1f-ad0ea3a66789', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 00:50:52.934249+00', ''),
	('00000000-0000-0000-0000-000000000000', '9dbcf24c-6548-46dd-a0f7-84cfa6a8df1f', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 00:50:53.011006+00', ''),
	('00000000-0000-0000-0000-000000000000', '8530fa45-fd54-47c1-a433-af70839b4908', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 02:01:10.96042+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb186909-e950-4237-8069-0250149a36e2', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 02:01:10.96177+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ab48077-b454-47bd-874e-2add2a6958c8', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 02:59:29.968528+00', ''),
	('00000000-0000-0000-0000-000000000000', '0903f020-c09c-4783-880b-fe36ac3bfea8', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 02:59:29.970199+00', ''),
	('00000000-0000-0000-0000-000000000000', '89885df2-7181-4306-8074-7fe523b41c34', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 03:57:56.237964+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a87c718a-5ddb-469d-9734-f27d6685784a', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 03:57:56.239131+00', ''),
	('00000000-0000-0000-0000-000000000000', '62e9669d-9452-4c7d-9e7f-245b2ca6ec81', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 05:29:36.904461+00', ''),
	('00000000-0000-0000-0000-000000000000', '43b9bf54-5671-4e07-a4f3-8010dcae8eaa', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 05:29:36.906919+00', ''),
	('00000000-0000-0000-0000-000000000000', '8915ff98-0234-4266-bf6c-15bd508298cb', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 06:43:08.400404+00', ''),
	('00000000-0000-0000-0000-000000000000', '03dee932-7c3d-41ae-acfc-62e529ba9fba', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 06:43:08.402485+00', ''),
	('00000000-0000-0000-0000-000000000000', '8aff4ec1-2d89-4439-a2e8-e185d9ee5666', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 07:41:31.040385+00', ''),
	('00000000-0000-0000-0000-000000000000', '5a7aeb66-d389-444e-bee2-4ff5d2275a48', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 07:41:31.04138+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd11cca1c-70b8-4460-aaaf-3ce19fedec40', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 08:42:19.698921+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9427ba4-92df-4769-aa1a-55979b952f3a', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 08:42:19.700632+00', ''),
	('00000000-0000-0000-0000-000000000000', '4532c46d-224e-4c66-aad6-aab5d67964bd', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 08:42:22.88155+00', ''),
	('00000000-0000-0000-0000-000000000000', '47a2cae6-ce66-475b-984a-b5548e32b574', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 08:42:22.883165+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0cbeacc-f6f9-44fc-8de2-dc49b510a5d2', '{"action":"token_refreshed","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 08:42:22.971879+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a5f3f5cb-d79c-4c7c-bf79-7d791754076a', '{"action":"logout","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-27 08:42:31.252747+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3076c07-9bdf-41fd-974e-6a101218d7b3', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-27 08:53:15.652959+00', ''),
	('00000000-0000-0000-0000-000000000000', '636cc02c-5cb1-457e-a876-f0ad6efb0d85', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-28 05:49:31.594678+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c640a88c-cde9-4ab9-b15b-89024b7d8a61', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-28 07:00:51.926924+00', ''),
	('00000000-0000-0000-0000-000000000000', '10f2c46a-bbcd-4b7b-88de-eb83b1451d5d', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-28 07:00:51.927996+00', ''),
	('00000000-0000-0000-0000-000000000000', '400d8fbf-8e37-43e7-b010-69af46568d2d', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"you_h@hymc.kr","user_id":"b543743d-11ad-4b34-9cf0-727bd7916be4","user_phone":""}}', '2025-01-28 08:08:11.70597+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abeed1bd-5c4b-455b-99ee-4c83568c082f', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"you_h@hymc.kr","user_id":"b543743d-11ad-4b34-9cf0-727bd7916be4","user_phone":""}}', '2025-01-28 08:15:01.520565+00', ''),
	('00000000-0000-0000-0000-000000000000', '1336af5f-b6bc-408a-8b9a-7d7a50cb6edd', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"you_h@hymc.kr","user_id":"27e6fabb-530c-4ba0-8b42-5ac1cac5c794","user_phone":""}}', '2025-01-28 08:15:12.338247+00', ''),
	('00000000-0000-0000-0000-000000000000', '2ed1f904-b574-49e6-92b5-6b76d67ecf5b', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"you_h@hymc.kr","user_id":"27e6fabb-530c-4ba0-8b42-5ac1cac5c794","user_phone":""}}', '2025-01-28 08:20:27.600104+00', ''),
	('00000000-0000-0000-0000-000000000000', '4fe9f816-8638-4e63-bab0-731b76507e61', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"you_h@hymc.kr","user_id":"0b75ee2e-7244-4579-bc61-a1a6915015b4","user_phone":""}}', '2025-01-28 08:20:43.040202+00', ''),
	('00000000-0000-0000-0000-000000000000', '7978d171-ba5c-4941-a84f-e612a1f0bb41', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"you_h@hymc.kr","user_id":"0b75ee2e-7244-4579-bc61-a1a6915015b4","user_phone":""}}', '2025-01-28 08:21:45.74886+00', ''),
	('00000000-0000-0000-0000-000000000000', '65f6518c-d528-4631-927f-8edf8037a32e', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"you_h@hymc.kr","user_id":"83c661dc-106e-438e-aefc-ff767d205af1","user_phone":""}}', '2025-01-28 08:21:55.102512+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c9ac9f1-a7ca-4aff-a600-0303a6bd0da4', '{"action":"user_signedup","actor_id":"83c661dc-106e-438e-aefc-ff767d205af1","actor_username":"you_h@hymc.kr","actor_via_sso":false,"log_type":"team"}', '2025-01-28 08:22:03.243521+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bd1c43eb-c352-414f-aa63-fd44a4a1e06a', '{"action":"logout","actor_id":"83c661dc-106e-438e-aefc-ff767d205af1","actor_username":"you_h@hymc.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-28 08:30:10.936155+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba04dc59-d3ea-4451-b850-5fd7d5713250', '{"action":"user_recovery_requested","actor_id":"83c661dc-106e-438e-aefc-ff767d205af1","actor_username":"you_h@hymc.kr","actor_via_sso":false,"log_type":"user"}', '2025-01-28 08:31:39.585038+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a20e8cd4-d935-4438-86ff-48eb0e191bd3', '{"action":"login","actor_id":"83c661dc-106e-438e-aefc-ff767d205af1","actor_username":"you_h@hymc.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-28 08:32:00.531319+00', ''),
	('00000000-0000-0000-0000-000000000000', '90a8fe52-af95-44de-ac91-a8e772002c09', '{"action":"logout","actor_id":"83c661dc-106e-438e-aefc-ff767d205af1","actor_username":"you_h@hymc.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-28 08:32:11.347956+00', ''),
	('00000000-0000-0000-0000-000000000000', 'af8430e2-5a03-46b4-ab2b-7c569dfbccde', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-28 08:32:33.519065+00', ''),
	('00000000-0000-0000-0000-000000000000', '44241398-ed51-47a6-817a-891a5433d81f', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-28 08:32:33.519502+00', ''),
	('00000000-0000-0000-0000-000000000000', '60a34732-da18-41db-acfd-89d94a20fcc3', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 04:04:46.499666+00', ''),
	('00000000-0000-0000-0000-000000000000', '09ae3ca3-869a-46d1-84a1-c5c9e1c3aea8', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 04:04:46.501602+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e54fede1-930e-4a84-8c44-878364df3894', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 04:04:46.590478+00', ''),
	('00000000-0000-0000-0000-000000000000', '71f58ef4-cbdb-4cd1-b507-8d3e7743f46f', '{"action":"logout","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account"}', '2025-01-29 04:05:03.971319+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b720508-ded9-4370-97f0-e90ef5bf5741', '{"action":"login","actor_id":"83c661dc-106e-438e-aefc-ff767d205af1","actor_username":"you_h@hymc.kr","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-29 04:05:14.88993+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b8b89ca-2255-4f06-912f-c1abd72f34c7', '{"action":"logout","actor_id":"83c661dc-106e-438e-aefc-ff767d205af1","actor_username":"you_h@hymc.kr","actor_via_sso":false,"log_type":"account"}', '2025-01-29 04:08:29.071041+00', ''),
	('00000000-0000-0000-0000-000000000000', '54bb2236-f0ac-49b9-b607-837714d47e5e', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"kks@safer.com","user_id":"64e8edbc-8950-4165-ba58-87e08d68bd11","user_phone":""}}', '2025-01-29 04:23:21.642186+00', ''),
	('00000000-0000-0000-0000-000000000000', '420f4544-816f-47a0-8ed5-13c56653ce9b', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"you_h@hymc.kr","user_id":"83c661dc-106e-438e-aefc-ff767d205af1","user_phone":""}}', '2025-01-29 04:44:06.497561+00', ''),
	('00000000-0000-0000-0000-000000000000', '44588882-b2fe-4397-b764-793384a13dc0', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"you_h@gangnamdream.com","user_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","user_phone":""}}', '2025-01-29 04:46:22.569676+00', ''),
	('00000000-0000-0000-0000-000000000000', '907edf91-9646-4715-bb72-521b2eaec527', '{"action":"user_signedup","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"team"}', '2025-01-29 04:46:36.185864+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f50fc42-0d06-4abe-984d-b24dc4d6901d', '{"action":"login","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-29 04:47:30.956559+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd78e9947-9763-4545-9e42-57ffa21a8abb', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 06:16:56.155451+00', ''),
	('00000000-0000-0000-0000-000000000000', '86d56010-a230-4e98-a7b9-c09b9f652cd0', '{"action":"token_revoked","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 06:16:56.16226+00', ''),
	('00000000-0000-0000-0000-000000000000', '94d536ac-c5e6-4150-98b8-ff2a661cdc06', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 06:16:59.543723+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b3e011d0-7791-47a8-984c-6c8a6ea5f2e5', '{"action":"token_revoked","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 06:16:59.544557+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c3e576a9-768f-4ca3-ad54-7a6657b54811', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"kks@safer.com","user_id":"64e8edbc-8950-4165-ba58-87e08d68bd11","user_phone":""}}', '2025-01-29 06:19:55.084116+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca65aebb-a335-4c49-b2de-c26865df1184', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"kks@kyungheehospital.com","user_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","user_phone":""}}', '2025-01-29 06:20:44.946316+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b957289a-06a0-4205-96d8-7a1c537cdf24', '{"action":"user_signedup","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"team"}', '2025-01-29 06:21:02.54357+00', ''),
	('00000000-0000-0000-0000-000000000000', '34c90b1a-3f4b-4cba-a343-95484113a42b', '{"action":"token_refreshed","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 08:30:39.4002+00', ''),
	('00000000-0000-0000-0000-000000000000', '5a9bf03b-141e-4e03-8c73-688ebfa3d1fd', '{"action":"token_revoked","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 08:30:39.401958+00', ''),
	('00000000-0000-0000-0000-000000000000', '8a59edcc-a40b-42f4-afe2-376f1dd08f3a', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 09:02:06.481592+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca526889-826d-4c33-8738-2b3488ca42e2', '{"action":"token_revoked","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 09:02:06.482209+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e62ed5f-749c-4033-bb22-5aeafcf56d24', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 10:00:13.746078+00', ''),
	('00000000-0000-0000-0000-000000000000', '0bc0b74c-3040-4d1e-9a36-ae1f618f30aa', '{"action":"token_revoked","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 10:00:13.747878+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d78c995-e0ce-452c-8f4f-9ba77c5f3969', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"sinclairjang@gmail.com","user_id":"558bbf23-6c02-405f-9964-965f3b6c3d84","user_phone":""}}', '2025-01-30 04:59:47.623389+00', ''),
	('00000000-0000-0000-0000-000000000000', '9bb0ed74-71d1-482d-add9-2a67afd1ecf7', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 05:42:11.714522+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fdf19342-705e-4870-aa24-d12636b86b9c', '{"action":"token_revoked","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 05:42:11.7154+00', ''),
	('00000000-0000-0000-0000-000000000000', '2faf0996-90a6-45c0-84c8-3846c873bfba', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 05:42:11.788651+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0a2a8b0-d244-48b5-875c-db9aac192f20', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"stronghyuk@samsunghospital.com","user_id":"ee14b162-ea0a-4183-9690-173c8836b92d","user_phone":""}}', '2025-01-30 05:43:47.066661+00', ''),
	('00000000-0000-0000-0000-000000000000', '95692523-4115-4ee5-b463-8237c9f1c46d', '{"action":"user_signedup","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"team"}', '2025-01-30 05:43:59.002647+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ba9fa25-e60c-4e72-9ebd-01074f346518', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 05:44:20.622313+00', ''),
	('00000000-0000-0000-0000-000000000000', '53300166-53fd-4647-a353-aa4f905f9569', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 05:44:20.676062+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f4ea207-1c86-40fa-a006-092099611b52', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 06:42:48.990667+00', ''),
	('00000000-0000-0000-0000-000000000000', '890abbb3-c98c-4841-8e8f-14d43bf3a09b', '{"action":"token_revoked","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 06:42:48.992004+00', ''),
	('00000000-0000-0000-0000-000000000000', '6806392a-4ecc-4dcd-b218-5dc1a915cfc8', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 07:40:54.52953+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da3210db-4f9d-466e-bb88-61d78c952f35', '{"action":"token_revoked","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 07:40:54.531018+00', ''),
	('00000000-0000-0000-0000-000000000000', '35db40f8-34ca-47a0-8a17-667f03eb2e97', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 08:15:07.713259+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e55ed7d-7eee-485e-9a7f-a27e911c2397', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 08:15:07.714033+00', ''),
	('00000000-0000-0000-0000-000000000000', '421fa989-76ee-419a-b1da-3c617d78d652', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 08:39:03.868922+00', ''),
	('00000000-0000-0000-0000-000000000000', '94c6041c-e84c-4124-a71d-77a1b16e6e72', '{"action":"token_revoked","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 08:39:03.869462+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cdc246e5-edbb-456d-87a2-1108895ff40f', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 09:37:22.769019+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c3463984-64f5-4529-a1db-f895db1fc163', '{"action":"token_revoked","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 09:37:22.771034+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f7a6ae55-f6d4-43c3-90b0-1b7b39c71192', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 09:40:52.446128+00', ''),
	('00000000-0000-0000-0000-000000000000', '8bb9adb8-27b3-498c-9bd0-cc15bf7b4c4a', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 09:40:52.451427+00', ''),
	('00000000-0000-0000-0000-000000000000', '538763a4-89ec-441d-9937-eabeea435458', '{"action":"token_refreshed","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 09:43:10.397881+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c8033af-1e74-4e60-ac99-1cbfc824f22e', '{"action":"token_revoked","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 09:43:10.398547+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba343ee6-f6ad-4c7e-b81d-0178adf11324', '{"action":"token_refreshed","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 09:43:10.440723+00', ''),
	('00000000-0000-0000-0000-000000000000', '2a978cfa-8bf2-4079-8e90-98ee173459ad', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 10:41:29.363073+00', ''),
	('00000000-0000-0000-0000-000000000000', '78740924-ef17-40fb-ac94-493d83fc202c', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 10:41:29.36416+00', ''),
	('00000000-0000-0000-0000-000000000000', '20232e16-d1c9-4ac9-b015-0f5b416d2d80', '{"action":"token_refreshed","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 10:42:38.474899+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a8a8afd-cb92-4222-907c-8699b8f63e66', '{"action":"token_revoked","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 10:42:38.475743+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e064eb6-668b-422e-949b-54c6e1b174f6', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 10:42:41.164805+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1bb6321-e462-438e-987c-3e1d0f7b3ed0', '{"action":"token_revoked","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 10:42:41.165243+00', ''),
	('00000000-0000-0000-0000-000000000000', '8ab6bef3-f664-431a-a993-08812948fae9', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 11:39:42.118536+00', ''),
	('00000000-0000-0000-0000-000000000000', '39ac4ba2-23c4-4f5c-a45c-786232a38780', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 11:39:42.119857+00', ''),
	('00000000-0000-0000-0000-000000000000', '3f2dcce0-1351-43e0-9d1b-8959780352c8', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-30 11:47:28.242648+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb929afc-5250-45b0-a69a-88aaf8aa5645', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 11:47:56.679199+00', ''),
	('00000000-0000-0000-0000-000000000000', '53fd3869-e43d-4ee4-a268-492855f0232d', '{"action":"token_revoked","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 11:47:56.679682+00', ''),
	('00000000-0000-0000-0000-000000000000', '1cc0db9e-1eb3-4497-a080-bc9ca2052829', '{"action":"token_refreshed","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 11:47:56.736124+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6cab985-3d4d-4b27-9db9-514565fe5bf7', '{"action":"logout","actor_id":"1c663348-a8c8-4a35-b3c0-3cc17197f043","actor_username":"you_h@gangnamdream.com","actor_via_sso":false,"log_type":"account"}', '2025-01-30 11:59:58.17417+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b2f871f4-7eb3-46bd-8f8a-4775e7248a75', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-30 12:00:04.239364+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd24d1e5-b28b-4f32-81b4-579ffcccb192', '{"action":"login","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-30 12:03:10.133156+00', ''),
	('00000000-0000-0000-0000-000000000000', 'af83ac5f-7511-4186-a6b7-367624e220fe', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 00:40:10.165777+00', ''),
	('00000000-0000-0000-0000-000000000000', '699c3a00-87b7-42d5-b078-a9e8b88fdd07', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 00:40:10.16762+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bbe27219-73d9-4072-9469-2af20cac83c1', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 00:40:10.260218+00', ''),
	('00000000-0000-0000-0000-000000000000', '14728a18-67f9-47d8-9af7-7e5d5645e5cf', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 00:58:19.027694+00', ''),
	('00000000-0000-0000-0000-000000000000', '40ef7330-a58e-4a47-a25f-c8697d869b70', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 00:58:19.028918+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f3468e6-0c85-4288-8dfe-8370f3ddaa79', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 00:58:19.069672+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f276e52-f436-4142-a5ea-7510b28340eb', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 01:02:23.849153+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e0bf8f1-f686-4db7-b705-d37ae414dbf0', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 01:02:23.849942+00', ''),
	('00000000-0000-0000-0000-000000000000', '9e193ca0-b150-4c6b-90ca-963956b03299', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 01:31:00.645774+00', ''),
	('00000000-0000-0000-0000-000000000000', '17266950-781f-4d69-934e-96e4f55fdfc3', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 01:31:00.647705+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c7f51ed7-04d7-4d8f-ac82-aa9215ef45b9', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 01:31:00.704906+00', ''),
	('00000000-0000-0000-0000-000000000000', '48c212ac-0e5d-4eb3-a7f0-988c2f78b8ea', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 01:38:38.96591+00', ''),
	('00000000-0000-0000-0000-000000000000', '1dc9543d-9c8f-4554-a023-03e2a5c1cc17', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 01:38:38.966419+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e31ee860-b967-4b0e-8ffe-6166bcea5307', '{"action":"token_refreshed","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 01:50:21.152434+00', ''),
	('00000000-0000-0000-0000-000000000000', '04e61bf6-8e25-4334-8abb-ce67ff4e8dc1', '{"action":"token_revoked","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 01:50:21.153236+00', ''),
	('00000000-0000-0000-0000-000000000000', '307dada3-e5ef-4682-866f-d829e3fd013b', '{"action":"token_refreshed","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 01:50:21.20217+00', ''),
	('00000000-0000-0000-0000-000000000000', '211ca2d0-9e53-4e4b-8b36-74ca55bbe6a1', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 01:56:26.687571+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e67d7538-5eb6-454b-9da1-2cbfb7a21962', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 01:56:26.688005+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a5cfd24-4567-4ae8-b9fe-4498b1d962f1', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 02:02:17.877206+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f00f9660-9987-4a28-9fc5-d5ffdf9a5074', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 02:02:17.878928+00', ''),
	('00000000-0000-0000-0000-000000000000', '31bbff26-0837-404c-a5a7-07618cb93f5c', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 02:34:38.752778+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f440a8b8-200e-45f8-875e-c922b17a6afc', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 02:34:38.753823+00', ''),
	('00000000-0000-0000-0000-000000000000', '1e32e045-900b-4d27-8880-1f4dc9561924', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 03:15:33.264073+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ddde810d-a10a-4de7-8277-c5a5b882851b', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 03:15:33.26625+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5862417-f13e-4e38-88d1-e1f12df97a8b', '{"action":"token_refreshed","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 03:16:26.428497+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bd90aab0-1bee-41c0-bc9a-3ad98f181959', '{"action":"token_revoked","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 03:16:26.428974+00', ''),
	('00000000-0000-0000-0000-000000000000', '694b7888-6888-41e1-b171-63e8994ba813', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 03:16:36.224154+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae4b6fba-c1dd-40f0-a482-b87ff6e8037b', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 03:16:36.22507+00', ''),
	('00000000-0000-0000-0000-000000000000', '373755af-6db8-44b6-ba4e-c45c44699c60', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 05:23:51.878177+00', ''),
	('00000000-0000-0000-0000-000000000000', '99bc6b4f-b59d-4938-ac8b-0ef0f77cc279', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 05:23:51.880493+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c8013e3-031b-4c17-88b5-d6f6f8a1c5ed', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 05:34:44.038843+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd46b0514-9035-4a82-90c8-c9c27bdeb2b1', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 05:34:44.040385+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8a816fc-3d7a-4aab-b8d9-545984e21ef5', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 05:34:44.514083+00', ''),
	('00000000-0000-0000-0000-000000000000', '194e9d05-946a-4130-b8df-a6cd75042c5b', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 05:34:44.514999+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b3261421-a20f-4130-909d-822253066e42', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 05:47:58.799937+00', ''),
	('00000000-0000-0000-0000-000000000000', '79ba8367-3be9-4dc2-acc9-dfcd4f8924ea', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 05:47:58.801955+00', ''),
	('00000000-0000-0000-0000-000000000000', '24784f01-2bb0-4428-a929-5c9c05b5df60', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 05:47:58.882961+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d51a808-83a0-4b7e-866d-68e16d9d68b0', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 06:46:25.187112+00', ''),
	('00000000-0000-0000-0000-000000000000', '5051edec-dcdd-49bc-8dcd-b1788560dee1', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 06:46:25.18847+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c82858ec-97cc-45d9-8a90-3d19bc508588', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 07:44:49.468351+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e26a14f6-0995-451c-b5c7-0a5061303f26', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 07:44:49.469468+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bfdaa9b7-3894-430b-a364-dff38fd04e6d', '{"action":"token_refreshed","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 08:02:19.610044+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f08ea5ec-0e06-4863-83b3-bc5fb1a4bfe0', '{"action":"token_revoked","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 08:02:19.610644+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aaf4d60c-0069-46f0-8d57-bb4d4a08f45d', '{"action":"token_refreshed","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 08:02:19.658594+00', ''),
	('00000000-0000-0000-0000-000000000000', '05b97067-465c-42f5-8ad8-a781fd8d1238', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 08:02:55.452638+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c5ab632-e830-4910-971b-3536a3cad500', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 08:02:55.453646+00', ''),
	('00000000-0000-0000-0000-000000000000', '87eb3541-1b0f-457b-9ffd-918f2106910d', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 08:06:17.918461+00', ''),
	('00000000-0000-0000-0000-000000000000', '328c4693-eae7-4710-a22b-6acca1265643', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 08:06:17.922066+00', ''),
	('00000000-0000-0000-0000-000000000000', '537038a1-86fd-43ff-83e7-8c3964fb365d', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 08:06:18.023469+00', ''),
	('00000000-0000-0000-0000-000000000000', '19fb4ca9-d820-4076-9ce2-93c58609c03b', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 08:07:11.818103+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ab0da05-d1a7-492b-822a-baf8efa35512', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 08:07:11.818688+00', ''),
	('00000000-0000-0000-0000-000000000000', '38529738-e7c5-4261-8fc8-0437176bfae9', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 08:07:11.867203+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c593766-e1c9-4bb8-b644-f22f59f912ec', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"qkrcskgh1015@samsunghospital.com","user_id":"73152b3b-38d6-4bca-9089-7fc119e2d873","user_phone":""}}', '2025-01-31 08:54:09.1259+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e0e25db3-c92f-413a-9f9c-5edaf9bb9071', '{"action":"user_signedup","actor_id":"73152b3b-38d6-4bca-9089-7fc119e2d873","actor_username":"qkrcskgh1015@samsunghospital.com","actor_via_sso":false,"log_type":"team"}', '2025-01-31 08:55:18.612812+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e035ee62-a4a9-42f9-87bb-dfa13fa028c4', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-31 08:58:34.905773+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0fcb94d-64e8-40bb-a47e-327f2533794a', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-01 04:18:28.523512+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c5bdeb5d-c767-46c3-b970-044dd94ccfc5', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 04:19:03.442816+00', ''),
	('00000000-0000-0000-0000-000000000000', '0b0e10cc-f58b-4638-bcd9-d5da299390b4', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 04:19:03.444096+00', ''),
	('00000000-0000-0000-0000-000000000000', '5f1aafa1-717d-44f5-9572-4cac4d423f83', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 04:19:03.498062+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd37a62ba-d8ef-40cc-9e28-b974cba51069', '{"action":"login","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-01 04:20:08.335582+00', ''),
	('00000000-0000-0000-0000-000000000000', 'df50a1dc-3750-44dc-94fb-ad78fb657971', '{"action":"login","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-01 05:03:51.449178+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0d22b83-71c7-430c-83a5-660785813eda', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 05:29:47.918972+00', ''),
	('00000000-0000-0000-0000-000000000000', '29e93186-afc8-455c-9d87-62d788c3cb88', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 05:29:47.920113+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1e50e37-a646-446f-8c8a-9cbcfd43a2bb', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 05:29:47.96112+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f7b39dd-e0f5-490d-b72e-3d2828c3d9af', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 05:31:14.838969+00', ''),
	('00000000-0000-0000-0000-000000000000', '94b3835c-7c39-492d-96c3-1d098ea2aa3d', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 05:31:14.839725+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4d82beb-e826-4df8-8f2d-afeb2d4d35a0', '{"action":"token_refreshed","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 06:02:06.491434+00', ''),
	('00000000-0000-0000-0000-000000000000', '6cc2ebdf-04f4-43b1-9ebb-daad5d67c4f0', '{"action":"token_revoked","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 06:02:06.492362+00', ''),
	('00000000-0000-0000-0000-000000000000', '9f462cf6-f76d-4e5c-9b9f-2336e2063065', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 06:27:53.257855+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0716d6e-b9e7-4295-843c-d8e8f3cb9a26', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 06:27:53.258468+00', ''),
	('00000000-0000-0000-0000-000000000000', '337da740-696d-4b6d-b636-dfecb7cadbd2', '{"action":"token_refreshed","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 06:56:21.588513+00', ''),
	('00000000-0000-0000-0000-000000000000', '363f4fb9-94f4-4c9c-a68a-953c444dbd24', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 06:56:21.589798+00', ''),
	('00000000-0000-0000-0000-000000000000', '50f503fd-9340-4188-9908-ece9a827a8bb', '{"action":"token_refreshed","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 07:01:22.849093+00', ''),
	('00000000-0000-0000-0000-000000000000', '304c1c25-c92b-45eb-8501-ab717ae0b38b', '{"action":"token_revoked","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 07:01:22.849963+00', ''),
	('00000000-0000-0000-0000-000000000000', '1c9eb4e6-6aac-40b0-9b8d-6d59c76b0857', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 07:26:10.294162+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c221b712-b38a-4f70-b3d9-51afeb2c19d3', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 07:26:10.294708+00', ''),
	('00000000-0000-0000-0000-000000000000', '40e0730a-7e61-40e4-994b-69cf2e8e2321', '{"action":"token_refreshed","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 08:01:23.046482+00', ''),
	('00000000-0000-0000-0000-000000000000', '46c2ee47-59da-4581-adba-2692a58a8838', '{"action":"token_revoked","actor_id":"c12495c5-5e00-45bf-9bb2-92e99d22cc06","actor_username":"kks@kyungheehospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 08:01:23.047432+00', ''),
	('00000000-0000-0000-0000-000000000000', '580f1eb5-8daf-49ff-b9a8-1ff9783286d4', '{"action":"token_refreshed","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 08:24:28.150391+00', ''),
	('00000000-0000-0000-0000-000000000000', '42e4c8ac-f67d-4d42-b404-1f96d09e8258', '{"action":"token_revoked","actor_id":"ee14b162-ea0a-4183-9690-173c8836b92d","actor_username":"stronghyuk@samsunghospital.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 08:24:28.151389+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '1c663348-a8c8-4a35-b3c0-3cc17197f043', 'authenticated', 'authenticated', 'you_h@gangnamdream.com', '$2a$10$Q79kIMK3U.z0oJOEoNvtbuTqiQ3KGdIzyt24PJV5/nnTRATA0VCDq', '2025-01-29 04:46:36.186558+00', NULL, '', '2025-01-29 04:46:22.597084+00', '', NULL, '', '', NULL, '2025-01-29 04:47:30.958194+00', '{"tenants": ["gangnamdream", "safer"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-29 04:46:22.567512+00', '2025-01-30 11:47:56.681588+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', 'authenticated', 'authenticated', 'young92@metabuild.com', '$2a$10$fBQyLHLHUFW.Ghc6xmKiyeQOhQnoQuwa.1hxMQtNQVePn3kTh7/vq', '2025-01-14 05:18:51.965275+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-01-26 04:50:46.990338+00', '{"tenants": ["samsunghospital", "safer"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-14 05:18:51.956406+00', '2025-01-27 08:42:22.887941+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '73152b3b-38d6-4bca-9089-7fc119e2d873', 'authenticated', 'authenticated', 'qkrcskgh1015@samsunghospital.com', '$2a$10$XEiwLExiV7ENvIQpfNJ7lePTOfr/K9tI7XCsYq5Ckz5VJpdmlnNvC', '2025-01-31 08:55:18.613541+00', NULL, '', '2025-01-31 08:54:09.158094+00', '', NULL, '', '', NULL, '2025-01-31 08:55:18.615995+00', '{"tenants": ["samsunghospital", "safer"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-31 08:54:09.114976+00', '2025-01-31 08:55:18.617793+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '5cb12aad-92a7-410a-a062-44a626e1f5e8', 'authenticated', 'authenticated', 'ch1004@metabuild.com', '$2a$10$iiTdnrE4jFdjWLqnTCGBa.BVfJTDVQN1RyRekqdujiwhKrvmAaDAW', '2025-01-15 01:15:11.352728+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-02-01 04:20:08.336072+00', '{"tenants": ["safer"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-15 01:15:11.340725+00', '2025-02-01 06:56:21.593903+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', 'authenticated', 'authenticated', 'kks@kyungheehospital.com', '$2a$10$/WwAEjd9FYJh1RNRm3zJfu6lor05ZDPMPCkc9vB9wnjGcmuwctqHu', '2025-01-29 06:21:02.544745+00', NULL, '', '2025-01-29 06:20:44.972045+00', '', NULL, '', '', NULL, '2025-02-01 05:03:51.451728+00', '{"tenants": ["kyungheehospital", "safer"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-29 06:20:44.943486+00', '2025-02-01 08:01:23.049786+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '558bbf23-6c02-405f-9964-965f3b6c3d84', 'authenticated', 'authenticated', 'sinclairjang@gmail.com', '$2a$10$iM7DibIGn4YnOYr/NGeg/edEHf3wcizOHd72ihtUk9ODhPqTxvWSi', '2025-01-30 04:59:47.627221+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"tenants": ["safer"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-30 04:59:47.614726+00', '2025-01-30 04:59:47.627335+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'ee14b162-ea0a-4183-9690-173c8836b92d', 'authenticated', 'authenticated', 'stronghyuk@samsunghospital.com', '$2a$10$dPg4R8q.PPnYCR1LYIcS3.J3jS8ZbxyrakLUkBZz7MXdxD0vTBSDu', '2025-01-30 05:43:59.003376+00', NULL, '', '2025-01-30 05:43:47.093671+00', '', NULL, '', '', NULL, '2025-01-30 12:03:10.133892+00', '{"tenants": ["samsunghospital", "safer"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-30 05:43:47.064631+00', '2025-02-01 08:24:28.153847+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('f092cc72-9816-4ec5-9a6e-37d7ea46b387', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', '{"sub": "f092cc72-9816-4ec5-9a6e-37d7ea46b387", "email": "young92@metabuild.com", "email_verified": false, "phone_verified": false}', 'email', '2025-01-14 05:18:51.961173+00', '2025-01-14 05:18:51.961214+00', '2025-01-14 05:18:51.961214+00', 'd4f0c1d1-febb-4667-8e6d-92313d7c1eac'),
	('5cb12aad-92a7-410a-a062-44a626e1f5e8', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '{"sub": "5cb12aad-92a7-410a-a062-44a626e1f5e8", "email": "ch1004@metabuild.com", "email_verified": false, "phone_verified": false}', 'email', '2025-01-15 01:15:11.348927+00', '2025-01-15 01:15:11.349029+00', '2025-01-15 01:15:11.349029+00', '76d75113-209a-4fad-afc8-50797dd9b097'),
	('1c663348-a8c8-4a35-b3c0-3cc17197f043', '1c663348-a8c8-4a35-b3c0-3cc17197f043', '{"sub": "1c663348-a8c8-4a35-b3c0-3cc17197f043", "email": "you_h@gangnamdream.com", "email_verified": false, "phone_verified": false}', 'email', '2025-01-29 04:46:22.568867+00', '2025-01-29 04:46:22.568906+00', '2025-01-29 04:46:22.568906+00', '531dae1c-7846-44d5-8a58-8dc9a5bd333d'),
	('c12495c5-5e00-45bf-9bb2-92e99d22cc06', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', '{"sub": "c12495c5-5e00-45bf-9bb2-92e99d22cc06", "email": "kks@kyungheehospital.com", "email_verified": false, "phone_verified": false}', 'email', '2025-01-29 06:20:44.945133+00', '2025-01-29 06:20:44.945171+00', '2025-01-29 06:20:44.945171+00', 'e23635cf-1dbe-4dd8-be69-9806aed218cf'),
	('558bbf23-6c02-405f-9964-965f3b6c3d84', '558bbf23-6c02-405f-9964-965f3b6c3d84', '{"sub": "558bbf23-6c02-405f-9964-965f3b6c3d84", "email": "sinclairjang@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-01-30 04:59:47.62116+00', '2025-01-30 04:59:47.621203+00', '2025-01-30 04:59:47.621203+00', '6ab7fcf3-225f-4b10-8f14-80b13a8f46b1'),
	('ee14b162-ea0a-4183-9690-173c8836b92d', 'ee14b162-ea0a-4183-9690-173c8836b92d', '{"sub": "ee14b162-ea0a-4183-9690-173c8836b92d", "email": "stronghyuk@samsunghospital.com", "email_verified": false, "phone_verified": false}', 'email', '2025-01-30 05:43:47.065908+00', '2025-01-30 05:43:47.065941+00', '2025-01-30 05:43:47.065941+00', 'e4ed0632-b076-4b80-9742-35e75084a47f'),
	('73152b3b-38d6-4bca-9089-7fc119e2d873', '73152b3b-38d6-4bca-9089-7fc119e2d873', '{"sub": "73152b3b-38d6-4bca-9089-7fc119e2d873", "email": "qkrcskgh1015@samsunghospital.com", "email_verified": false, "phone_verified": false}', 'email', '2025-01-31 08:54:09.123594+00', '2025-01-31 08:54:09.123672+00', '2025-01-31 08:54:09.123672+00', '26f988d9-4c7e-49cf-9aba-908c71bc1e25');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('43e1986e-775f-4900-99ef-e43e40b2eb1e', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '2025-02-01 04:18:28.527542+00', '2025-02-01 04:18:28.527542+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('e2098323-a289-4f12-b838-77e556c4e075', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '2025-02-01 04:20:08.336114+00', '2025-02-01 06:56:21.595504+00', NULL, 'aal1', NULL, '2025-02-01 06:56:21.595442', 'Next.js Middleware', '172.18.0.1', NULL),
	('475d294c-e6f6-4af5-9c09-5ca43b8337ec', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', '2025-02-01 05:03:51.451792+00', '2025-02-01 08:01:23.050857+00', NULL, 'aal1', NULL, '2025-02-01 08:01:23.050825', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('203530aa-240a-4566-96dc-f99242fe174e', 'ee14b162-ea0a-4183-9690-173c8836b92d', '2025-01-30 05:43:59.006001+00', '2025-02-01 08:24:28.15501+00', NULL, 'aal1', NULL, '2025-02-01 08:24:28.154954', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('0cf03fed-d6c3-43d6-9bde-f9328e978410', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', '2025-01-29 06:21:02.547325+00', '2025-01-31 08:02:19.659669+00', NULL, 'aal1', NULL, '2025-01-31 08:02:19.659517', 'Next.js Middleware', '172.18.0.1', NULL),
	('504aaa1f-ac5f-487d-9f8a-78bbac1f7bbc', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '2025-01-30 11:47:28.243922+00', '2025-01-31 08:02:55.458509+00', NULL, 'aal1', NULL, '2025-01-31 08:02:55.45845', 'Next.js Middleware', '172.18.0.1', NULL),
	('45deedc0-11ca-4f27-832e-932f20c018f8', 'ee14b162-ea0a-4183-9690-173c8836b92d', '2025-01-30 12:03:10.133952+00', '2025-01-31 08:06:18.026843+00', NULL, 'aal1', NULL, '2025-01-31 08:06:18.026708', 'Next.js Middleware', '172.18.0.1', NULL),
	('1386df23-e3ea-4f89-8675-cdff04798ce3', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '2025-01-30 12:00:04.240329+00', '2025-01-31 08:07:11.868786+00', NULL, 'aal1', NULL, '2025-01-31 08:07:11.868654', 'Next.js Middleware', '172.18.0.1', NULL),
	('2bd9284a-94ff-48be-b18d-d96d649bfe09', '73152b3b-38d6-4bca-9089-7fc119e2d873', '2025-01-31 08:55:18.616042+00', '2025-01-31 08:55:18.616042+00', NULL, 'aal1', NULL, NULL, 'node', '172.18.0.1', NULL),
	('84610fcc-1d70-4928-8e59-859905dc0cbc', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '2025-01-31 08:58:34.9069+00', '2025-01-31 08:58:34.9069+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '172.18.0.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('0cf03fed-d6c3-43d6-9bde-f9328e978410', '2025-01-29 06:21:02.549586+00', '2025-01-29 06:21:02.549586+00', 'otp', 'a722c3b5-a35a-4505-9f72-7bf51ca6bf63'),
	('203530aa-240a-4566-96dc-f99242fe174e', '2025-01-30 05:43:59.008385+00', '2025-01-30 05:43:59.008385+00', 'otp', '404456c3-3329-4dcf-ac8c-c0750ae8c321'),
	('504aaa1f-ac5f-487d-9f8a-78bbac1f7bbc', '2025-01-30 11:47:28.246656+00', '2025-01-30 11:47:28.246656+00', 'password', '8252f951-da65-4eab-83b4-9d6e7d7d539b'),
	('1386df23-e3ea-4f89-8675-cdff04798ce3', '2025-01-30 12:00:04.243637+00', '2025-01-30 12:00:04.243637+00', 'password', '5589df9b-5614-4033-82e7-e5d456f204e0'),
	('45deedc0-11ca-4f27-832e-932f20c018f8', '2025-01-30 12:03:10.135743+00', '2025-01-30 12:03:10.135743+00', 'password', '2e5f56fb-6500-4064-b8c1-d2718cbdbeff'),
	('2bd9284a-94ff-48be-b18d-d96d649bfe09', '2025-01-31 08:55:18.618032+00', '2025-01-31 08:55:18.618032+00', 'otp', 'bac1a496-6323-4328-85b6-0e95ece3d3cf'),
	('84610fcc-1d70-4928-8e59-859905dc0cbc', '2025-01-31 08:58:34.909151+00', '2025-01-31 08:58:34.909151+00', 'password', '870b04e7-680b-43c4-b5dc-fa5b324757d3'),
	('43e1986e-775f-4900-99ef-e43e40b2eb1e', '2025-02-01 04:18:28.53455+00', '2025-02-01 04:18:28.53455+00', 'password', '061d50d0-e2ad-496c-93de-6fcd8ee9ca5c'),
	('e2098323-a289-4f12-b838-77e556c4e075', '2025-02-01 04:20:08.337867+00', '2025-02-01 04:20:08.337867+00', 'password', '02d9c1ae-540a-48fc-92d3-ad83228104c7'),
	('475d294c-e6f6-4af5-9c09-5ca43b8337ec', '2025-02-01 05:03:51.454805+00', '2025-02-01 05:03:51.454805+00', 'password', '5a1c0485-a34e-4bd1-b19b-88246428d486');


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
	('00000000-0000-0000-0000-000000000000', 136, 'fOKRQWykej4pk5ICikKDAg', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', true, '2025-01-29 06:21:02.548434+00', '2025-01-29 08:30:39.40336+00', NULL, '0cf03fed-d6c3-43d6-9bde-f9328e978410'),
	('00000000-0000-0000-0000-000000000000', 141, '5s53gS--yA1-C_ltfbg6yQ', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-30 05:43:59.007021+00', '2025-01-30 08:15:07.714529+00', NULL, '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 144, 'NCEKCfQYyWQneWDS7pjJFQ', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-30 08:15:07.715087+00', '2025-01-30 09:40:52.45208+00', '5s53gS--yA1-C_ltfbg6yQ', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 137, 'DoU1x5utObsqTduNraNzDw', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', true, '2025-01-29 08:30:39.404235+00', '2025-01-30 09:43:10.39966+00', 'fOKRQWykej4pk5ICikKDAg', '0cf03fed-d6c3-43d6-9bde-f9328e978410'),
	('00000000-0000-0000-0000-000000000000', 147, 'osiC0_YRLLjxk-9R-l1zWQ', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-30 09:40:52.452753+00', '2025-01-30 10:41:29.36471+00', 'NCEKCfQYyWQneWDS7pjJFQ', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 148, '1mQCF78SqEGkby8MBnMQEA', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', true, '2025-01-30 09:43:10.399965+00', '2025-01-30 10:42:38.476161+00', 'DoU1x5utObsqTduNraNzDw', '0cf03fed-d6c3-43d6-9bde-f9328e978410'),
	('00000000-0000-0000-0000-000000000000', 149, 'L20YU1K6rd7FJOTsrpKW4w', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-30 10:41:29.365448+00', '2025-01-30 11:39:42.120578+00', 'osiC0_YRLLjxk-9R-l1zWQ', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 152, 'KFMFp45arfwcsW6nbpVamw', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-30 11:39:42.121293+00', '2025-01-31 00:40:10.168162+00', 'L20YU1K6rd7FJOTsrpKW4w', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 155, 'usF0n3yDmi9SdzR1epkUQg', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-30 12:00:04.241645+00', '2025-01-31 00:58:19.029367+00', NULL, '1386df23-e3ea-4f89-8675-cdff04798ce3'),
	('00000000-0000-0000-0000-000000000000', 153, 'wnne2SRUkeoX2Lguv7f1Ww', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-30 11:47:28.245369+00', '2025-01-31 01:02:23.850725+00', NULL, '504aaa1f-ac5f-487d-9f8a-78bbac1f7bbc'),
	('00000000-0000-0000-0000-000000000000', 156, 'raXjLu1EQgdqlf7PBLiS3A', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-30 12:03:10.134707+00', '2025-01-31 01:31:00.649366+00', NULL, '45deedc0-11ca-4f27-832e-932f20c018f8'),
	('00000000-0000-0000-0000-000000000000', 189, 'f7bNMPYqCnqYsKJUPv7RzQ', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-31 00:40:10.168643+00', '2025-01-31 01:38:38.967662+00', 'KFMFp45arfwcsW6nbpVamw', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 150, 'TgPJdTNeVaEFFDGgIYWG1Q', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', true, '2025-01-30 10:42:38.476474+00', '2025-01-31 01:50:21.153556+00', '1mQCF78SqEGkby8MBnMQEA', '0cf03fed-d6c3-43d6-9bde-f9328e978410'),
	('00000000-0000-0000-0000-000000000000', 190, 'nu0c6ITY3823ZJ8PfaNHqg', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-31 00:58:19.029697+00', '2025-01-31 01:56:26.688515+00', 'usF0n3yDmi9SdzR1epkUQg', '1386df23-e3ea-4f89-8675-cdff04798ce3'),
	('00000000-0000-0000-0000-000000000000', 191, 'koVH5ZIMD4YSbV9Sar123Q', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-31 01:02:23.851311+00', '2025-01-31 02:02:17.88121+00', 'wnne2SRUkeoX2Lguv7f1Ww', '504aaa1f-ac5f-487d-9f8a-78bbac1f7bbc'),
	('00000000-0000-0000-0000-000000000000', 192, '9nbGqrWq_p8JGo3KtLoq9Q', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-31 01:31:00.650566+00', '2025-01-31 02:34:38.754326+00', 'raXjLu1EQgdqlf7PBLiS3A', '45deedc0-11ca-4f27-832e-932f20c018f8'),
	('00000000-0000-0000-0000-000000000000', 196, 'Zsvm3Y1cQw85ztjYLOHThg', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-31 02:02:17.882242+00', '2025-01-31 03:15:33.267196+00', 'koVH5ZIMD4YSbV9Sar123Q', '504aaa1f-ac5f-487d-9f8a-78bbac1f7bbc'),
	('00000000-0000-0000-0000-000000000000', 194, '0O87jLWQwwMZmxLaIUjJLQ', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', true, '2025-01-31 01:50:21.154086+00', '2025-01-31 03:16:26.429408+00', 'TgPJdTNeVaEFFDGgIYWG1Q', '0cf03fed-d6c3-43d6-9bde-f9328e978410'),
	('00000000-0000-0000-0000-000000000000', 195, 'MlPT76MwSWQ_bN6sdKmucg', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-31 01:56:26.6888+00', '2025-01-31 03:16:36.225674+00', 'nu0c6ITY3823ZJ8PfaNHqg', '1386df23-e3ea-4f89-8675-cdff04798ce3'),
	('00000000-0000-0000-0000-000000000000', 200, '5qS15peRvKXClU3WmxzoLQ', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-31 03:16:36.225939+00', '2025-01-31 05:23:51.880935+00', 'MlPT76MwSWQ_bN6sdKmucg', '1386df23-e3ea-4f89-8675-cdff04798ce3'),
	('00000000-0000-0000-0000-000000000000', 198, 'LaPbQrn28cs8kTpX9cnAwA', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-31 03:15:33.268803+00', '2025-01-31 05:34:44.041684+00', 'Zsvm3Y1cQw85ztjYLOHThg', '504aaa1f-ac5f-487d-9f8a-78bbac1f7bbc'),
	('00000000-0000-0000-0000-000000000000', 197, '1iZshC22omD1nBKnehmDbQ', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-31 02:34:38.75475+00', '2025-01-31 05:34:44.51581+00', '9nbGqrWq_p8JGo3KtLoq9Q', '45deedc0-11ca-4f27-832e-932f20c018f8'),
	('00000000-0000-0000-0000-000000000000', 193, '4_hPYTy20TRGGAC69gg0Zw', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-31 01:38:38.968185+00', '2025-01-31 05:47:58.803634+00', 'f7bNMPYqCnqYsKJUPv7RzQ', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 204, 'gglfFTgHczRnxvgvyQczjw', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-31 05:47:58.804693+00', '2025-01-31 06:46:25.188907+00', '4_hPYTy20TRGGAC69gg0Zw', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 205, 'YpkUYC0Si89mqAo0HpB11A', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-31 06:46:25.189711+00', '2025-01-31 07:44:49.469892+00', 'gglfFTgHczRnxvgvyQczjw', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 199, 'KQfQIDDEOERehNumEGAd0Q', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', true, '2025-01-31 03:16:26.429604+00', '2025-01-31 08:02:19.61112+00', '0O87jLWQwwMZmxLaIUjJLQ', '0cf03fed-d6c3-43d6-9bde-f9328e978410'),
	('00000000-0000-0000-0000-000000000000', 207, 'SxYkETDQoxDkCmSXtQiJ5Q', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', false, '2025-01-31 08:02:19.611411+00', '2025-01-31 08:02:19.611411+00', 'KQfQIDDEOERehNumEGAd0Q', '0cf03fed-d6c3-43d6-9bde-f9328e978410'),
	('00000000-0000-0000-0000-000000000000', 202, 'vLx1TPvZnhcOJIo4yF3j3A', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-31 05:34:44.04225+00', '2025-01-31 08:02:55.455533+00', 'LaPbQrn28cs8kTpX9cnAwA', '504aaa1f-ac5f-487d-9f8a-78bbac1f7bbc'),
	('00000000-0000-0000-0000-000000000000', 208, 'VvBFazxCBCxYCVXVoq0iVA', '5cb12aad-92a7-410a-a062-44a626e1f5e8', false, '2025-01-31 08:02:55.455994+00', '2025-01-31 08:02:55.455994+00', 'vLx1TPvZnhcOJIo4yF3j3A', '504aaa1f-ac5f-487d-9f8a-78bbac1f7bbc'),
	('00000000-0000-0000-0000-000000000000', 203, 'SmRIUFYuRJaOScWFJCEstA', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-31 05:34:44.516121+00', '2025-01-31 08:06:17.925885+00', '1iZshC22omD1nBKnehmDbQ', '45deedc0-11ca-4f27-832e-932f20c018f8'),
	('00000000-0000-0000-0000-000000000000', 209, 's0oO40tcBSrKJrCAmLObxQ', 'ee14b162-ea0a-4183-9690-173c8836b92d', false, '2025-01-31 08:06:17.928327+00', '2025-01-31 08:06:17.928327+00', 'SmRIUFYuRJaOScWFJCEstA', '45deedc0-11ca-4f27-832e-932f20c018f8'),
	('00000000-0000-0000-0000-000000000000', 201, 'RALoE_t_fcC0LnOki-XvcQ', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-31 05:23:51.881785+00', '2025-01-31 08:07:11.819112+00', '5qS15peRvKXClU3WmxzoLQ', '1386df23-e3ea-4f89-8675-cdff04798ce3'),
	('00000000-0000-0000-0000-000000000000', 210, 'pdBpQyYLjf12sqaVGQynhA', '5cb12aad-92a7-410a-a062-44a626e1f5e8', false, '2025-01-31 08:07:11.819265+00', '2025-01-31 08:07:11.819265+00', 'RALoE_t_fcC0LnOki-XvcQ', '1386df23-e3ea-4f89-8675-cdff04798ce3'),
	('00000000-0000-0000-0000-000000000000', 211, 'Lv2qQTafuAMZ-G4K9SOz-A', '73152b3b-38d6-4bca-9089-7fc119e2d873', false, '2025-01-31 08:55:18.616998+00', '2025-01-31 08:55:18.616998+00', NULL, '2bd9284a-94ff-48be-b18d-d96d649bfe09'),
	('00000000-0000-0000-0000-000000000000', 212, 'Vvl4LCkSCPQ1QXJEsve1Jg', '5cb12aad-92a7-410a-a062-44a626e1f5e8', false, '2025-01-31 08:58:34.907887+00', '2025-01-31 08:58:34.907887+00', NULL, '84610fcc-1d70-4928-8e59-859905dc0cbc'),
	('00000000-0000-0000-0000-000000000000', 213, 'JImiSH-y5Z_kEWSjzgUQDA', '5cb12aad-92a7-410a-a062-44a626e1f5e8', false, '2025-02-01 04:18:28.529987+00', '2025-02-01 04:18:28.529987+00', NULL, '43e1986e-775f-4900-99ef-e43e40b2eb1e'),
	('00000000-0000-0000-0000-000000000000', 206, 'LE1C0vD0rRSd0vrgL8qTUA', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-01-31 07:44:49.470591+00', '2025-02-01 04:19:03.445189+00', 'YpkUYC0Si89mqAo0HpB11A', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 214, '27fZzDtN5K0ScdJlMYVqVw', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-02-01 04:19:03.446211+00', '2025-02-01 05:29:47.920753+00', 'LE1C0vD0rRSd0vrgL8qTUA', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 215, 'Xj7vT0W85Q5XJm2WQSFEKQ', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-02-01 04:20:08.336795+00', '2025-02-01 05:31:14.840834+00', NULL, 'e2098323-a289-4f12-b838-77e556c4e075'),
	('00000000-0000-0000-0000-000000000000', 216, 'GpzFpJx0dRTZotMIiPOQNg', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', true, '2025-02-01 05:03:51.453033+00', '2025-02-01 06:02:06.492798+00', NULL, '475d294c-e6f6-4af5-9c09-5ca43b8337ec'),
	('00000000-0000-0000-0000-000000000000', 218, 'qRVAum0MIzCT64OAt2-WSw', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-02-01 05:31:14.841309+00', '2025-02-01 06:56:21.59114+00', 'Xj7vT0W85Q5XJm2WQSFEKQ', 'e2098323-a289-4f12-b838-77e556c4e075'),
	('00000000-0000-0000-0000-000000000000', 219, 'CggrlJdEdCRl5lhYQIUdng', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', true, '2025-02-01 06:02:06.493317+00', '2025-02-01 07:01:22.850526+00', 'GpzFpJx0dRTZotMIiPOQNg', '475d294c-e6f6-4af5-9c09-5ca43b8337ec'),
	('00000000-0000-0000-0000-000000000000', 217, 'OAWGJtUWNojj30IBooB1KQ', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-02-01 05:29:47.921251+00', '2025-02-01 06:27:53.258787+00', '27fZzDtN5K0ScdJlMYVqVw', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 221, 'DjnSz2jA1GgTvgEC1gwP7g', '5cb12aad-92a7-410a-a062-44a626e1f5e8', false, '2025-02-01 06:56:21.591888+00', '2025-02-01 06:56:21.591888+00', 'qRVAum0MIzCT64OAt2-WSw', 'e2098323-a289-4f12-b838-77e556c4e075'),
	('00000000-0000-0000-0000-000000000000', 220, 'tQlkb6yX6u9SwhQPrPvpIQ', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-02-01 06:27:53.259618+00', '2025-02-01 07:26:10.295198+00', 'OAWGJtUWNojj30IBooB1KQ', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 222, 'pYkaI-PBUmxoPYkTJAbjHQ', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', true, '2025-02-01 07:01:22.850881+00', '2025-02-01 08:01:23.048533+00', 'CggrlJdEdCRl5lhYQIUdng', '475d294c-e6f6-4af5-9c09-5ca43b8337ec'),
	('00000000-0000-0000-0000-000000000000', 224, '8_GFFDKH93GRpd3ySqENGg', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', false, '2025-02-01 08:01:23.049005+00', '2025-02-01 08:01:23.049005+00', 'pYkaI-PBUmxoPYkTJAbjHQ', '475d294c-e6f6-4af5-9c09-5ca43b8337ec'),
	('00000000-0000-0000-0000-000000000000', 223, 'v1wyTkZZ9ddgQIlZ15oKkA', 'ee14b162-ea0a-4183-9690-173c8836b92d', true, '2025-02-01 07:26:10.295445+00', '2025-02-01 08:24:28.152202+00', 'tQlkb6yX6u9SwhQPrPvpIQ', '203530aa-240a-4566-96dc-f99242fe174e'),
	('00000000-0000-0000-0000-000000000000', 225, 'tkIe6Wz4v4KSNYPLFCvsuQ', 'ee14b162-ea0a-4183-9690-173c8836b92d', false, '2025-02-01 08:24:28.152593+00', '2025-02-01 08:24:28.152593+00', 'v1wyTkZZ9ddgQIlZ15oKkA', '203530aa-240a-4566-96dc-f99242fe174e');


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
-- Data for Name: availability_filter_combos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."availability_filter_combos" ("id", "created_at", "care_unit", "facility", "emergency_care", "availability_unit", "isolation_type", "isolation_care") VALUES
	(38, '2025-01-19 07:53:32.477579+00', '소아', '응급전용 중환자실', true, 'hv33', NULL, false),
	(39, '2025-01-19 08:13:11.95018+00', '심장내과', '중환자실', false, 'hv34', NULL, false),
	(40, '2025-01-19 08:14:16.088582+00', '일반', '중환자실', false, 'hv35', '음압', true),
	(41, '2025-01-19 08:14:39.769442+00', '일반', '응급전용 입원실', true, 'hv36', NULL, false),
	(42, '2025-01-19 08:15:10.454226+00', '소아', '응급전용 입원실', true, 'hv37', NULL, false),
	(43, '2025-01-19 08:15:52.599096+00', '외상', '입원실', false, 'hv38', NULL, false),
	(44, '2025-01-19 08:17:18.586638+00', '외상', '수술실', false, 'hv39', NULL, false),
	(1, '2025-01-19 06:46:11.357056+00', '일반', '응급실', true, 'hvec', NULL, false),
	(2, '2025-01-19 07:00:06.038811+00', '외과', '수술실', false, 'hvoc', NULL, false),
	(3, '2025-01-19 07:00:45.454972+00', '흉부외과', '수술실', false, 'hvoc', NULL, false),
	(4, '2025-01-19 07:01:30.76541+00', '정형외과', '수술실', false, 'hvoc', NULL, false),
	(5, '2025-01-19 07:02:06.499379+00', '신경외과', '수술실', false, 'hvoc', NULL, false),
	(6, '2025-01-19 07:03:22.346911+00', '신경', '중환자실', false, 'hvcc', NULL, false),
	(7, '2025-01-19 07:05:04.320346+00', '신생아', '중환자실', false, 'hvncc', NULL, false),
	(8, '2025-01-19 07:05:25.688844+00', '흉부외과', '중환자실', false, 'hvccc', NULL, false),
	(10, '2025-01-19 07:07:42.66857+00', '일반', '입원실', false, 'hvgc', NULL, false),
	(11, '2025-01-19 07:08:31.717394+00', '내과', '중환자실', false, 'hv2', NULL, false),
	(12, '2025-01-19 07:09:04.859273+00', '외과', '중환자실', false, 'hv3', NULL, false),
	(13, '2025-01-19 07:09:33.319685+00', '정형외과', '입원실', false, 'hv4', NULL, false),
	(14, '2025-01-19 07:13:40.291985+00', '신경과', '입원실', false, 'hv5', NULL, false),
	(15, '2025-01-19 07:14:24.923799+00', '신경외과', '중환자실', false, 'hv6', NULL, false),
	(16, '2025-01-19 07:15:59.315829+00', '약물', '중환자실', false, 'hv7', NULL, false),
	(17, '2025-01-19 07:17:11.810987+00', '화상', '중환자실', false, 'hv8', NULL, false),
	(18, '2025-01-19 07:17:56.366236+00', '외상', '중환자실', false, 'hv9', NULL, false),
	(19, '2025-01-19 07:21:17.177714+00', '일반', '입원실', false, 'hv13', '음압', true),
	(20, '2025-01-19 07:21:40.693544+00', '일반', '입원실', false, 'hv14', '일반', true),
	(21, '2025-01-19 07:22:40.262948+00', '소아', '입원실', false, 'hv15', '음압', true),
	(22, '2025-01-19 07:23:11.758308+00', '소아', '입원실', false, 'hv16', '일반', true),
	(23, '2025-01-19 07:23:57.249112+00', '일반', '응급전용 중환자실', true, 'hv17', '음압', true),
	(24, '2025-01-19 07:25:09.587648+00', '일반', '응급전용 중환자실', true, 'hv18', '일반', true),
	(25, '2025-01-19 07:25:58.027026+00', '일반', '응급전용 입원실', true, 'hv19', '음압', true),
	(26, '2025-01-19 07:26:36.363751+00', '일반', '응급전용 입원실', true, 'hv21', '일반', true),
	(27, '2025-01-19 07:34:11.605676+00', '감염', '중환자실', false, 'hv22', '일반', true),
	(28, '2025-01-19 07:35:04.487665+00', '감염', '중환자실', false, 'hv23', '음압', true),
	(29, '2025-01-19 07:38:34.03962+00', '감염', '중환자실', false, 'hv24', '일반', true),
	(30, '2025-01-19 07:39:17.302061+00', '감염', '입원실', false, 'hv25', '일반', true),
	(31, '2025-01-19 07:40:10.778792+00', '감염', '입원실', false, 'hv26', '일반', true),
	(32, '2025-01-19 07:42:57.805853+00', '감염', '입원실', false, 'hv27', '일반', true),
	(33, '2025-01-19 07:43:24.330373+00', '소아', '입원실', false, 'hv28', NULL, false),
	(34, '2025-01-19 07:46:00.590185+00', '일반', '입원실', true, 'hv29', '음압', true),
	(35, '2025-01-19 07:47:57.87483+00', '일반', '입원실', true, 'hv30', '일반', true),
	(36, '2025-01-19 07:52:24.460471+00', '일반', '응급전용 중환자실', true, 'hv31', NULL, false),
	(37, '2025-01-19 07:52:52.540104+00', '소아', '중환자실', false, 'hv32', NULL, false),
	(45, '2025-01-19 08:17:39.175097+00', '정신과', '입원실', false, 'hv40', NULL, false),
	(46, '2025-01-19 08:18:03.663929+00', '일반', '입원실', false, 'hv41', '음압', true),
	(47, '2025-01-19 08:19:06.700383+00', '분만', '분만실', false, 'hv42', NULL, false),
	(52, '2025-01-19 08:30:13.119573+00', '화상', '처치실', false, 'hv43', NULL, false),
	(9, '2025-01-19 07:07:14.776284+00', '일반', '중환자실', false, 'hvicc', NULL, false);


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('samsunghospital', '2025-01-18 04:33:14.984555+00', '삼성서울병원', 'samsunghospital.com'),
	('snuh', '2025-01-18 04:33:14.984555+00', '서울대학교병원', 'snuh.org'),
	('hymc', '2025-01-18 04:33:14.984555+00', '한양대학교병원', 'hymc.kr'),
	('catholicyeouido', '2025-01-18 04:33:14.984555+00', '가톨릭대학교 여의도성모병원', 'catholicyeouido.com'),
	('catholiceunpyeong', '2025-01-18 04:33:14.984555+00', '가톨릭대학교은평성모병원', 'catholiceunpyeong.com'),
	('gangnamgoryeo', '2025-01-18 04:33:14.984555+00', '강남고려병원', 'gangnamgoryeo.com'),
	('gangnamdream', '2025-01-18 04:33:14.984555+00', '강남더드림병원', 'gangnamdream.com'),
	('gangnampedro', '2025-01-18 04:33:14.984555+00', '강남베드로병원', 'gangnampedro.com'),
	('gangnamhill', '2025-01-18 04:33:14.984555+00', '강남힐병원', 'gangnamhill.com'),
	('gangdongkyunghee', '2025-01-18 04:33:14.984555+00', '강동경희대학교의대병원', 'gangdongkyunghee.com'),
	('gangbuksam', '2025-01-18 04:33:14.984555+00', '강북삼성병원', 'gangbuksam.com'),
	('gangbuktop', '2025-01-18 04:33:14.984555+00', '강북으뜸병원', 'gangbuktop.com'),
	('gangseokhospital', '2025-01-18 04:33:14.984555+00', '강서케이병원', 'gangseokhospital.com'),
	('konkuk', '2025-01-18 04:33:14.984555+00', '건국대학교병원', 'konkuk.ac.kr'),
	('policehospital', '2025-01-18 04:33:14.984555+00', '경찰병원', 'policehospital.kr'),
	('kyungheehospital', '2025-01-18 04:33:14.984555+00', '경희대학교병원', 'kyungheehospital.com'),
	('gurokorea', '2025-01-18 04:33:14.984555+00', '고려대학교의과대학부속구로병원', 'gurokorea.com'),
	('gurosungsim', '2025-01-18 04:33:14.984555+00', '구로성심병원', 'gurosungsim.com'),
	('nmc', '2025-01-18 04:33:14.984555+00', '국립중앙의료원', 'nmc.or.kr'),
	('happyhospital', '2025-01-18 04:33:14.984555+00', '기쁨병원', 'happyhospital.com'),
	('nowonulsan', '2025-01-18 04:33:14.984555+00', '노원을지대학교병원', 'nowonulsan.com'),
	('greenshospital', '2025-01-18 04:33:14.984555+00', '녹색병원', 'greenshospital.org'),
	('daelimsm', '2025-01-18 04:33:14.984555+00', '대림성모병원', 'daelimsm.com'),
	('myungji', '2025-01-18 04:33:14.984555+00', '명지성모병원', 'myungji.org'),
	('mizmedi', '2025-01-18 04:33:14.984555+00', '미즈메디병원', 'mizmedi.com'),
	('buminhospital', '2025-01-18 04:33:14.984555+00', '부민병원', 'buminhospital.com'),
	('lovinghospital', '2025-01-18 04:33:14.984555+00', '사랑의병원', 'lovinghospital.com'),
	('samyook', '2025-01-18 04:33:14.984555+00', '삼육서울병원', 'samyook.or.kr'),
	('snuhdental', '2025-01-18 04:33:14.984555+00', '서울대학교치과병원', 'snuhdental.org'),
	('seoulsungsim', '2025-01-18 04:33:14.984555+00', '서울성심병원', 'seoulsungsim.com'),
	('seoulredcross', '2025-01-18 04:33:14.984555+00', '서울적십자병원', 'seoulredcross.org'),
	('dongbu', '2025-01-18 04:33:14.984555+00', '서울특별시 동부병원', 'dongbu.or.kr'),
	('boramae', '2025-01-18 04:33:14.984555+00', '서울특별시보라매병원', 'boramae.or.kr'),
	('seosouth', '2025-01-18 04:33:14.984555+00', '서울특별시서남병원', 'seosouth.or.kr'),
	('smc', '2025-01-18 04:33:14.984555+00', '서울특별시서울의료원', 'smc.or.kr'),
	('seoulmodern', '2025-01-18 04:33:14.984555+00', '서울현대병원', 'seoulmodern.com'),
	('kangdongsungsim', '2025-01-18 04:33:14.984555+00', '성심의료재단강동성심병원', 'kangdongsungsim.com'),
	('sunlove', '2025-01-18 04:33:14.984555+00', '성애의료재단성애병원', 'sunlove.org'),
	('seranhospital', '2025-01-18 04:33:14.984555+00', '세란병원', 'seranhospital.com'),
	('soonchunhyang', '2025-01-18 04:33:14.984555+00', '순천향대학교 부속 서울병원', 'soonchunhyang.ac.kr'),
	('sinchon', '2025-01-18 04:33:14.984555+00', '신촌연세병원', 'sinchon.com'),
	('cmhospital', '2025-01-18 04:33:14.984555+00', '씨엠병원', 'cmhospital.com'),
	('gangnamsev', '2025-01-18 04:33:14.984555+00', '연세대학교의과대학 강남세브란스병원', 'gangnamsev.com'),
	('severance', '2025-01-18 04:33:14.984555+00', '연세대학교의과대학세브란스병원', 'severance.com'),
	('wooridul', '2025-01-18 04:33:14.984555+00', '우리들병원', 'wooridul.com'),
	('eunpyeongyonsei', '2025-01-18 04:33:14.984555+00', '은평연세병원', 'eunpyeongyonsei.com'),
	('dongshinhospital', '2025-01-18 04:33:14.984555+00', '의료법인동신의료재단동신병원', 'dongshinhospital.com'),
	('hplushospital', '2025-01-18 04:33:14.984555+00', '의료법인서울효천의료재단에이치플러스양지병원', 'hplushospital.com'),
	('daehanhospital', '2025-01-18 04:33:14.984555+00', '의료법인성화의료재단대한병원', 'daehanhospital.com'),
	('yeongdeungpohospital', '2025-01-18 04:33:14.984555+00', '의료법인인봉의료재단영등포병원', 'yeongdeungpohospital.com'),
	('cheonggusungsim', '2025-01-18 04:33:14.984555+00', '의료법인청구성심병원', 'cheonggusungsim.com'),
	('dongbujeil', '2025-01-18 04:33:14.984555+00', '의료법인풍산의료재단동부제일병원', 'dongbujeil.com'),
	('hanilhospital', '2025-01-18 04:33:14.984555+00', '의료법인한전의료재단한일병원', 'hanilhospital.com'),
	('ewha', '2025-01-18 04:33:14.984555+00', '이화여자대학교의과대학부속목동병원', 'ewha.ac.kr'),
	('ewhaseoul', '2025-01-18 04:33:14.984555+00', '이화여자대학교의과대학부속서울병원', 'ewhaseoul.ac.kr'),
	('injehosp', '2025-01-18 04:33:14.984555+00', '인제대학교상계백병원', 'injehosp.com'),
	('vestian', '2025-01-18 04:33:14.984555+00', '재단법인베스티안재단베스티안서울병원', 'vestian.com'),
	('asanhospital', '2025-01-18 04:33:14.984555+00', '재단법인아산사회복지재단서울아산병원', 'asanhospital.com'),
	('chungang', '2025-01-18 04:33:14.984555+00', '중앙대학교병원', 'chungang.ac.kr'),
	('chauniversity', '2025-01-18 04:33:14.984555+00', '차의과학대학교 강남차병원', 'chauniversity.com'),
	('choihospital', '2025-01-18 04:33:14.984555+00', '최원호병원', 'choihospital.com'),
	('catholicseoul', '2025-01-18 04:33:14.984555+00', '학교법인가톨릭학원가톨릭대학교서울성모병원', 'catholicseoul.com'),
	('koreauniversity', '2025-01-18 04:33:14.984555+00', '학교법인고려중앙학원고려대학교의과대학부속병원(안암병원)', 'koreauniversity.ac.kr'),
	('hangangsu', '2025-01-18 04:33:14.984555+00', '한강수병원', 'hangangsu.com'),
	('koreabohoon', '2025-01-18 04:33:14.984555+00', '한국보훈복지의료공단중앙보훈병원', 'koreabohoon.org'),
	('atomicmedicine', '2025-01-18 04:33:14.984555+00', '한국원자력의학원원자력병원', 'atomicmedicine.or.kr'),
	('hallymgangnam', '2025-01-18 04:33:14.984555+00', '한림대학교강남성심병원', 'hallymgangnam.ac.kr'),
	('hallymhangang', '2025-01-18 04:33:14.984555+00', '한림대학교한강성심병원', 'hallymhangang.ac.kr'),
	('hyemin', '2025-01-18 04:33:14.984555+00', '혜민병원', 'hyemin.com'),
	('hongikhospital', '2025-01-18 04:33:14.984555+00', '홍익병원', 'hongikhospital.com'),
	('huimyung', '2025-01-18 04:33:14.984555+00', '희명병원', 'huimyung.com'),
	('safer', '2025-01-18 07:07:51.493388+00', '응급구조사', 'safer.com');


--
-- Data for Name: hospitals; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hospitals" ("hpid", "dutyname", "dutytel3", "created_at", "tenant_id") VALUES
	('A1100011', '가톨릭대학교 여의도성모병원', '02-1218-4981', '2025-01-17 06:58:46.265456+00', 'catholicyeouido'),
	('A1121013', '가톨릭대학교은평성모병원', '02-3321-7450', '2025-01-17 06:58:46.336827+00', 'catholiceunpyeong'),
	('A1100047', '강남고려병원', '02-9033-4320', '2025-01-17 06:58:46.347066+00', 'gangnamgoryeo'),
	('A1123234', '강남더드림병원', '02-7812-5993', '2025-01-17 06:58:46.354428+00', 'gangnamdream'),
	('A1100141', '강남베드로병원', '02-8897-1204', '2025-01-17 06:58:46.364297+00', 'gangnampedro'),
	('A1100076', '강남힐병원', '02-4521-9823', '2025-01-17 06:58:46.371947+00', 'gangnamhill'),
	('A1100043', '강동경희대학교의대병원', '02-7038-1922', '2025-01-17 06:58:46.381099+00', 'gangdongkyunghee'),
	('A1100006', '강북삼성병원', '02-9941-8153', '2025-01-17 06:58:46.388875+00', 'gangbuksam'),
	('A1121842', '강북으뜸병원', '02-3412-1470', '2025-01-17 06:58:46.399097+00', 'gangbuktop'),
	('A1117285', '강서케이병원', '02-5554-0829', '2025-01-17 06:58:46.407223+00', 'gangseokhospital'),
	('A1100002', '건국대학교병원', '02-8105-7329', '2025-01-17 06:58:46.415818+00', 'konkuk'),
	('A1100039', '경찰병원', '02-7721-4308', '2025-01-17 06:58:46.42408+00', 'policehospital'),
	('A1100001', '경희대학교병원', '02-6298-5174', '2025-01-17 06:58:46.43286+00', 'kyungheehospital'),
	('A1100014', '고려대학교의과대학부속구로병원', '02-1140-8257', '2025-01-17 06:58:46.441474+00', 'gurokorea'),
	('A1100026', '구로성심병원', '02-3696-1411', '2025-01-17 06:58:46.454632+00', 'gurosungsim'),
	('A1100052', '국립중앙의료원', '02-5893-3507', '2025-01-17 06:58:46.469723+00', 'nmc'),
	('A1122033', '기쁨병원', '02-2364-7910', '2025-01-17 06:58:46.484336+00', 'happyhospital'),
	('A1100048', '노원을지대학교병원', '02-7149-3528', '2025-01-17 06:58:46.496029+00', 'nowonulsan'),
	('A1100044', '녹색병원', '02-8790-2601', '2025-01-17 06:58:46.511915+00', 'greenshospital'),
	('A1100037', '대림성모병원', '02-5019-1086', '2025-01-17 06:58:46.522286+00', 'daelimsm'),
	('A1100024', '명지성모병원', '02-7773-7413', '2025-01-17 06:58:46.531286+00', 'myungji'),
	('A1100046', '미즈메디병원', '02-6606-3667', '2025-01-17 06:58:46.540731+00', 'mizmedi'),
	('A1100036', '부민병원', '02-9057-5440', '2025-01-17 06:58:46.551047+00', 'buminhospital'),
	('A1100148', '사랑의병원', '02-4499-8413', '2025-01-17 06:58:46.560261+00', 'lovinghospital'),
	('A1100010', '삼성서울병원', '02-3525-3874', '2025-01-17 06:58:46.570289+00', 'samsunghospital'),
	('A1100021', '삼육서울병원', '02-1950-6064', '2025-01-17 06:58:46.581853+00', 'samyook'),
	('A1100017', '서울대학교병원', '02-8174-2691', '2025-01-17 06:58:46.593061+00', 'snuh'),
	('A1107402', '서울대학교치과병원', '02-7631-9972', '2025-01-17 06:58:46.604265+00', 'snuhdental'),
	('A1100050', '서울성심병원', '02-6355-1669', '2025-01-17 06:58:46.613793+00', 'seoulsungsim'),
	('A1100029', '서울적십자병원', '02-7173-1185', '2025-01-17 06:58:46.620914+00', 'seoulredcross'),
	('A1100022', '서울특별시 동부병원', '02-9092-4973', '2025-01-17 06:58:46.640141+00', 'dongbu'),
	('A1100040', '서울특별시보라매병원', '02-3866-3141', '2025-01-17 06:58:46.648567+00', 'boramae'),
	('A1100223', '서울특별시서남병원', '02-4551-8937', '2025-01-17 06:58:46.657342+00', 'seosouth'),
	('A1100035', '서울특별시서울의료원', '02-2687-0659', '2025-01-17 06:58:46.666867+00', 'smc'),
	('A1100172', '서울현대병원', '02-7025-1736', '2025-01-17 06:58:46.677398+00', 'seoulmodern'),
	('A1100028', '성심의료재단강동성심병원', '02-3168-6042', '2025-01-17 06:58:46.686903+00', 'kangdongsungsim'),
	('A1100054', '성애의료재단성애병원', '02-1009-2237', '2025-01-17 06:58:46.698244+00', 'sunlove'),
	('A1100032', '세란병원', '02-5775-3049', '2025-01-17 06:58:46.708688+00', 'seranhospital'),
	('A1100004', '순천향대학교 부속 서울병원', '02-9478-1209', '2025-01-17 06:58:46.720004+00', 'soonchunhyang'),
	('A1100063', '신촌연세병원', '02-3640-9276', '2025-01-17 06:58:46.730405+00', 'sinchon'),
	('A1100045', '씨엠병원', '02-4136-8553', '2025-01-17 06:58:46.739644+00', 'cmhospital'),
	('A1100015', '연세대학교의과대학 강남세브란스병원', '02-3207-0914', '2025-01-17 06:58:46.750228+00', 'gangnamsev'),
	('A1100007', '연세대학교의과대학세브란스병원', '02-5135-2094', '2025-01-17 06:58:46.759624+00', 'severance'),
	('A1100042', '우리들병원', '02-7308-2151', '2025-01-17 06:58:46.772183+00', 'wooridul'),
	('A1100152', '은평연세병원', '02-6331-0376', '2025-01-17 06:58:46.782758+00', 'eunpyeongyonsei'),
	('A1100025', '의료법인동신의료재단동신병원', '02-8317-1183', '2025-01-17 06:58:46.791529+00', 'dongshinhospital'),
	('A1100041', '의료법인서울효천의료재단에이치플러스양지병원', '02-4065-3257', '2025-01-17 06:58:46.801466+00', 'hplushospital'),
	('A1100030', '의료법인성화의료재단대한병원', '02-2876-9482', '2025-01-17 06:58:46.810799+00', 'daehanhospital'),
	('A1100255', '의료법인인봉의료재단영등포병원', '02-3162-7950', '2025-01-17 06:58:46.820295+00', 'yeongdeungpohospital'),
	('A1100023', '의료법인청구성심병원', '02-1402-7309', '2025-01-17 06:58:46.831425+00', 'cheonggusungsim'),
	('A1100075', '의료법인풍산의료재단동부제일병원', '02-7381-6610', '2025-01-17 06:58:46.840008+00', 'dongbujeil'),
	('A1100020', '의료법인한전의료재단한일병원', '02-4831-5824', '2025-01-17 06:58:46.848733+00', 'hanilhospital'),
	('A1100005', '이화여자대학교의과대학부속목동병원', '02-9937-4898', '2025-01-17 06:58:46.85759+00', 'ewha'),
	('A1120796', '이화여자대학교의과대학부속서울병원', '02-6703-1455', '2025-01-17 06:58:46.865809+00', 'ewhaseoul'),
	('A1100016', '인제대학교상계백병원', '02-8922-3075', '2025-01-17 06:58:46.871965+00', 'injehosp'),
	('A1122381', '재단법인베스티안재단베스티안서울병원', '02-2251-3132', '2025-01-17 06:58:46.879967+00', 'vestian'),
	('A1100009', '재단법인아산사회복지재단서울아산병원', '02-7090-2690', '2025-01-17 06:58:46.891049+00', 'asanhospital'),
	('A1100003', '중앙대학교병원', '02-1142-3384', '2025-01-17 06:58:46.90048+00', 'chungang'),
	('A1100057', '차의과학대학교 강남차병원', '02-9533-1770', '2025-01-17 06:58:46.909002+00', 'chauniversity'),
	('A1117070', '최원호병원', '02-7122-0569', '2025-01-17 06:58:46.927156+00', 'choihospital'),
	('A1100012', '학교법인가톨릭학원가톨릭대학교서울성모병원', '02-3588-2233', '2025-01-17 06:58:46.942978+00', 'catholicseoul'),
	('A1100008', '학교법인고려중앙학원고려대학교의과대학부속병원(안암병원)', '02-2757-5024', '2025-01-17 06:58:46.955014+00', 'koreauniversity'),
	('A1100163', '한강수병원', '02-7596-6521', '2025-01-17 06:58:46.965831+00', 'hangangsu'),
	('A1100053', '한국보훈복지의료공단중앙보훈병원', '02-9605-2823', '2025-01-17 06:58:46.97406+00', 'koreabohoon'),
	('A1100027', '한국원자력의학원원자력병원', '02-4056-9893', '2025-01-17 06:58:46.984162+00', 'atomicmedicine'),
	('A1100055', '한림대학교강남성심병원', '02-3373-9159', '2025-01-17 06:58:46.995745+00', 'hallymgangnam'),
	('A1100038', '한림대학교한강성심병원', '02-6972-0374', '2025-01-17 06:58:47.006886+00', 'hallymhangang'),
	('A1100013', '한양대학교병원', '02-5567-8240', '2025-01-17 06:58:47.020374+00', 'hymc'),
	('A1100051', '혜민병원', '02-7472-5253', '2025-01-17 06:58:47.03257+00', 'hyemin'),
	('A1100019', '홍익병원', '02-8436-9017', '2025-01-17 06:58:47.043384+00', 'hongikhospital'),
	('A1100049', '희명병원', '02-5944-3328', '2025-01-17 06:58:47.053505+00', 'huimyung');


--
-- Data for Name: hospital_bed_availability; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hospital_bed_availability" ("hvec", "hvoc", "hvcc", "hvncc", "hvccc", "hvicc", "hvgc", "hv2", "hv3", "hv4", "hv5", "hv6", "hv7", "hv8", "hv9", "hv10", "hv11", "hv13", "hv14", "hv15", "hv16", "hv17", "hv18", "hv19", "hv21", "hv22", "hv23", "hv24", "hv25", "hv26", "hv27", "hv28", "hv29", "hv30", "hv31", "hv32", "hv33", "hv34", "hv35", "hv36", "hv37", "hv38", "hv39", "hv40", "hv41", "hv42", "hv43", "hvctayn", "hvmriayn", "hvangioayn", "hvventiayn", "hvventisoayn", "hvincuayn", "hvcrrtayn", "hvecmoayn", "hvoxyayn", "hvhypoayn", "hvamyn", "hvidate", "updated_at", "hpid", "operation_rate", "equipment_flags") VALUES
	(2, 16, NULL, 4, NULL, 9, 346, NULL, NULL, NULL, true, 2, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 5, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:38:53', '2025-01-27 08:45:04.983713+00', 'A1100015', 86, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(7, 44, NULL, 11, 13, 3, 677, 14, 14, NULL, true, 3, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 2, NULL, 5, NULL, 4, 2, NULL, NULL, NULL, NULL, 18, 11, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:38:10', '2025-01-27 08:45:04.983713+00', 'A1100010', 78, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(7, 16, NULL, 7, NULL, 0, 327, NULL, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 3, 2, 2, 8, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 1, true, false, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:11', '2025-01-27 08:45:04.983713+00', 'A1100043', 53, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(12, 11, NULL, 3, NULL, NULL, 295, 2, 9, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, 5, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:26', '2025-01-27 08:45:04.983713+00', 'A1100028', 20, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(5, 13, NULL, 3, NULL, NULL, 206, 0, 2, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 1, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 5, 2, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:42', '2025-01-27 08:45:04.983713+00', 'A1100016', 68, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(11, 10, NULL, 4, NULL, NULL, 264, -10, 2, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 4, 0, true, NULL, true, true, true, true, true, true, true, true, false, false, true, '2025-01-27T17:41:04', '2025-01-27 08:45:04.983713+00', 'A1100048', 35, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": true}'),
	(8, 7, NULL, NULL, NULL, 3, 146, NULL, NULL, NULL, true, NULL, true, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, true, true, true, true, false, false, true, false, false, true, true, '2025-01-27T17:40:04', '2025-01-27 08:45:04.983713+00', 'A1100020', 61, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": false}'),
	(13, 13, NULL, NULL, NULL, NULL, 396, 6, 9, NULL, true, 10, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL, NULL, 41, 3, false, NULL, true, true, true, true, false, false, true, true, false, false, true, '2025-01-27T17:40:34', '2025-01-27 08:45:04.983713+00', 'A1100053', 40, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(2, 13, NULL, 3, 3, NULL, 254, 0, 1, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, 0, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:40:52', '2025-01-27 08:45:04.983713+00', 'A1120796', 91, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(8, 5, NULL, NULL, NULL, 12, 95, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, false, true, true, true, false, false, true, '2025-01-27T17:41:39', '2025-01-27 08:45:04.983713+00', 'A1100036', 20, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(11, 4, NULL, NULL, NULL, 6, 82, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, true, true, true, true, false, false, true, true, false, true, true, '2025-01-27T17:44:10', '2025-01-27 08:45:04.983713+00', 'A1100041', 38, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": false}'),
	(12, 21, NULL, 1, NULL, NULL, 379, 4, 11, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 10, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:40:47', '2025-01-27 08:45:04.983713+00', 'A1100002', 29, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(9, 5, NULL, NULL, NULL, 9, 31, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-27T17:41:36', '2025-01-27 08:45:04.983713+00', 'A1100051', 0, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(0, 3, NULL, NULL, NULL, 1, 54, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-27T17:43:56', '2025-01-27 08:45:04.983713+00', 'A1100026', 100, '{"CT": true, "MRI": true, "CRRT": false, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(12, 5, NULL, 4, NULL, 2, 111, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, true, NULL, true, true, true, true, false, false, true, true, true, true, true, '2025-01-27T17:41:10', '2025-01-27 08:45:04.983713+00', 'A1100021', 7, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": true, "고압산소치료기": true, "중심체온조절유도기": true, "조산아가용 인공호흡기": false}'),
	(8, 3, NULL, NULL, NULL, 0, 37, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, true, true, false, true, false, true, true, false, false, false, true, '2025-01-27T17:40:20', '2025-01-27 08:45:04.983713+00', 'A1100022', 0, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(16, 6, NULL, NULL, NULL, 7, 79, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-27T17:43:22', '2025-01-27 08:45:04.983713+00', 'A1100050', 5, '{"CT": true, "MRI": true, "CRRT": false, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(12, 15, NULL, 0, NULL, 9, 264, NULL, NULL, NULL, true, 2, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, 10, NULL, NULL, NULL, 3, 2, 3, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 12, 8, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:23', '2025-01-27 08:45:04.983713+00', 'A1100001', 20, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(9, 17, NULL, -1, NULL, NULL, 315, 2, 3, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 1, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, NULL, 1, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:09', '2025-01-27 08:45:04.983713+00', 'A1121013', 62, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(7, 3, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-27T17:41', '2025-01-27 08:45:04.983713+00', 'A1100023', 30, '{"CT": true, "MRI": true, "CRRT": false, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(-19, 45, 5, 13, 4, NULL, 552, 5, 9, NULL, true, 3, true, NULL, NULL, true, true, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 0, 0, NULL, 9, NULL, NULL, 6, 2, 3, 9, 9, 2, 6, 3, 30, 6, NULL, NULL, 13, 3, true, true, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:43', '2025-01-27 08:45:04.983713+00', 'A1100017', 179, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(2, 12, NULL, 6, 1, 10, 245, NULL, 1, NULL, true, 2, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 13, 2, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:28', '2025-01-27 08:45:04.983713+00', 'A1100006', 86, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(9, 6, NULL, NULL, NULL, 5, 132, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-27T17:41:59', '2025-01-27 08:45:04.983713+00', 'A1100029', 10, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(6, 13, NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-27T17:44:34', '2025-01-27 08:45:04.983713+00', 'A1100032', 40, '{"CT": true, "MRI": true, "CRRT": false, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(13, 7, NULL, NULL, NULL, 10, 95, NULL, 0, NULL, true, NULL, true, NULL, 6, false, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 5, 3, 2, 1, 4, NULL, NULL, NULL, 2, 0, NULL, 11, 2, NULL, 6, true, NULL, true, true, true, true, false, true, true, true, false, true, true, '2025-01-27T17:43:06', '2025-01-27 08:45:04.983713+00', 'A1100052', 13, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": false}'),
	(23, 12, NULL, 5, NULL, NULL, 421, 7, 6, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 3, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, 14, 2, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:40', '2025-01-27 08:45:04.983713+00', 'A1100040', 25, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(13, 14, NULL, 0, NULL, 1, 340, 4, 0, NULL, true, NULL, true, NULL, NULL, true, true, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 4, 1, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 2, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:08', '2025-01-27 08:45:04.983713+00', 'A1100003', 27, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(6, 0, 6, 1, 4, 8, 1028, 5, 14, NULL, true, 1, true, NULL, NULL, true, true, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 3, NULL, 4, 0, 11, 2, NULL, 5, NULL, NULL, 29, 27, true, true, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:31', '2025-01-27 08:45:04.983713+00', 'A1100007', 70, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(5, 3, NULL, NULL, NULL, 3, 61, NULL, NULL, NULL, true, NULL, false, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, true, true, false, true, false, false, true, false, false, false, true, '2025-01-27T17:42:30', '2025-01-27 08:45:04.983713+00', 'A1100025', 44, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(11, 30, NULL, 11, 4, 0, 524, 6, 15, NULL, true, 6, true, NULL, NULL, true, true, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 1, NULL, 4, 2, NULL, NULL, NULL, NULL, 16, 7, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:09', '2025-01-27 08:45:04.983713+00', 'A1100012', 59, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(5, 14, NULL, 1, NULL, NULL, 408, 2, 8, NULL, true, NULL, true, NULL, NULL, true, true, 3, 3, NULL, NULL, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 7, NULL, NULL, NULL, 1, 13, NULL, NULL, NULL, 16, 0, true, NULL, true, true, true, true, true, true, true, true, true, true, true, '2025-01-27T17:42:59', '2025-01-27 08:45:04.983713+00', 'A1100013', 37, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": true, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(15, 17, NULL, 0, NULL, NULL, 354, 1, 5, NULL, true, NULL, true, NULL, NULL, true, true, 2, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 5, 3, 29, NULL, NULL, NULL, 25, 2, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:42:37', '2025-01-27 08:45:04.983713+00', 'A1100008', 50, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(7, 4, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-27T17:41:36', '2025-01-27 08:45:04.983713+00', 'A1100037', 12, '{"CT": true, "MRI": true, "CRRT": false, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(9, 16, NULL, -1, NULL, 16, 274, 0, 1, NULL, true, NULL, true, NULL, NULL, true, true, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, 2, 20, NULL, NULL, NULL, 5, 2, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:43', '2025-01-27 08:45:04.983713+00', 'A1100014', 68, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(2, 3, NULL, NULL, NULL, 2, 54, NULL, NULL, NULL, true, NULL, true, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, true, true, false, false, true, true, false, false, true, '2025-01-27T17:40:48', '2025-01-27 08:45:04.983713+00', 'A1100049', 80, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(5, 10, NULL, NULL, NULL, 10, 331, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, true, NULL, true, true, true, true, false, true, true, false, false, false, true, '2025-01-27T17:42:12', '2025-01-27 08:45:04.983713+00', 'A1100027', 44, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(6, 2, NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, false, false, true, false, false, false, false, false, false, true, '2025-01-27T17:40:56', '2025-01-27 08:45:04.983713+00', 'A1100075', 14, '{"CT": true, "MRI": false, "CRRT": false, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(2, 3, NULL, NULL, NULL, 8, 39, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, true, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-27T17:45:01', '2025-01-27 08:45:04.983713+00', 'A1100044', 60, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(7, 10, NULL, 3, NULL, 1, 261, 2, NULL, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 2, 3, 7, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, 0, 4, true, true, true, true, true, true, true, true, true, true, true, true, true, '2025-01-27T17:40', '2025-01-27 08:45:04.983713+00', 'A1100035', 58, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": true, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(0, 7, NULL, NULL, NULL, 14, 163, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-27T17:40:03', '2025-01-27 08:45:04.983713+00', 'A1100039', 100, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(4, 66, 1, 13, 3, NULL, 1120, 2, 3, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, 2, 0, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2, 1, 2, NULL, 1, 1, 1, 8, NULL, 5, NULL, NULL, 22, 10, true, NULL, true, true, true, true, true, true, true, true, true, true, true, '2025-01-27T17:43:15', '2025-01-27 08:45:04.983713+00', 'A1100009', 89, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": true, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(7, 4, NULL, NULL, NULL, 2, 115, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, true, true, true, true, false, false, false, false, false, false, true, '2025-01-27T17:43:52', '2025-01-27 08:45:04.983713+00', 'A1100019', 22, '{"CT": true, "MRI": true, "CRRT": false, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(5, 4, NULL, NULL, NULL, 3, 60, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-27T17:40', '2025-01-27 08:45:04.983713+00', 'A1100223', 28, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": false, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(11, 11, NULL, 2, NULL, NULL, 183, 0, 1, NULL, true, 2, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 2, 1, 7, NULL, NULL, NULL, 0, 16, NULL, NULL, NULL, 10, 1, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:42:24', '2025-01-27 08:45:04.983713+00', 'A1100005', 42, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(8, 12, NULL, NULL, NULL, NULL, 132, 2, 3, NULL, true, 3, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, true, NULL, true, true, true, true, false, false, true, true, false, true, true, '2025-01-27T17:44:07', '2025-01-27 08:45:04.983713+00', 'A1100011', 46, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": false}'),
	(7, 3, NULL, NULL, NULL, 2, 128, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, true, true, false, false, false, false, false, false, true, '2025-01-27T17:43:37', '2025-01-27 08:45:04.983713+00', 'A1100024', 12, '{"CT": true, "MRI": true, "CRRT": false, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": false, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": false}'),
	(16, 14, NULL, 0, NULL, NULL, 229, 3, 5, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 2, NULL, NULL, NULL, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:41:28', '2025-01-27 08:45:04.983713+00', 'A1100055', 27, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}'),
	(13, 4, NULL, 3, NULL, 1, 70, NULL, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, true, true, true, true, true, true, true, false, false, false, true, '2025-01-27T17:42:52', '2025-01-27 08:45:04.983713+00', 'A1100054', 13, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": false, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": false, "조산아가용 인공호흡기": true}'),
	(11, 13, NULL, 1, NULL, 14, 300, NULL, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 1, 1, 2, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 21, 2, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:42:22', '2025-01-27 08:45:04.983713+00', 'A1100004', 45, '{"CT": true, "MRI": true, "CRRT": true, "ECMO": true, "구급차": true, "인공호흡기": true, "인큐베이터": true, "혈관촬영기": true, "고압산소치료기": false, "중심체온조절유도기": true, "조산아가용 인공호흡기": true}');


--
-- Data for Name: hospital_bed_operation_rate; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hospital_bed_operation_rate" ("hpid", "hvec_rate", "hvoc_rate", "hvcc_rate", "hvncc_rate", "hvccc_rate", "hvicc_rate", "hv2_rate", "hv3_rate", "hv5", "hv6_rate", "hv7", "hv8_rate", "hv9_rate", "hv10", "hv11", "hv13_rate", "hv14_rate", "hv15_rate", "hv16_rate", "hv17_rate", "hv18_rate", "hv19_rate", "hv21_rate", "hv22_rate", "hv23_rate", "hv24_rate", "hv25_rate", "hv26_rate", "hv27_rate", "hv29_rate", "hv30_rate", "hv31_rate", "hv32_rate", "hv33_rate", "hv34_rate", "hv35_rate", "hv37_rate", "hv38_rate", "hv39_rate", "hv41_rate", "hv42", "hv43", "hvctayn", "hvmriayn", "hvangioayn", "hvventiayn", "hvventisoayn", "hvincuayn", "hvcrrtayn", "hvecmoayn", "hvoxyayn", "hvhypoayn", "hvamyn", "hvidate", "updated_at") VALUES
	('A1100001', 20, 6, NULL, 100, NULL, 80, NULL, NULL, true, 86, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:23', '2025-01-27 08:45:04.770413+00'),
	('A1100021', 7, 0, NULL, 0, NULL, 88, NULL, NULL, true, NULL, true, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 25, true, NULL, true, true, true, true, false, false, true, true, true, true, true, '2025-01-27T17:41:10', '2025-01-27 08:45:04.770413+00'),
	('A1100022', 0, 0, NULL, NULL, NULL, 100, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, true, NULL, true, true, false, true, false, true, true, false, false, false, true, '2025-01-27T17:40:20', '2025-01-27 08:45:04.770413+00'),
	('A1100050', 5, 0, NULL, NULL, NULL, 22, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-27T17:43:22', '2025-01-27 08:45:04.770413+00'),
	('A1100040', 25, 14, NULL, 64, NULL, NULL, 53, 62, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 25, 50, NULL, NULL, NULL, 33, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:40', '2025-01-27 08:45:04.770413+00'),
	('A1100003', 27, 6, NULL, 100, NULL, 91, 81, 100, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:08', '2025-01-27 08:45:04.770413+00'),
	('A1100007', 70, 100, 40, 98, 75, 0, 82, 56, true, 96, true, NULL, NULL, true, true, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 81, 100, 52, 66, 16, NULL, NULL, 15, true, true, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:31', '2025-01-27 08:45:04.770413+00'),
	('A1100025', 44, 0, NULL, NULL, NULL, 66, NULL, NULL, true, NULL, false, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, true, true, false, true, false, false, true, false, false, false, true, '2025-01-27T17:42:30', '2025-01-27 08:45:04.770413+00'),
	('A1100012', 59, 6, NULL, 78, 50, 100, 66, 31, true, 68, true, NULL, NULL, true, true, 0, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, NULL, 60, 0, NULL, NULL, NULL, 41, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:09', '2025-01-27 08:45:04.770413+00'),
	('A1100013', 37, 12, NULL, 95, NULL, NULL, 83, 38, true, NULL, true, NULL, NULL, true, true, 25, 70, NULL, NULL, 100, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, 50, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, true, true, true, true, true, true, true, '2025-01-27T17:42:59', '2025-01-27 08:45:04.770413+00'),
	('A1100008', 50, 29, NULL, 100, NULL, NULL, 95, 79, true, NULL, true, NULL, NULL, true, true, 0, 40, NULL, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, 50, 50, NULL, NULL, NULL, 33, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:42:37', '2025-01-27 08:45:04.770413+00'),
	('A1100039', 100, 0, NULL, NULL, NULL, 0, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-27T17:40:03', '2025-01-27 08:45:04.770413+00'),
	('A1100009', 89, 10, 91, 78, 78, NULL, 92, 86, true, 100, true, NULL, NULL, true, true, NULL, NULL, 0, 100, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 33, NULL, 95, 50, 92, 38, 16, NULL, NULL, 44, true, NULL, true, true, true, true, true, true, true, true, true, true, true, '2025-01-27T17:43:15', '2025-01-27 08:45:04.770413+00'),
	('A1100005', 42, 15, NULL, 88, NULL, NULL, 100, 92, true, 84, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 100, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 75, 63, NULL, NULL, NULL, 100, NULL, NULL, NULL, 85, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:42:24', '2025-01-27 08:45:04.770413+00'),
	('A1100011', 46, 7, NULL, NULL, NULL, NULL, 81, 66, true, 66, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, false, false, true, true, false, true, true, '2025-01-27T17:44:07', '2025-01-27 08:45:04.770413+00'),
	('A1100024', 12, 0, NULL, NULL, NULL, 83, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, true, true, true, true, false, false, false, false, false, false, true, '2025-01-27T17:43:37', '2025-01-27 08:45:04.770413+00'),
	('A1100037', 12, 0, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-27T17:41:36', '2025-01-27 08:45:04.770413+00'),
	('A1100055', 27, 0, NULL, 100, NULL, NULL, 85, 80, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 60, 28, NULL, NULL, NULL, NULL, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:41:28', '2025-01-27 08:45:04.770413+00'),
	('A1100054', 13, 20, NULL, 25, NULL, 90, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, true, NULL, true, true, true, true, true, true, true, false, false, false, true, '2025-01-27T17:42:52', '2025-01-27 08:45:04.770413+00'),
	('A1100015', 86, 30, NULL, 85, NULL, 68, NULL, NULL, true, 83, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 50, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:38:53', '2025-01-27 08:45:04.770413+00'),
	('A1100010', 78, 21, NULL, 81, 48, 70, 53, 39, true, 75, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 66, NULL, 66, 0, NULL, NULL, NULL, 8, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:38:10', '2025-01-27 08:45:04.770413+00'),
	('A1100043', 53, 11, NULL, 58, NULL, 100, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 33, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, true, false, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:11', '2025-01-27 08:45:04.770413+00'),
	('A1100028', 20, 15, NULL, 0, NULL, NULL, 90, 55, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:26', '2025-01-27 08:45:04.770413+00'),
	('A1100053', 40, 7, NULL, NULL, NULL, NULL, 60, 35, true, 28, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 50, 0, NULL, NULL, NULL, 57, false, NULL, true, true, true, true, false, false, true, true, false, false, true, '2025-01-27T17:40:34', '2025-01-27 08:45:04.770413+00'),
	('A1120796', 91, 31, NULL, 85, 72, NULL, 100, 93, true, 100, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 16, 100, NULL, NULL, 90, 66, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:40:52', '2025-01-27 08:45:04.770413+00'),
	('A1100036', 20, 28, NULL, NULL, NULL, 14, NULL, NULL, true, NULL, true, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, false, true, true, true, false, false, true, '2025-01-27T17:41:39', '2025-01-27 08:45:04.770413+00'),
	('A1100041', 38, 33, NULL, NULL, NULL, 70, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 50, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 66, NULL, NULL, true, true, true, true, false, false, true, true, false, true, true, '2025-01-27T17:44:10', '2025-01-27 08:45:04.770413+00'),
	('A1100002', 29, 0, NULL, 93, NULL, NULL, 83, 56, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:40:47', '2025-01-27 08:45:04.770413+00'),
	('A1100051', 0, 0, NULL, NULL, NULL, 52, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-27T17:41:36', '2025-01-27 08:45:04.770413+00'),
	('A1100026', 100, 0, NULL, NULL, NULL, 90, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-27T17:43:56', '2025-01-27 08:45:04.770413+00'),
	('A1100014', 68, 33, NULL, 104, NULL, 51, 100, 91, true, NULL, true, NULL, NULL, true, true, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, 80, NULL, NULL, NULL, 50, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:43', '2025-01-27 08:45:04.770413+00'),
	('A1100049', 80, 25, NULL, NULL, NULL, 89, NULL, NULL, true, NULL, true, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, true, true, false, false, true, true, false, false, true, '2025-01-27T17:40:48', '2025-01-27 08:45:04.770413+00'),
	('A1100027', 44, 0, NULL, NULL, NULL, 0, NULL, NULL, true, NULL, true, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, false, true, true, false, false, false, true, '2025-01-27T17:42:12', '2025-01-27 08:45:04.770413+00'),
	('A1100016', 68, 0, NULL, 76, NULL, NULL, 100, 85, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:42', '2025-01-27 08:45:04.770413+00'),
	('A1100048', 35, 9, NULL, 50, NULL, NULL, 300, 87, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, true, true, true, true, false, false, true, '2025-01-27T17:41:04', '2025-01-27 08:45:04.770413+00'),
	('A1100020', 61, 12, NULL, NULL, NULL, 86, NULL, NULL, true, NULL, true, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 20, NULL, NULL, true, true, true, true, false, false, true, false, false, true, true, '2025-01-27T17:40:04', '2025-01-27 08:45:04.770413+00'),
	('A1100029', 10, 0, NULL, NULL, NULL, 58, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-27T17:41:59', '2025-01-27 08:45:04.770413+00'),
	('A1100032', 40, 0, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-27T17:44:34', '2025-01-27 08:45:04.770413+00'),
	('A1100052', 13, 0, NULL, NULL, NULL, 23, NULL, NULL, true, NULL, true, NULL, 70, false, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 66, 33, NULL, NULL, NULL, 0, NULL, 78, 0, 14, true, NULL, true, true, true, true, false, true, true, true, false, true, true, '2025-01-27T17:43:06', '2025-01-27 08:45:04.770413+00'),
	('A1100019', 22, 0, NULL, NULL, NULL, 71, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, true, true, true, true, false, false, false, false, false, false, true, '2025-01-27T17:43:52', '2025-01-27 08:45:04.770413+00'),
	('A1100223', 28, 0, NULL, NULL, NULL, 82, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 100, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 0, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-27T17:40', '2025-01-27 08:45:04.770413+00'),
	('A1100004', 45, 0, NULL, 90, NULL, 68, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, 50, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:42:22', '2025-01-27 08:45:04.770413+00'),
	('A1121013', 62, 10, NULL, 105, NULL, NULL, 87, 66, true, 100, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 50, NULL, NULL, NULL, 50, 100, NULL, NULL, NULL, 80, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:09', '2025-01-27 08:45:04.770413+00'),
	('A1100023', 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-27T17:41', '2025-01-27 08:45:04.770413+00'),
	('A1100017', 179, 13, 0, 65, 60, NULL, 50, 70, true, 40, true, NULL, NULL, true, true, NULL, NULL, 0, 0, 50, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 25, 47, 59, 0, 25, 25, 0, NULL, NULL, 25, true, true, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:43', '2025-01-27 08:45:04.770413+00'),
	('A1100006', 86, 14, NULL, 57, 87, 58, NULL, 75, true, 83, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, 33, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-27T17:44:28', '2025-01-27 08:45:04.770413+00'),
	('A1100075', 14, 0, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, false, false, true, false, false, false, false, false, false, true, '2025-01-27T17:40:56', '2025-01-27 08:45:04.770413+00'),
	('A1100044', 60, 0, NULL, NULL, NULL, 52, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, 100, true, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-27T17:45:01', '2025-01-27 08:45:04.770413+00'),
	('A1100035', 58, 0, NULL, 0, NULL, 80, 71, NULL, true, 100, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 0, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, true, true, true, true, true, true, true, true, true, true, true, true, true, '2025-01-27T17:40', '2025-01-27 08:45:04.770413+00');


--
-- Data for Name: hospital_location_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hospital_location_info" ("hpid", "dutyaddr", "dutyemcls", "dutyemclsname", "wgs84lon", "wgs84lat", "location") VALUES
	('A1100048', '서울특별시 노원구 한글비석로 68, 을지병원 (하계동)', 'G006', '지역응급의료센터', 127.07000281991385, 37.636442927386746, '0101000020E6100000198A1BED7AC45F40C3723BF676D14240'),
	('A1100044', '서울특별시 중랑구 사가정로49길 53 (면목동)', 'G007', '지역응급의료기관', 127.08605546969358, 37.58362083896108, '0101000020E610000074FECCEE81C55F400C4D7016B4CA4240'),
	('A1100037', '서울특별시 영등포구 시흥대로 657 (대림동, 대림성모병원)', 'G007', '지역응급의료기관', 126.90716948025135, 37.49068925436284, '0101000020E6100000F86694100FBA5F4057FECDE7CEBE4240'),
	('A1100024', '서울특별시 영등포구 도림로 156, 명지성모병원 (대림동)', 'G007', '지역응급의료기관', 126.89925446922592, 37.4938507104387, '0101000020E6100000DC069E628DB95F406538058036BF4240'),
	('A1100046', '서울특별시 강서구 강서로 295 (내발산동)', 'G009', '응급실운영신고기관', 126.83602535156236, 37.55225379358291, '0101000020E610000095E5797081B55F40E9439740B0C64240'),
	('A1100036', '서울특별시 강서구 공항대로 389, 부민병원 (등촌동)', 'G007', '지역응급의료기관', 126.85094950539181, 37.556940892893586, '0101000020E6100000220DEAF475B65F403964D4D649C74240'),
	('A1100148', '서울특별시 관악구 남부순환로 1860, -1,1,3,4,5층 (봉천동,  )', 'G009', '응급실운영신고기관', 126.956285774259, 37.4796247835746, '0101000020E6100000A3843FC933BD5F40E9E64B5864BD4240'),
	('A1100010', '서울특별시 강남구 일원로 81 (일원동, 삼성의료원)', 'G006', '지역응급의료센터', 127.08668245340024, 37.48851613490445, '0101000020E61000006E9F8F348CC55F40D17D5BB287BE4240'),
	('A1100021', '서울특별시 동대문구 망우로 82 (휘경동)', 'G006', '지역응급의료센터', 127.0653288266823, 37.587992001305395, '0101000020E61000008A85F5582EC45F4048F5675243CB4240'),
	('A1100017', '서울특별시 종로구 대학로 101 (연건동)', 'G001', '권역응급의료센터', 126.99896308412191, 37.57966608924356, '0101000020E6100000C10DDC02EFBF5F405EF3977F32CA4240'),
	('A1107402', '서울특별시 종로구 대학로 101 (연건동)', 'G009', '응급실운영신고기관', 126.997196437908, 37.5804523853297, '0101000020E61000002A200211D2BF5F4029F085434CCA4240'),
	('A1100050', '서울특별시 동대문구 왕산로 259, 서울성심병원 (청량리동)', 'G007', '지역응급의료기관', 127.04983805981972, 37.58419129209865, '0101000020E61000006541F98B30C35F40FA15BFC7C6CA4240'),
	('A1100029', '서울특별시 종로구 새문안로 9, 적십자병원 (평동)', 'G007', '지역응급의료기관', 126.96699861289684, 37.56715536263689, '0101000020E6100000D66A264EE3BD5F406323038C98C84240'),
	('A1100022', '서울특별시 동대문구 무학로 124 (용두동)', 'G007', '지역응급의료기관', 127.03140257525507, 37.57539886464885, '0101000020E6100000C46EF27F02C25F4042E984ABA6C94240'),
	('A1100040', '서울특별시 동작구 보라매로5길 20 (신대방동)', 'G006', '지역응급의료센터', 126.92404876254014, 37.4937184009319, '0101000020E61000003AC16B9D23BB5F40CCB7202A32BF4240'),
	('A1100223', '서울특별시 양천구 신정이펜1로 20 (신정동)', 'G007', '지역응급의료기관', 126.8331299304024, 37.51201935883779, '0101000020E61000006919330052B55F404890B0D989C14240'),
	('A1100035', '서울특별시 중랑구 신내로 156 (신내동)', 'G001', '권역응급의료센터', 127.0980910949257, 37.61286931510163, '0101000020E6100000062FDF1F47C65F40AD8A708072CE4240'),
	('A1100172', '서울특별시 강북구 도봉로 374 (번동, 서울현대병원)', 'G009', '응급실운영신고기관', 127.028504374531, 37.6402559204261, '0101000020E6100000D4190304D3C15F4076A6EFE7F3D14240'),
	('A1100028', '서울특별시 강동구 성안로 150 (길동)', 'G006', '지역응급의료센터', 127.13526354631517, 37.53598408220376, '0101000020E6100000F0F06E28A8C85F40F11E5C209BC44240'),
	('A1100054', '서울특별시 영등포구 여의대방로53길 22 (신길동, 성애병원)', 'G006', '지역응급의료센터', 126.92236733617031, 37.51205044957338, '0101000020E610000002F0011108BB5F40EE687FDE8AC14240'),
	('A1100032', '서울특별시 종로구 통일로 256 (무악동)', 'G007', '지역응급의료기관', 126.9577071892358, 37.57534016994642, '0101000020E61000005C3A18134BBD5F405BFF26BFA4C94240'),
	('A1100012', '서울특별시 서초구 반포대로 222 (반포동)', 'G006', '지역응급의료센터', 127.00472725970137, 37.501800804785276, '0101000020E61000004B7490734DC05F4062D43E023BC04240'),
	('A1100013', '서울특별시 성동구 왕십리로 222-1 (사근동)', 'G001', '권역응급의료센터', 127.04488284061982, 37.559944533564746, '0101000020E61000004727475CDFC25F40069E3143ACC74240'),
	('A1100051', '서울특별시 광진구 자양로 85 (자양동)', 'G007', '지역응급의료기관', 127.08360130258502, 37.535315660180416, '0101000020E61000005D2047B959C55F407AC13A3985C44240'),
	('A1100019', '서울특별시 양천구 목동로 225, 홍익병원본관 (신정동)', 'G007', '지역응급의료기관', 126.8636640030062, 37.52844147447355, '0101000020E610000039E9614546B75F40625B61F8A3C34240'),
	('A1100049', '서울특별시 금천구 시흥대로 244 (시흥동)', 'G007', '지역응급의료기관', 126.90056251863875, 37.45567063464179, '0101000020E6100000A363F9D0A2B95F405CC4546A53BA4240'),
	('A1100011', '서울특별시 영등포구 63로 10, 여의도성모병원 (여의도동)', 'G006', '지역응급의료센터', 126.93673129599131, 37.51827233800711, '0101000020E6100000085BD267F3BB5F40BC147BBF56C24240'),
	('A1121013', '서울특별시 은평구 통일로 1021 (진관동)', 'G006', '지역응급의료센터', 126.91615048739686, 37.633608409726854, '0101000020E61000006065A735A2BA5F40AB1F93141AD14240'),
	('A1100047', '서울특별시 관악구 관악로 242 (봉천동)', 'G009', '응급실운영신고기관', 126.956781703053, 37.4856188363947, '0101000020E6100000860153E93BBD5F4083510EC228BE4240'),
	('A1123234', '서울특별시 강남구 선릉로 404, 더드림병원 (대치동)', 'G009', '응급실운영신고기관', 127.050967336445, 37.5009902618151, '0101000020E610000083CC800C43C35F401F0EEB7220C04240'),
	('A1100141', '서울특별시 강남구 남부순환로 2649, 베드로병원 (도곡동)', 'G009', '응급실운영신고기관', 127.0395873429168, 37.485612179925724, '0101000020E610000072CA599988C25F40FEA8378A28BE4240'),
	('A1100076', '서울특별시 관악구 남부순환로 1449, 강남힐병원 (신림동)', 'G009', '응급실운영신고기관', 126.911648078471, 37.4816513439454, '0101000020E6100000A19F2E7158BA5F40F42851C0A6BD4240'),
	('A1100043', '서울특별시 강동구 동남로 892 (상일동)', 'G001', '권역응급의료센터', 127.157084787845, 37.5520459324005, '0101000020E6100000939F5AAD0DCA5F4066C6EC70A9C64240'),
	('A1100006', '서울특별시 종로구 새문안로 29 (평동)', 'G006', '지역응급의료센터', 126.96793805451702, 37.568497631233825, '0101000020E6100000162D74B2F2BD5F405A00C787C4C84240'),
	('A1121842', '서울특별시 강북구 도봉로 187, 지하1층, 2층~5층 (미아동)', 'G009', '응급실운영신고기관', 127.026184524499, 37.6254205559935, '0101000020E61000009C18DB01ADC15F407E1EE1C70DD04240'),
	('A1117285', '서울특별시 강서구 가로공원로 187, 강서케이병원 (화곡동)', 'G009', '응급실운영신고기관', 126.836699017573, 37.5373576230977, '0101000020E61000009144097A8CB55F40FFBA7422C8C44240'),
	('A1100002', '서울특별시 광진구 능동로 120-1 (화양동)', 'G006', '지역응급의료센터', 127.0721229093036, 37.54084479467721, '0101000020E6100000163068A99DC45F40DCACF8663AC54240'),
	('A1100039', '서울특별시 송파구 송이로 123, 국립경찰병원 (가락동)', 'G007', '지역응급의료기관', 127.12348793503202, 37.496413213560785, '0101000020E6100000709AF039E7C75F40DEC5DA778ABF4240'),
	('A1100001', '서울특별시 동대문구 경희대로 23 (회기동)', 'G006', '지역응급의료센터', 127.05183223390303, 37.5938765502235, '0101000020E61000007F5F253851C35F401E89942504CC4240'),
	('A1100014', '서울특별시 구로구 구로동로 148, 고려대부속구로병원 (구로동)', 'G001', '권역응급의료센터', 126.8847449363546, 37.49211114525054, '0101000020E610000074BC39A99FB85F40916C7D7FFDBE4240'),
	('A1100026', '서울특별시 구로구 경인로 427, 구로성심병원 (고척동)', 'G007', '지역응급의료기관', 126.86636039556485, 37.49964578669388, '0101000020E61000000B60DF7272B75F409BB7A464F4BF4240'),
	('A1100052', '서울특별시 중구 을지로 245, 국립중앙의료원 (을지로6가)', 'G006', '지역응급의료센터', 127.00579539705473, 37.56733955813183, '0101000020E61000005034A8F35EC05F409FF327959EC84240'),
	('A1122033', '서울특별시 서초구 서초중앙로 4, 기쁨병원 (서초동)', 'G009', '응급실운영신고기관', 127.018063486739, 37.482713030212, '0101000020E6100000ED32C1F327C15F408A0E638AC9BD4240'),
	('A1100057', '서울특별시 강남구 논현로 566, 강남차병원(역삼동650-9, 606-4, 605외2필지(지하7층~지하1층, 지상2층~7층)) (역삼동)', 'G009', '응급실운영신고기관', 127.03466865188072, 37.506800025850865, '0101000020E61000008B81DD0238C25F401A52C0D2DEC04240'),
	('A1100008', '서울특별시 성북구 고려대로 73, 고려대병원 (안암동5가)', 'G001', '권역응급의료센터', 127.02647086385966, 37.58715608002366, '0101000020E6100000BEA4D9B2B1C15F40B2AC30EE27CB4240'),
	('A1100163', '서울특별시 영등포구 영등포로 83, 한강수병원 (양평동1가)', 'G009', '응급실운영신고기관', 126.890913736375, 37.5224047841717, '0101000020E61000006B520CBB04B95F404CA5F328DEC24240'),
	('A1100053', '서울특별시 강동구 진황도로61길 53 (둔촌동)', 'G006', '지역응급의료센터', 127.14671886173552, 37.528220900896635, '0101000020E6100000113782D763C95F40153513BE9CC34240'),
	('A1100027', '서울특별시 노원구 노원로 75, 한국원자력의학원 (공릉동)', 'G007', '지역응급의료기관', 127.08269315796588, 37.628815981330355, '0101000020E610000040443ED84AC55F400D82C50A7DD04240'),
	('A1100055', '서울특별시 영등포구 신길로 1 (대림동, 강남성심병원)', 'G006', '지역응급의료센터', 126.9086725295, 37.4932492859, '0101000020E6100000783ED3B027BA5F40A1DBE7CA22BF4240'),
	('A1100038', '서울특별시 영등포구 버드나루로7길 12 (영등포동7가, 한강성심병원)', 'G009', '응급실운영신고기관', 126.91033000120589, 37.52346674579277, '0101000020E6100000CEEFC3D842BA5F409BDC54F500C34240'),
	('A1100004', '서울특별시 용산구 대사관로 59 (한남동)', 'G006', '지역응급의료센터', 127.00441798640304, 37.53384172231443, '0101000020E610000060C7606248C05F40574AF1EC54C44240'),
	('A1100063', '서울특별시 마포구 서강로 110, 지2층~6층 (신수동)', 'G009', '응급실운영신고기관', 126.933734666413, 37.5525892651719, '0101000020E6100000A9D80B4FC2BB5F405A04BB3EBBC64240'),
	('A1100045', '서울특별시 영등포구 영등포로36길 13 (영등포동4가, 충무병원)', 'G009', '응급실운영신고기관', 126.90367981067837, 37.518848328762154, '0101000020E6100000D23AD8E3D5B95F4011CF3D9F69C24240'),
	('A1100015', '서울특별시 강남구 언주로 211, 강남세브란스병원 (도곡동)', 'G006', '지역응급의료센터', 127.04631254186798, 37.492806984645476, '0101000020E6100000ED2DE1C8F6C25F4077259D4C14BF4240'),
	('A1100007', '서울특별시 서대문구 연세로 50-1 (신촌동)', 'G006', '지역응급의료센터', 126.94082769649863, 37.56211711412639, '0101000020E61000007DE85E8536BC5F40EDD81E74F3C74240'),
	('A1100042', '서울특별시 강서구 하늘길 70 (과해동)', 'G009', '응급실운영신고기관', 126.7963653099318, 37.56199597494205, '0101000020E6100000DD7434A6F7B25F400C6EEE7BEFC74240'),
	('A1100152', '서울특별시 은평구 연서로 177 (갈현동)', 'G009', '응급실운영신고기관', 126.917472218592, 37.6146922208583, '0101000020E6100000D67565DDB7BA5F4094D8143CAECE4240'),
	('A1100025', '서울특별시 서대문구 연희로 272, 동신병원 본관동 (홍은동)', 'G007', '지역응급의료기관', 126.93658306608872, 37.58110428173239, '0101000020E6100000A9B519FAF0BB5F4097CD06A061CA4240'),
	('A1100041', '서울특별시 관악구 남부순환로 1636, 양지병원 (신림동)', 'G006', '지역응급의료센터', 126.93253922577287, 37.48427507045319, '0101000020E6100000A03B01B9AEBB5F40A9EEBAB9FCBD4240'),
	('A1100030', '서울특별시 강북구 도봉로 301 (수유동, 대한병원)', 'G009', '응급실운영신고기관', 127.02267251878474, 37.63547043209498, '0101000020E6100000B3AC6F7773C15F4023B6591857D14240'),
	('A1100255', '서울특별시 영등포구 당산로31길 10 (당산동3가)', 'G009', '응급실운영신고기관', 126.89561402986, 37.526858089517, '0101000020E6100000990582BD51B95F40E50DFC1570C34240'),
	('A1100023', '서울특별시 은평구 통일로 873 (갈현동)', 'G007', '지역응급의료기관', 126.91955399169245, 37.62079154435882, '0101000020E61000006C4EFCF8D9BA5F40C653EA1876CF4240'),
	('A1100075', '서울특별시 중랑구 망우로 511, 동부제일병원 지하1~6층 (망우동)', 'G007', '지역응급의료기관', 127.1090292210168, 37.60067564592665, '0101000020E6100000D5A4B255FAC65F401B6187F0E2CC4240'),
	('A1100020', '서울특별시 도봉구 우이천로 308, 한일병원 (쌍문동)', 'G006', '지역응급의료센터', 127.02902417950423, 37.64611570419094, '0101000020E6100000E4703B88DBC15F404F775DEBB3D24240'),
	('A1100005', '서울특별시 양천구 안양천로 1071 (목동)', 'G001', '권역응급의료센터', 126.8862159683056, 37.53654282637804, '0101000020E610000032442EC3B7B85F403A19726FADC44240'),
	('A1120796', '서울특별시 강서구 공항대로 260, 이화의대부속서울병원 (마곡동)', 'G006', '지역응급의료센터', 126.8362659275, 37.557261149, '0101000020E6100000C857866185B55F40A824555554C74240'),
	('A1100016', '서울특별시 노원구 동일로 1342, 상계백병원 (상계동)', 'G006', '지역응급의료센터', 127.06311619032103, 37.6485812672986, '0101000020E6100000B9517D180AC45F4041EC01B604D34240'),
	('A1122381', '서울특별시 성동구 왕십리로 382 (하왕십리동)', 'G009', '응급실운영신고기관', 127.028019796271, 37.5651102845783, '0101000020E6100000F8278B13CBC15F40D372A78855C84240'),
	('A1100009', '서울특별시 송파구 올림픽로43길 88, 서울아산병원 (풍납동)', 'G006', '지역응급의료센터', 127.10823825113607, 37.526563966361216, '0101000020E610000090332160EDC65F400163B37266C34240'),
	('A1100003', '서울특별시 동작구 흑석로 102 (흑석동)', 'G006', '지역응급의료센터', 126.96079378447554, 37.50707428493414, '0101000020E610000071A136A57DBD5F40A53767CFE7C04240'),
	('A1117070', '서울특별시 은평구 서오릉로 45, 최원호병원 (녹번동)', 'G009', '응급실운영신고기관', 126.923855760856, 37.604769594378, '0101000020E610000041C6E97320BB5F40FEBB0E1769CD4240');


--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "supabase_user", "department", "job_title", "organization", "full_name") VALUES
	(3, '2025-01-15 01:15:58.181125+00', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '현장대응단 구조대1팀', '응급구조사', '강남소방서', '박찬호'),
	(1, '2025-01-14 06:41:40.311538+00', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', '소아과', '의사', '삼성서울병원', '장진영'),
	(9, '2025-01-29 04:46:22.578943+00', '1c663348-a8c8-4a35-b3c0-3cc17197f043', NULL, NULL, NULL, '유용희'),
	(10, '2025-01-29 06:20:44.954548+00', 'c12495c5-5e00-45bf-9bb2-92e99d22cc06', NULL, NULL, NULL, '구교석'),
	(11, '2025-01-30 05:05:05.234183+00', '558bbf23-6c02-405f-9964-965f3b6c3d84', NULL, NULL, NULL, '장준영'),
	(12, '2025-01-30 05:43:47.075172+00', 'ee14b162-ea0a-4183-9690-173c8836b92d', NULL, NULL, NULL, '백강혁'),
	(13, '2025-01-31 08:54:09.136488+00', '73152b3b-38d6-4bca-9089-7fc119e2d873', NULL, NULL, NULL, '박찬호');


--
-- Data for Name: reservations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."reservations" ("bed_code", "reserved_beds", "requested_at", "approved_at", "rejected_at", "cancelled_at", "updated_at", "status", "hpid", "id", "reserved_by", "reason") VALUES
	('hvccc', 1, '2025-02-01 04:28:32.28042+00', '2025-02-01 04:31:51.004036+00', NULL, NULL, '2025-02-01 04:31:51.004036+00', 'approved', 'A1100010', '8953febc-f85d-49c4-a363-b5f42f3ba747', 3, NULL),
	('hvccc', 1, '2025-02-01 04:35:04.962162+00', NULL, NULL, NULL, '2025-02-01 04:35:04.962162+00', 'pending', 'A1100012', 'ea37a13f-c47a-455a-9f3b-56e308f22a49', 3, NULL),
	('hvccc', 1, '2025-02-01 04:40:26.886048+00', NULL, NULL, NULL, '2025-02-01 04:40:26.886048+00', 'pending', 'A1100012', '52c2a66e-8ead-4d59-9cb7-2960b1de01c3', 3, NULL),
	('hv22', 1, '2025-02-01 05:00:59.56272+00', NULL, NULL, NULL, '2025-02-01 05:00:59.56272+00', 'pending', 'A1100001', '95935c99-79f3-450f-b531-19e1b358fa9a', 3, NULL),
	('hvec', 1, '2025-02-01 05:32:26.479359+00', NULL, NULL, NULL, '2025-02-01 05:32:26.479359+00', 'pending', 'A1100015', '1f58375e-c2dc-428f-b506-3406ebf15b3c', 3, NULL),
	('hvec', 1, '2025-02-01 05:32:36.464295+00', NULL, NULL, NULL, '2025-02-01 05:32:36.464295+00', 'pending', 'A1100010', 'ad5e8dc4-c41a-4ac8-8100-e48632ba0734', 3, NULL),
	('hvec', 1, '2025-02-01 05:33:42.171517+00', '2025-02-01 06:14:21.387632+00', NULL, NULL, '2025-02-01 06:14:21.387632+00', 'approved', 'A1100010', '938d5efa-1b89-40fd-8e5a-5dbfd7f0f066', 3, NULL),
	('hvec', 1, '2025-02-01 05:33:09.925414+00', '2025-02-01 06:14:34.940865+00', NULL, NULL, '2025-02-01 06:14:34.940865+00', 'approved', 'A1100010', 'e04579cf-54aa-4340-9975-c80069ff99cd', 3, NULL),
	('hvec', 1, '2025-02-01 06:57:13.216775+00', NULL, NULL, NULL, '2025-02-01 06:57:13.216775+00', 'pending', 'A1100010', '320a91ef-5950-4493-8fd3-6dcd9c1d208d', 3, NULL);


--
-- Data for Name: patient_assessments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."patient_assessments" ("id", "patient_reg_number", "condition", "emergency_contact", "eta", "notes", "created_at", "assessed_by", "reservation_id", "updated_at", "patient_name") VALUES
	(31, '870215-1175463', '혼수상태', '01028605110', '13:28:00', '', '2025-02-01 04:28:32.28042+00', 3, '8953febc-f85d-49c4-a363-b5f42f3ba747', NULL, '공유'),
	(33, '900708-1124953', '교통사고', '01028605110', '13:34:00', '', '2025-02-01 04:35:04.962162+00', 3, 'ea37a13f-c47a-455a-9f3b-56e308f22a49', NULL, '송중기'),
	(37, '870215-1175463', '혼수상태', '01028605110', '13:28:00', '', '2025-02-01 04:40:26.886048+00', 3, '52c2a66e-8ead-4d59-9cb7-2960b1de01c3', NULL, '공유'),
	(38, '870521-1148714', '구토, 설사', '01028605110', '14:00:00', '', '2025-02-01 05:00:59.56272+00', 3, '95935c99-79f3-450f-b531-19e1b358fa9a', NULL, '이정재'),
	(39, '900708-1124953', '낙상', '01028605110', '14:32:00', '', '2025-02-01 05:32:26.479359+00', 3, '1f58375e-c2dc-428f-b506-3406ebf15b3c', NULL, '박정혁'),
	(40, '900708-1124953', '낙상', '01028605110', '14:32:00', '', '2025-02-01 05:32:36.464295+00', 3, 'ad5e8dc4-c41a-4ac8-8100-e48632ba0734', NULL, '박정혁'),
	(41, '900708-1124953', '낙상', '01028605110', '14:32:00', '', '2025-02-01 05:33:09.925414+00', 3, 'e04579cf-54aa-4340-9975-c80069ff99cd', NULL, '박정혁'),
	(42, '900708-1124953', '낙상', '01028605110', '14:32:00', '', '2025-02-01 05:33:42.171517+00', 3, '938d5efa-1b89-40fd-8e5a-5dbfd7f0f066', NULL, '박정혁'),
	(43, '900708-1124953', '혼수상태', '01028605110', '16:56:00', '', '2025-02-01 06:57:13.216775+00', 3, '320a91ef-5950-4493-8fd3-6dcd9c1d208d', NULL, '박재범');


--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: supabase_admin
--



--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(3, '2025-01-18 07:05:48.912457+00', 1, 'samsunghospital'),
	(4, '2025-01-18 07:08:38.278386+00', 3, 'safer'),
	(10, '2025-01-29 04:46:22.58722+00', 9, 'gangnamdream'),
	(11, '2025-01-29 06:20:44.962828+00', 10, 'kyungheehospital'),
	(12, '2025-01-30 05:05:29.834876+00', 11, 'safer'),
	(13, '2025-01-30 05:43:47.08452+00', 12, 'samsunghospital'),
	(14, '2025-01-31 08:54:09.145623+00', 13, 'samsunghospital');


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 225, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: availability_filter_combos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."availability_filter_combos_id_seq"', 52, true);


--
-- Name: hospital_emergency_info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."hospital_emergency_info_info_id_seq"', 1, false);


--
-- Name: patient_assessments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."patient_assessments_id_seq"', 43, true);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 13, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 14, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
