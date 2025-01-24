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
	('00000000-0000-0000-0000-000000000000', '772cf5f8-20a7-42e9-acd4-a4ea590ecd3d', '{"action":"token_revoked","actor_id":"5cb12aad-92a7-410a-a062-44a626e1f5e8","actor_username":"ch1004@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-23 08:43:17.456184+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '5cb12aad-92a7-410a-a062-44a626e1f5e8', 'authenticated', 'authenticated', 'ch1004@metabuild.com', '$2a$10$iiTdnrE4jFdjWLqnTCGBa.BVfJTDVQN1RyRekqdujiwhKrvmAaDAW', '2025-01-15 01:15:11.352728+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-01-22 03:12:56.643982+00', '{"tenants": ["safer"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-15 01:15:11.340725+00', '2025-01-23 08:43:17.460681+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', 'authenticated', 'authenticated', 'young92@metabuild.com', '$2a$10$fBQyLHLHUFW.Ghc6xmKiyeQOhQnoQuwa.1hxMQtNQVePn3kTh7/vq', '2025-01-14 05:18:51.965275+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-01-20 02:40:29.881184+00', '{"tenants": ["samsunghospital"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-14 05:18:51.956406+00', '2025-01-21 01:03:58.132946+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


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
	('782b50e2-de3f-4f3d-896d-202448863055', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', '2025-01-16 01:56:05.320943+00', '2025-01-17 08:37:35.699562+00', NULL, 'aal1', NULL, '2025-01-17 08:37:35.699515', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('14bba138-537b-4f4a-adb8-a66954cc1267', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', '2025-01-20 02:40:29.881235+00', '2025-01-22 00:51:12.559167+00', NULL, 'aal1', NULL, '2025-01-22 00:51:12.559133', 'Next.js Middleware', '172.18.0.1', NULL),
	('fec8b38f-8477-4fea-9118-9df6a210872c', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '2025-01-22 03:12:56.644033+00', '2025-01-23 08:43:17.462751+00', NULL, 'aal1', NULL, '2025-01-23 08:43:17.46268', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('782b50e2-de3f-4f3d-896d-202448863055', '2025-01-16 01:56:05.323709+00', '2025-01-16 01:56:05.323709+00', 'password', 'e20b354c-ae16-437b-b579-9ba9f2937f8f'),
	('14bba138-537b-4f4a-adb8-a66954cc1267', '2025-01-20 02:40:29.883791+00', '2025-01-20 02:40:29.883791+00', 'password', '349723f2-91a0-4c50-b845-6e773d734964'),
	('fec8b38f-8477-4fea-9118-9df6a210872c', '2025-01-22 03:12:56.646109+00', '2025-01-22 03:12:56.646109+00', 'password', '5cf4f73d-d07a-480f-a12f-e5b6d80988b9');


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
	('00000000-0000-0000-0000-000000000000', 24, 'xPgFAvo3vp60tnUDd6jmPg', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-16 01:56:05.322349+00', '2025-01-16 03:23:11.217265+00', NULL, '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 27, '0R0My9Im0wh0hAeoS5yuaQ', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-16 03:23:11.218019+00', '2025-01-16 05:43:24.834983+00', 'xPgFAvo3vp60tnUDd6jmPg', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 28, '27Oph9lsQ7TFiPXhb0ydCQ', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-16 05:43:24.836039+00', '2025-01-16 06:41:47.643913+00', '0R0My9Im0wh0hAeoS5yuaQ', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 30, 'qIn0W6HcMoSYIxx77v6juw', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-16 06:41:47.644564+00', '2025-01-16 07:40:06.194735+00', '27Oph9lsQ7TFiPXhb0ydCQ', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 31, 'Y-n00LOAQlmNQ2SRtQ8Lng', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-16 07:40:06.196447+00', '2025-01-16 08:38:08.156003+00', 'qIn0W6HcMoSYIxx77v6juw', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 33, 'c04WKeTGxCu7ljDWjVwU1g', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-16 08:38:08.15671+00', '2025-01-17 01:03:25.675999+00', 'Y-n00LOAQlmNQ2SRtQ8Lng', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 34, 'Tqb0JhOjpZYMrLSoVTJDMQ', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-17 01:03:25.676718+00', '2025-01-17 02:03:25.111448+00', 'c04WKeTGxCu7ljDWjVwU1g', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 37, 'JhHfXUaWVTkSRHX4kQ55Eg', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-17 02:03:25.111784+00', '2025-01-17 03:13:21.787192+00', 'Tqb0JhOjpZYMrLSoVTJDMQ', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 52, 'qSqYbYHrJfO4crTvGNRuxw', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-17 03:13:21.78815+00', '2025-01-17 05:21:59.539763+00', 'JhHfXUaWVTkSRHX4kQ55Eg', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 54, '0hFr9ecm_Ng3fV2j66fRBg', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-17 05:21:59.54068+00', '2025-01-17 06:33:36.315103+00', 'qSqYbYHrJfO4crTvGNRuxw', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 57, 'hYC35O6-O2GptwNbXGb3CA', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-17 06:33:36.315992+00', '2025-01-17 07:32:25.127434+00', '0hFr9ecm_Ng3fV2j66fRBg', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 60, 'TXsCdcNpglxd9LPBzUkiBQ', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-17 07:32:25.128035+00', '2025-01-17 08:37:35.697436+00', 'hYC35O6-O2GptwNbXGb3CA', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 62, 'mwGJP7BDPsitKHh3XEKpRA', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', false, '2025-01-17 08:37:35.697968+00', '2025-01-17 08:37:35.697968+00', 'TXsCdcNpglxd9LPBzUkiBQ', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 64, 'TFPqGs8QMMZ1zF0ye0Lv-w', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-20 02:40:29.882569+00', '2025-01-20 06:01:31.875841+00', NULL, '14bba138-537b-4f4a-adb8-a66954cc1267'),
	('00000000-0000-0000-0000-000000000000', 66, 'w-HvKDlP2G_bGKj7mFjVVA', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-20 06:01:31.876259+00', '2025-01-21 01:03:58.130821+00', 'TFPqGs8QMMZ1zF0ye0Lv-w', '14bba138-537b-4f4a-adb8-a66954cc1267'),
	('00000000-0000-0000-0000-000000000000', 71, 'YsFVC54MwrLggZM9_Dwrww', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', false, '2025-01-21 01:03:58.131918+00', '2025-01-21 01:03:58.131918+00', 'w-HvKDlP2G_bGKj7mFjVVA', '14bba138-537b-4f4a-adb8-a66954cc1267'),
	('00000000-0000-0000-0000-000000000000', 80, 'L15eHOQHqGmBdc2QqPpcxQ', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-22 03:12:56.645219+00', '2025-01-22 05:09:27.727001+00', NULL, 'fec8b38f-8477-4fea-9118-9df6a210872c'),
	('00000000-0000-0000-0000-000000000000', 81, '1a1ZYC3hZ1sr9vVWm3_Fsw', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-22 05:09:27.72825+00', '2025-01-22 06:15:13.84181+00', 'L15eHOQHqGmBdc2QqPpcxQ', 'fec8b38f-8477-4fea-9118-9df6a210872c'),
	('00000000-0000-0000-0000-000000000000', 82, 'CPR9c0ibRfutkfrfTe3Lvg', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-22 06:15:13.84287+00', '2025-01-22 07:13:15.218554+00', '1a1ZYC3hZ1sr9vVWm3_Fsw', 'fec8b38f-8477-4fea-9118-9df6a210872c'),
	('00000000-0000-0000-0000-000000000000', 83, 'B4mCqxiVg_YnDPczn6RB_w', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-22 07:13:15.219919+00', '2025-01-23 06:49:28.262574+00', 'CPR9c0ibRfutkfrfTe3Lvg', 'fec8b38f-8477-4fea-9118-9df6a210872c'),
	('00000000-0000-0000-0000-000000000000', 84, 'AK07Q99KGwcfM9LSJAekvQ', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-23 06:49:28.263715+00', '2025-01-23 08:43:17.457587+00', 'B4mCqxiVg_YnDPczn6RB_w', 'fec8b38f-8477-4fea-9118-9df6a210872c'),
	('00000000-0000-0000-0000-000000000000', 85, 'sEEifndqcUN9yFLfQX5SYA', '5cb12aad-92a7-410a-a062-44a626e1f5e8', false, '2025-01-23 08:43:17.45926+00', '2025-01-23 08:43:17.45926+00', 'AK07Q99KGwcfM9LSJAekvQ', 'fec8b38f-8477-4fea-9118-9df6a210872c');


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

INSERT INTO "public"."availability_filter_combos" ("id", "created_at", "care_unit", "facility", "emergency_care", "availability_unit", "isolation_type") VALUES
	(2, '2025-01-19 07:00:06.038811+00', '외과', '수술실', false, 'hvoc', NULL),
	(3, '2025-01-19 07:00:45.454972+00', '흉부외과', '수술실', false, 'hvoc', NULL),
	(4, '2025-01-19 07:01:30.76541+00', '정형외과', '수술실', false, 'hvoc', NULL),
	(5, '2025-01-19 07:02:06.499379+00', '신경외과', '수술실', false, 'hvoc', NULL),
	(6, '2025-01-19 07:03:22.346911+00', '신경', '중환자실', false, 'hvcc', NULL),
	(7, '2025-01-19 07:05:04.320346+00', '신생아', '중환자실', false, 'hvncc', NULL),
	(8, '2025-01-19 07:05:25.688844+00', '흉부외과', '중환자실', false, 'hvccc', NULL),
	(9, '2025-01-19 07:07:14.776284+00', '일반', '중환자', false, 'hvicc', NULL),
	(10, '2025-01-19 07:07:42.66857+00', '일반', '입원실', false, 'hvgc', NULL),
	(11, '2025-01-19 07:08:31.717394+00', '내과', '중환자실', false, 'hv2', NULL),
	(12, '2025-01-19 07:09:04.859273+00', '외과', '중환자실', false, 'hv3', NULL),
	(13, '2025-01-19 07:09:33.319685+00', '정형외과', '입원실', false, 'hv4', NULL),
	(14, '2025-01-19 07:13:40.291985+00', '신경과', '입원실', false, 'hv5', NULL),
	(15, '2025-01-19 07:14:24.923799+00', '신경외과', '중환자실', false, 'hv6', NULL),
	(16, '2025-01-19 07:15:59.315829+00', '약물', '중환자실', false, 'hv7', NULL),
	(17, '2025-01-19 07:17:11.810987+00', '화상', '중환자실', false, 'hv8', NULL),
	(18, '2025-01-19 07:17:56.366236+00', '외상', '중환자실', false, 'hv9', NULL),
	(19, '2025-01-19 07:21:17.177714+00', '일반', '입원실', false, 'hv13', '음압'),
	(20, '2025-01-19 07:21:40.693544+00', '일반', '입원실', false, 'hv14', '일반'),
	(21, '2025-01-19 07:22:40.262948+00', '소아', '입원실', false, 'hv15', '음압'),
	(22, '2025-01-19 07:23:11.758308+00', '소아', '입원실', false, 'hv16', '일반'),
	(27, '2025-01-19 07:34:11.605676+00', '감염', '중환자실', false, 'hv22', '일반'),
	(28, '2025-01-19 07:35:04.487665+00', '감염', '중환자실', false, 'hv23', '음압'),
	(29, '2025-01-19 07:38:34.03962+00', '감염', '중환자실', false, 'hv24', '일반'),
	(30, '2025-01-19 07:39:17.302061+00', '감염', '입원실', false, 'hv25', '일반'),
	(31, '2025-01-19 07:40:10.778792+00', '감염', '입원실', false, 'hv26', '일반'),
	(32, '2025-01-19 07:42:57.805853+00', '감염', '입원실', false, 'hv27', '일반'),
	(33, '2025-01-19 07:43:24.330373+00', '소아', '입원실', false, 'hv28', NULL),
	(34, '2025-01-19 07:46:00.590185+00', '일반', '입원실', true, 'hv29', '음압'),
	(35, '2025-01-19 07:47:57.87483+00', '일반', '입원실', true, 'hv30', '일반'),
	(37, '2025-01-19 07:52:52.540104+00', '소아', '중환자실', false, 'hv32', NULL),
	(39, '2025-01-19 08:13:11.95018+00', '심장내과', '중환자실', false, 'hv34', NULL),
	(40, '2025-01-19 08:14:16.088582+00', '일반', '중환자실', false, 'hv35', '음압'),
	(43, '2025-01-19 08:15:52.599096+00', '외상', '입원실', false, 'hv38', NULL),
	(44, '2025-01-19 08:17:18.586638+00', '외상', '수술실', false, 'hv39', NULL),
	(45, '2025-01-19 08:17:39.175097+00', '정신과', '입원실', false, 'hv40', NULL),
	(46, '2025-01-19 08:18:03.663929+00', '일반', '입원실', false, 'hv41', '음압'),
	(47, '2025-01-19 08:19:06.700383+00', '분만', '분만실', false, 'hv42', NULL),
	(52, '2025-01-19 08:30:13.119573+00', '화상', '처치실', false, 'hv43', NULL),
	(1, '2025-01-19 06:46:11.357056+00', '일반', '응급실', true, 'hvec', NULL),
	(23, '2025-01-19 07:23:57.249112+00', '일반', '응급전용 중환자실', true, 'hv17', '음압'),
	(24, '2025-01-19 07:25:09.587648+00', '일반', '응급전용 중환자실', true, 'hv18', '일반'),
	(25, '2025-01-19 07:25:58.027026+00', '일반', '응급전용 입원실', true, 'hv19', '음압'),
	(26, '2025-01-19 07:26:36.363751+00', '일반', '응급전용 입원실', true, 'hv21', '일반'),
	(36, '2025-01-19 07:52:24.460471+00', '일반', '응급전용 중환자실', true, 'hv31', NULL),
	(38, '2025-01-19 07:53:32.477579+00', '소아', '응급전용 중환자실', true, 'hv33', NULL),
	(41, '2025-01-19 08:14:39.769442+00', '일반', '응급전용 입원실', true, 'hv36', NULL),
	(42, '2025-01-19 08:15:10.454226+00', '소아', '응급전용 입원실', true, 'hv37', '');


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

INSERT INTO "public"."hospital_bed_availability" ("hvec", "hvoc", "hvcc", "hvncc", "hvccc", "hvicc", "hvgc", "hv2", "hv3", "hv4", "hv5", "hv6", "hv7", "hv8", "hv9", "hv10", "hv11", "hv13", "hv14", "hv15", "hv16", "hv17", "hv18", "hv19", "hv21", "hv22", "hv23", "hv24", "hv25", "hv26", "hv27", "hv28", "hv29", "hv30", "hv31", "hv32", "hv33", "hv34", "hv35", "hv36", "hv37", "hv38", "hv39", "hv40", "hv41", "hv42", "hv43", "hvctayn", "hvmriayn", "hvangioayn", "hvventiayn", "hvventisoayn", "hvincuayn", "hvcrrtayn", "hvecmoayn", "hvoxyayn", "hvhypoayn", "hvamyn", "hvidate", "updated_at", "hpid", "operation_rate") VALUES
	(-14, 0, NULL, 1, NULL, 6, 112, NULL, NULL, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 5, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:07:50', '2025-01-22 05:10:33.659087+00', 'A1100015', 193),
	(-15, 20, NULL, 15, 14, 3, 232, 16, 13, NULL, true, 1, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 6, NULL, 3, 2, NULL, NULL, NULL, NULL, 16, 10, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:05:28', '2025-01-22 05:10:33.659087+00', 'A1100010', 146),
	(9, 9, NULL, 10, NULL, 2, 187, NULL, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 3, 1, 0, 5, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 1, true, false, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:15', '2025-01-22 05:10:33.659087+00', 'A1100043', 40),
	(10, 2, NULL, 1, NULL, NULL, 159, 0, 4, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0, 5, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:07:51', '2025-01-22 05:10:33.659087+00', 'A1100028', 33),
	(2, 8, NULL, NULL, NULL, NULL, 250, 10, 8, NULL, true, 11, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL, NULL, 41, 2, false, NULL, true, true, true, true, false, false, true, true, false, false, true, '2025-01-22T14:04:13', '2025-01-22 05:10:33.659087+00', 'A1100053', 90),
	(1, 5, NULL, 4, 2, NULL, 39, 0, 1, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:05:46', '2025-01-22 05:10:33.659087+00', 'A1120796', 95),
	(10, 0, NULL, NULL, NULL, 8, 59, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, false, true, true, true, false, false, true, '2025-01-22T14:06:43', '2025-01-22 05:10:33.659087+00', 'A1100036', 0),
	(12, 2, NULL, NULL, NULL, 1, 29, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, true, true, true, true, false, false, true, true, false, true, true, '2025-01-22T14:08:13', '2025-01-22 05:10:33.659087+00', 'A1100041', 33),
	(11, 5, NULL, -1, NULL, NULL, 188, 7, 9, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 8, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:05:47', '2025-01-22 05:10:33.659087+00', 'A1100002', 35),
	(9, 4, NULL, NULL, NULL, 11, 18, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-22T14:06:44', '2025-01-22 05:10:33.659087+00', 'A1100051', 0),
	(5, 2, NULL, NULL, NULL, 2, 34, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-22T14:08:32', '2025-01-22 05:10:33.659087+00', 'A1100026', 37),
	(12, 5, NULL, -1, NULL, NULL, 198, -10, 6, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 2, 0, true, NULL, true, true, true, true, true, true, true, true, false, false, true, '2025-01-22T14:06:04', '2025-01-22 05:10:33.659087+00', 'A1100048', 29),
	(12, 4, NULL, NULL, NULL, 1, 46, NULL, NULL, NULL, true, NULL, true, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, true, true, true, true, false, false, true, false, false, true, true, '2025-01-22T14:05:05', '2025-01-22 05:10:33.659087+00', 'A1100020', 42),
	(0, 9, NULL, 0, NULL, 9, 101, 0, 3, NULL, true, NULL, true, NULL, NULL, true, true, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, NULL, NULL, NULL, 1, 13, NULL, NULL, NULL, 5, 3, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:05:22', '2025-01-22 05:10:33.659087+00', 'A1100014', 100),
	(9, 6, NULL, 5, NULL, 8, 107, NULL, NULL, NULL, true, 1, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 3, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 11, 9, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:34', '2025-01-22 05:10:33.659087+00', 'A1100001', 40),
	(8, 4, NULL, 4, NULL, 2, 57, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, true, NULL, true, true, true, true, false, false, true, true, true, true, true, '2025-01-22T14:04:59', '2025-01-22 05:10:33.659087+00', 'A1100021', 38),
	(8, 3, NULL, NULL, NULL, 1, 22, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, true, true, false, true, false, true, true, false, false, false, true, '2025-01-22T14:05:20', '2025-01-22 05:10:33.659087+00', 'A1100022', 0),
	(17, 4, NULL, NULL, NULL, 8, 34, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-22T14:05:56', '2025-01-22 05:10:33.659087+00', 'A1100050', 0),
	(20, 7, NULL, 4, NULL, NULL, 218, 8, 8, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 3, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL, NULL, 10, 3, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:05', '2025-01-22 05:10:33.659087+00', 'A1100040', 35),
	(7, 5, NULL, 0, NULL, 1, 186, 3, 2, NULL, true, NULL, true, NULL, NULL, true, true, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 4, 1, 2, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 11, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:09', '2025-01-22 05:10:33.659087+00', 'A1100003', 61),
	(4, 17, 6, 5, 8, 8, 404, 1, 14, NULL, true, 1, true, NULL, NULL, true, true, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 3, NULL, 5, 1, 4, 3, NULL, 1, NULL, NULL, 29, 23, true, true, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:16', '2025-01-22 05:10:33.659087+00', 'A1100007', 80),
	(9, 2, NULL, NULL, NULL, 2, 70, NULL, NULL, NULL, true, NULL, false, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, true, true, false, true, false, false, true, false, false, false, true, '2025-01-22T14:06:33', '2025-01-22 05:10:33.659087+00', 'A1100025', 0),
	(9, 11, NULL, 10, 1, 0, 298, 6, 15, NULL, true, 2, true, NULL, NULL, true, true, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 1, NULL, 2, 2, NULL, NULL, NULL, NULL, 20, 4, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:09', '2025-01-22 05:10:33.659087+00', 'A1100012', 66),
	(2, 11, NULL, 1, NULL, NULL, 259, 3, 3, NULL, true, NULL, true, NULL, NULL, true, true, 4, 3, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 5, NULL, NULL, NULL, 1, 5, NULL, NULL, NULL, 12, 0, true, NULL, true, true, true, true, true, true, true, true, true, true, true, '2025-01-22T14:08:01', '2025-01-22 05:10:33.659087+00', 'A1100013', 75),
	(21, 8, NULL, 1, NULL, NULL, 50, 1, 6, NULL, true, NULL, true, NULL, NULL, true, true, 2, 4, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, 5, 2, 9, NULL, NULL, NULL, 26, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:07:50', '2025-01-22 05:10:33.659087+00', 'A1100008', 30),
	(7, 1, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-22T14:06:41', '2025-01-22 05:10:33.659087+00', 'A1100037', 12),
	(8, 2, NULL, NULL, NULL, 8, 29, NULL, NULL, NULL, true, NULL, true, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, true, true, false, false, true, true, false, false, true, '2025-01-22T14:05:02', '2025-01-22 05:10:33.659087+00', 'A1100049', 20),
	(5, 4, NULL, NULL, NULL, 8, 189, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, true, NULL, true, true, true, true, false, true, true, false, false, false, true, '2025-01-22T14:07:20', '2025-01-22 05:10:33.659087+00', 'A1100027', 44),
	(2, 8, NULL, 1, NULL, NULL, 56, 0, 0, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, 2, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 5, 2, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:07:48', '2025-01-22 05:10:33.659087+00', 'A1100016', 87),
	(11, 4, NULL, NULL, NULL, 10, 49, NULL, 0, NULL, true, NULL, true, NULL, 5, false, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 4, 3, 2, 1, 3, NULL, NULL, NULL, 2, 0, NULL, 3, 2, NULL, 7, true, NULL, true, true, true, true, false, true, true, true, false, true, true, '2025-01-22T14:07:06', '2025-01-22 05:10:33.659087+00', 'A1100052', 26),
	(7, 2, NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-22T14:05:15', '2025-01-22 05:10:33.659087+00', 'A1100075', 0),
	(5, 3, NULL, NULL, NULL, 7, 11, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, true, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-22T14:05:09', '2025-01-22 05:10:33.659087+00', 'A1100044', 0),
	(5, 5, NULL, 3, NULL, 3, 196, 0, NULL, NULL, true, 2, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, 2, 3, 11, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 0, 4, true, true, true, true, true, true, true, true, true, true, true, true, true, '2025-01-22T14:05', '2025-01-22 05:10:33.659087+00', 'A1100035', 70),
	(9, 4, NULL, 1, NULL, 10, 140, NULL, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 4, 1, 2, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, 21, 1, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:06:25', '2025-01-22 05:10:33.659087+00', 'A1100004', 55),
	(2, 4, NULL, 0, NULL, NULL, 164, 0, -1, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 1, NULL, NULL, NULL, 5, 0, NULL, NULL, NULL, NULL, NULL, 1, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:09', '2025-01-22 05:10:33.659087+00', 'A1121013', 91),
	(7, -1, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-22T14:06:36', '2025-01-22 05:10:33.659087+00', 'A1100023', 30),
	(-17, 28, 3, 10, 1, NULL, 287, 2, 13, NULL, true, 2, true, NULL, NULL, true, true, NULL, NULL, 1, 1, 1, 1, NULL, NULL, 0, 0, NULL, 8, NULL, NULL, 5, 2, 4, 4, 10, 1, 2, 4, 30, 6, NULL, NULL, 11, 3, true, true, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:19', '2025-01-22 05:10:33.659087+00', 'A1100017', 170),
	(-2, 4, NULL, 1, 0, 6, 73, NULL, 1, NULL, true, 2, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 2, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 11, 1, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:50', '2025-01-22 05:10:33.659087+00', 'A1100006', 113),
	(3, 6, NULL, NULL, NULL, 14, 148, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-22T14:05:02', '2025-01-22 05:10:33.659087+00', 'A1100039', 0),
	(6, 24, 2, 11, 0, NULL, 677, 3, 0, NULL, true, 1, true, NULL, NULL, true, true, NULL, NULL, 2, 1, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, NULL, 2, 1, 1, 5, NULL, 5, NULL, NULL, 22, 10, true, NULL, true, true, true, true, true, true, true, true, true, true, true, '2025-01-22T14:07:15', '2025-01-22 05:10:33.659087+00', 'A1100009', 83),
	(5, 2, NULL, NULL, NULL, 1, 67, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, true, true, true, true, false, false, false, false, false, false, true, '2025-01-22T14:07:36', '2025-01-22 05:10:33.659087+00', 'A1100019', 44),
	(6, 1, NULL, NULL, NULL, 5, 14, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-22T14:00', '2025-01-22 05:10:33.659087+00', 'A1100223', 14),
	(18, 3, NULL, 1, NULL, NULL, 59, 0, 0, NULL, true, 1, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 2, 3, 2, NULL, NULL, NULL, 0, 7, NULL, NULL, NULL, 10, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:07:19', '2025-01-22 05:10:33.659087+00', 'A1100005', 5),
	(9, 9, NULL, NULL, NULL, NULL, 67, 0, 1, NULL, true, 3, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, false, false, true, true, false, true, true, '2025-01-22T14:08:08', '2025-01-22 05:10:33.659087+00', 'A1100011', 40),
	(6, 3, NULL, NULL, NULL, 7, 49, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, true, true, false, false, false, false, false, false, true, '2025-01-22T14:07:19', '2025-01-22 05:10:33.659087+00', 'A1100024', 25),
	(17, 4, NULL, 0, NULL, NULL, 84, 2, 4, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 2, NULL, NULL, NULL, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:06:16', '2025-01-22 05:10:33.659087+00', 'A1100055', 22),
	(10, 4, NULL, 2, NULL, -1, 30, NULL, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, true, true, true, true, true, true, true, false, false, false, true, '2025-01-22T14:07:46', '2025-01-22 05:10:33.659087+00', 'A1100054', 33),
	(8, 1, NULL, NULL, NULL, 4, 94, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-22T14:07:31', '2025-01-22 05:10:33.659087+00', 'A1100029', 20),
	(5, 5, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-22T14:08:27', '2025-01-22 05:10:33.659087+00', 'A1100032', 50);


--
-- Data for Name: hospital_bed_operation_rate; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hospital_bed_operation_rate" ("hpid", "hvec_rate", "hvoc_rate", "hvcc_rate", "hvncc_rate", "hvccc_rate", "hvicc_rate", "hv2_rate", "hv3_rate", "hv5", "hv6_rate", "hv7", "hv8_rate", "hv9_rate", "hv10", "hv11", "hv13_rate", "hv14_rate", "hv15_rate", "hv16_rate", "hv17_rate", "hv18_rate", "hv19_rate", "hv21_rate", "hv22_rate", "hv23_rate", "hv24_rate", "hv25_rate", "hv26_rate", "hv27_rate", "hv29_rate", "hv30_rate", "hv31_rate", "hv32_rate", "hv33_rate", "hv34_rate", "hv35_rate", "hv37_rate", "hv38_rate", "hv39_rate", "hv41_rate", "hv42", "hv43", "hvctayn", "hvmriayn", "hvangioayn", "hvventiayn", "hvventisoayn", "hvincuayn", "hvcrrtayn", "hvecmoayn", "hvoxyayn", "hvhypoayn", "hvamyn", "hvidate", "updated_at") VALUES
	('A1100001', 40, 62, NULL, 68, NULL, 82, NULL, NULL, true, 93, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:34', '2025-01-22 05:10:33.99791+00'),
	('A1100021', 38, 20, NULL, 0, NULL, 88, NULL, NULL, true, NULL, true, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 100, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, false, false, true, true, true, true, true, '2025-01-22T14:04:59', '2025-01-22 05:10:33.99791+00'),
	('A1100022', 0, 0, NULL, NULL, NULL, 87, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, true, NULL, true, true, false, true, false, true, true, false, false, false, true, '2025-01-22T14:05:20', '2025-01-22 05:10:33.99791+00'),
	('A1100050', 0, 33, NULL, NULL, NULL, 11, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-22T14:05:56', '2025-01-22 05:10:33.99791+00'),
	('A1100040', 35, 50, NULL, 71, NULL, NULL, 46, 50, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 25, 75, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:05', '2025-01-22 05:10:33.99791+00'),
	('A1100003', 61, 66, NULL, 100, NULL, 91, 86, 88, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:09', '2025-01-22 05:10:33.99791+00'),
	('A1100007', 80, 55, 40, 90, 50, 0, 96, 56, true, 96, true, NULL, NULL, true, true, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 77, 50, 82, 50, 83, NULL, NULL, 28, true, true, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:16', '2025-01-22 05:10:33.99791+00'),
	('A1100025', 0, 33, NULL, NULL, NULL, 77, NULL, NULL, true, NULL, false, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, true, true, false, true, false, false, true, false, false, false, true, '2025-01-22T14:06:33', '2025-01-22 05:10:33.99791+00'),
	('A1100012', 66, 65, NULL, 80, 87, 100, 66, 31, true, 89, true, NULL, NULL, true, true, 0, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, NULL, 80, 0, NULL, NULL, NULL, 66, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:09', '2025-01-22 05:10:33.99791+00'),
	('A1100013', 75, 31, NULL, 95, NULL, NULL, 75, 76, true, NULL, true, NULL, NULL, true, true, 0, 70, NULL, NULL, 50, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, 50, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, true, true, true, true, true, true, true, '2025-01-22T14:08:01', '2025-01-22 05:10:33.99791+00'),
	('A1100008', 30, 66, NULL, 94, NULL, NULL, 95, 75, true, NULL, true, NULL, NULL, true, true, 0, 20, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, NULL, NULL, 50, 66, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:07:50', '2025-01-22 05:10:33.99791+00'),
	('A1100039', 0, 14, NULL, NULL, NULL, 0, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-22T14:05:02', '2025-01-22 05:10:33.99791+00'),
	('A1100009', 83, 67, 83, 81, 100, NULL, 89, 100, true, 92, true, NULL, NULL, true, true, NULL, NULL, 0, 0, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 66, NULL, 90, 50, 92, 61, 16, NULL, NULL, 44, true, NULL, true, true, true, true, true, true, true, true, true, true, true, '2025-01-22T14:07:15', '2025-01-22 05:10:33.99791+00'),
	('A1100005', 5, 76, NULL, 94, NULL, NULL, 100, 100, true, 92, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 25, 89, NULL, NULL, NULL, 100, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:07:19', '2025-01-22 05:10:33.99791+00'),
	('A1100011', 40, 30, NULL, NULL, NULL, NULL, 100, 88, true, 66, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, false, false, true, true, false, true, true, '2025-01-22T14:08:08', '2025-01-22 05:10:33.99791+00'),
	('A1100024', 25, 0, NULL, NULL, NULL, 41, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, true, true, true, true, false, false, false, false, false, false, true, '2025-01-22T14:07:19', '2025-01-22 05:10:33.99791+00'),
	('A1100037', 12, 75, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-22T14:06:41', '2025-01-22 05:10:33.99791+00'),
	('A1100055', 22, 71, NULL, 100, NULL, NULL, 90, 84, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 60, 28, NULL, NULL, NULL, NULL, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:06:16', '2025-01-22 05:10:33.99791+00'),
	('A1100054', 33, 20, NULL, 50, NULL, 110, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, true, NULL, true, true, true, true, true, true, true, false, false, false, true, '2025-01-22T14:07:46', '2025-01-22 05:10:33.99791+00'),
	('A1100015', 193, 100, NULL, 96, NULL, 79, NULL, NULL, true, 100, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 100, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:07:50', '2025-01-22 05:10:33.99791+00'),
	('A1100010', 146, 64, NULL, 74, 44, 70, 46, 43, true, 91, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 100, NULL, 60, NULL, 75, 0, NULL, NULL, NULL, 16, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:05:28', '2025-01-22 05:10:33.99791+00'),
	('A1100043', 40, 50, NULL, 41, NULL, 92, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 100, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, true, false, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:15', '2025-01-22 05:10:33.99791+00'),
	('A1100028', 33, 84, NULL, 66, NULL, NULL, 100, 80, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 16, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:07:51', '2025-01-22 05:10:33.99791+00'),
	('A1100053', 90, 42, NULL, NULL, NULL, NULL, 33, 42, true, 21, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 50, 0, NULL, NULL, NULL, 71, false, NULL, true, true, true, true, false, false, true, true, false, false, true, '2025-01-22T14:04:13', '2025-01-22 05:10:33.99791+00'),
	('A1100049', 20, 33, NULL, NULL, NULL, 70, NULL, NULL, true, NULL, true, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, true, true, false, false, true, true, false, false, true, '2025-01-22T14:05:02', '2025-01-22 05:10:33.99791+00'),
	('A1100027', 44, 60, NULL, NULL, NULL, 20, NULL, NULL, true, NULL, true, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 100, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, false, true, true, false, false, false, true, '2025-01-22T14:07:20', '2025-01-22 05:10:33.99791+00'),
	('A1100016', 87, 38, NULL, 92, NULL, NULL, 100, 100, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:07:48', '2025-01-22 05:10:33.99791+00'),
	('A1100048', 29, 54, NULL, 112, NULL, NULL, 300, 62, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, true, true, true, true, false, false, true, '2025-01-22T14:06:04', '2025-01-22 05:10:33.99791+00'),
	('A1100020', 42, 50, NULL, NULL, NULL, 95, NULL, NULL, true, NULL, true, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 20, NULL, NULL, true, true, true, true, false, false, true, false, false, true, true, '2025-01-22T14:05:05', '2025-01-22 05:10:33.99791+00'),
	('A1120796', 95, 73, NULL, 80, 81, NULL, 100, 93, true, 100, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 33, 100, NULL, NULL, 90, 100, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:05:46', '2025-01-22 05:10:33.99791+00'),
	('A1100036', 0, 100, NULL, NULL, NULL, 42, NULL, NULL, true, NULL, true, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, false, true, true, true, false, false, true, '2025-01-22T14:06:43', '2025-01-22 05:10:33.99791+00'),
	('A1100041', 33, 66, NULL, NULL, NULL, 95, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 66, NULL, NULL, true, true, true, true, false, false, true, true, false, true, true, '2025-01-22T14:08:13', '2025-01-22 05:10:33.99791+00'),
	('A1100002', 35, 76, NULL, 106, NULL, NULL, 70, 64, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 100, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:05:47', '2025-01-22 05:10:33.99791+00'),
	('A1100051', 0, 20, NULL, NULL, NULL, 42, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-22T14:06:44', '2025-01-22 05:10:33.99791+00'),
	('A1100026', 37, 33, NULL, NULL, NULL, 81, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-22T14:08:32', '2025-01-22 05:10:33.99791+00'),
	('A1100014', 100, 62, NULL, 100, NULL, 72, 100, 75, true, NULL, true, NULL, NULL, true, true, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, 90, NULL, NULL, NULL, 25, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:05:22', '2025-01-22 05:10:33.99791+00'),
	('A1100029', 20, 83, NULL, NULL, NULL, 66, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-22T14:07:31', '2025-01-22 05:10:33.99791+00'),
	('A1100032', 50, 61, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-22T14:08:27', '2025-01-22 05:10:33.99791+00'),
	('A1100052', 26, 42, NULL, NULL, NULL, 23, NULL, NULL, true, NULL, true, NULL, 75, false, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 66, 50, NULL, NULL, NULL, 0, NULL, 94, 0, 0, true, NULL, true, true, true, true, false, true, true, true, false, true, true, '2025-01-22T14:07:06', '2025-01-22 05:10:33.99791+00'),
	('A1100019', 44, 50, NULL, NULL, NULL, 85, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 100, NULL, NULL, true, true, true, true, false, false, false, false, false, false, true, '2025-01-22T14:07:36', '2025-01-22 05:10:33.99791+00'),
	('A1100223', 14, 75, NULL, NULL, NULL, 70, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 50, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 0, NULL, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-22T14:00', '2025-01-22 05:10:33.99791+00'),
	('A1100075', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-22T14:05:15', '2025-01-22 05:10:33.99791+00'),
	('A1100044', 0, 0, NULL, NULL, NULL, 58, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, 100, true, NULL, true, true, false, true, false, false, true, false, false, false, true, '2025-01-22T14:05:09', '2025-01-22 05:10:33.99791+00'),
	('A1100035', 70, 50, NULL, 0, NULL, 40, 100, NULL, true, 66, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 0, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, true, true, true, true, true, true, true, true, true, true, true, true, true, '2025-01-22T14:05', '2025-01-22 05:10:33.99791+00'),
	('A1100004', 55, 69, NULL, 90, NULL, 77, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, 75, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:06:25', '2025-01-22 05:10:33.99791+00'),
	('A1121013', 91, 78, NULL, 100, NULL, NULL, 100, 111, true, 100, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 50, NULL, NULL, NULL, 58, 100, NULL, NULL, NULL, 80, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:09', '2025-01-22 05:10:33.99791+00'),
	('A1100023', 30, 133, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, true, false, true, false, false, false, false, false, false, true, '2025-01-22T14:06:36', '2025-01-22 05:10:33.99791+00'),
	('A1100017', 170, 46, 40, 73, 90, NULL, 80, 56, true, 60, true, NULL, NULL, true, true, NULL, NULL, 0, 0, 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 76, 54, 50, 75, 0, 0, NULL, NULL, 25, true, true, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:19', '2025-01-22 05:10:33.99791+00'),
	('A1100006', 113, 71, NULL, 92, 100, 75, NULL, 75, true, 83, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, 66, true, NULL, true, true, true, true, true, true, true, true, false, true, true, '2025-01-22T14:08:50', '2025-01-22 05:10:33.99791+00');


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
-- Data for Name: reservations; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "supabase_user", "department", "job_title", "organization") VALUES
	(1, '2025-01-14 06:41:40.311538+00', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', '소아과', '의사', '삼성서울병원'),
	(3, '2025-01-15 01:15:58.181125+00', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '현장대응단 구조대1팀', '응급구조사', '강남소방서');


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: supabase_admin
--



--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(3, '2025-01-18 07:05:48.912457+00', 1, 'samsunghospital'),
	(4, '2025-01-18 07:08:38.278386+00', 3, 'safer');


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 85, true);


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
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 3, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 4, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
