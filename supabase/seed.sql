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
	('00000000-0000-0000-0000-000000000000', '0479b37c-f405-4088-9d80-411c4e360c61', '{"action":"token_revoked","actor_id":"f092cc72-9816-4ec5-9a6e-37d7ea46b387","actor_username":"young92@metabuild.com","actor_via_sso":false,"log_type":"token"}', '2025-01-17 08:37:35.696989+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '5cb12aad-92a7-410a-a062-44a626e1f5e8', 'authenticated', 'authenticated', 'ch1004@metabuild.com', '$2a$10$iiTdnrE4jFdjWLqnTCGBa.BVfJTDVQN1RyRekqdujiwhKrvmAaDAW', '2025-01-15 01:15:11.352728+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-01-17 07:28:10.885694+00', '{"tenants": ["safer"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-15 01:15:11.340725+00', '2025-01-17 08:26:10.813867+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', 'authenticated', 'authenticated', 'young92@metabuild.com', '$2a$10$fBQyLHLHUFW.Ghc6xmKiyeQOhQnoQuwa.1hxMQtNQVePn3kTh7/vq', '2025-01-14 05:18:51.965275+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-01-16 01:56:05.320848+00', '{"tenants": ["samsunghospital"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2025-01-14 05:18:51.956406+00', '2025-01-17 08:37:35.698851+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


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
	('4f316734-3c44-4e69-90b5-9f01c548e93e', '5cb12aad-92a7-410a-a062-44a626e1f5e8', '2025-01-17 07:28:10.885787+00', '2025-01-17 08:26:10.815227+00', NULL, 'aal1', NULL, '2025-01-17 08:26:10.815155', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL),
	('782b50e2-de3f-4f3d-896d-202448863055', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', '2025-01-16 01:56:05.320943+00', '2025-01-17 08:37:35.699562+00', NULL, 'aal1', NULL, '2025-01-17 08:37:35.699515', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '172.18.0.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('782b50e2-de3f-4f3d-896d-202448863055', '2025-01-16 01:56:05.323709+00', '2025-01-16 01:56:05.323709+00', 'password', 'e20b354c-ae16-437b-b579-9ba9f2937f8f'),
	('4f316734-3c44-4e69-90b5-9f01c548e93e', '2025-01-17 07:28:10.890689+00', '2025-01-17 07:28:10.890689+00', 'password', '9b1ac604-d73f-4b98-bc89-bd25d168c996');


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
	('00000000-0000-0000-0000-000000000000', 59, '382lWgPsdCYebC0LFHkpcw', '5cb12aad-92a7-410a-a062-44a626e1f5e8', true, '2025-01-17 07:28:10.888992+00', '2025-01-17 08:26:10.811928+00', NULL, '4f316734-3c44-4e69-90b5-9f01c548e93e'),
	('00000000-0000-0000-0000-000000000000', 61, 'RpNl13SDItBUf6JPoybr3A', '5cb12aad-92a7-410a-a062-44a626e1f5e8', false, '2025-01-17 08:26:10.812749+00', '2025-01-17 08:26:10.812749+00', '382lWgPsdCYebC0LFHkpcw', '4f316734-3c44-4e69-90b5-9f01c548e93e'),
	('00000000-0000-0000-0000-000000000000', 60, 'TXsCdcNpglxd9LPBzUkiBQ', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', true, '2025-01-17 07:32:25.128035+00', '2025-01-17 08:37:35.697436+00', 'hYC35O6-O2GptwNbXGb3CA', '782b50e2-de3f-4f3d-896d-202448863055'),
	('00000000-0000-0000-0000-000000000000', 62, 'mwGJP7BDPsitKHh3XEKpRA', 'f092cc72-9816-4ec5-9a6e-37d7ea46b387', false, '2025-01-17 08:37:35.697968+00', '2025-01-17 08:37:35.697968+00', 'TXsCdcNpglxd9LPBzUkiBQ', '782b50e2-de3f-4f3d-896d-202448863055');


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
	('huimyung', '2025-01-18 04:33:14.984555+00', '희명병원', 'huimyung.com');


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

INSERT INTO "public"."hospital_bed_availability" ("hpid", "hvec", "hvoc", "hvcc", "hvncc", "hvccc", "hvicc", "hvgc", "hv2", "hv3", "hv4", "hv5", "hv6", "hv7", "hv8", "hv9", "hv10", "hv11", "hv13", "hv14", "hv15", "hv16", "hv17", "hv18", "hv19", "hv21", "hv22", "hv23", "hv24", "hv25", "hv26", "hv27", "hv28", "hv29", "hv30", "hv31", "hv32", "hv33", "hv34", "hv35", "hv36", "hv37", "hv38", "hv39", "hv40", "hv41", "hv42", "hv43", "hvctayn", "hvmriayn", "hvangioayn", "hvventiayn", "hvventisoayn", "hvincuayn", "hvcrrtayn", "hvecmoayn", "hvoxyayn", "hvhypoayn", "hvamyn", "hvidate", "updated_at") VALUES
	('A1100015', 0, 0, NULL, 4, NULL, 8, 205, NULL, NULL, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 4, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:01:51', '2025-01-17 07:05:00.833196+00'),
	('A1100010', -7, 29, NULL, 16, 6, 1, 357, 17, 13, NULL, true, 1, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 2, NULL, 5, NULL, 3, 2, NULL, NULL, NULL, NULL, 15, 11, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T15:58:53', '2025-01-17 07:05:00.833196+00'),
	('A1100043', 6, 13, NULL, 9, NULL, 5, 171, NULL, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 3, 1, 3, 10, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 1, true, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:11', '2025-01-17 07:05:00.833196+00'),
	('A1100028', 10, 4, NULL, 3, NULL, NULL, 186, 4, 5, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, 6, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:45', '2025-01-17 07:05:00.833196+00'),
	('A1100053', 2, 10, NULL, NULL, NULL, NULL, 251, 9, 8, NULL, true, 11, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, 41, 1, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T15:57:54', '2025-01-17 07:05:00.833196+00'),
	('A1120796', 2, 14, NULL, 5, 2, NULL, 96, 0, 4, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 0, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, 1, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00:40', '2025-01-17 07:05:00.833196+00'),
	('A1100036', 10, 4, NULL, NULL, NULL, 8, 29, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:01:40', '2025-01-17 07:05:00.833196+00'),
	('A1100041', 13, 4, NULL, NULL, NULL, 1, 23, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:11', '2025-01-17 07:05:00.833196+00'),
	('A1100002', 12, 11, NULL, 3, NULL, NULL, 188, 5, 7, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 8, 1, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T15:58:15', '2025-01-17 07:05:00.833196+00'),
	('A1100051', 9, 4, NULL, NULL, NULL, 6, 11, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:01:39', '2025-01-17 07:05:00.833196+00'),
	('A1100026', 6, 2, NULL, NULL, NULL, 1, 33, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:01:41', '2025-01-17 07:05:00.833196+00'),
	('A1100014', 6, 12, NULL, 0, NULL, 2, 98, 0, 2, NULL, true, NULL, true, NULL, NULL, true, true, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2, NULL, NULL, NULL, 1, 6, NULL, NULL, NULL, 8, 2, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T15:59:38', '2025-01-17 07:05:00.833196+00'),
	('A1100049', 5, 0, NULL, NULL, NULL, 9, 26, NULL, NULL, NULL, true, NULL, true, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00:29', '2025-01-17 07:05:00.833196+00'),
	('A1100027', 8, 7, NULL, NULL, NULL, 9, 224, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T15:57:49', '2025-01-17 07:05:00.833196+00'),
	('A1100016', 2, 10, NULL, 1, NULL, NULL, 101, 0, 0, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 2, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 5, 2, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:01:57', '2025-01-17 07:05:00.833196+00'),
	('A1100048', 9, 7, NULL, 1, NULL, NULL, 195, -10, 0, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 1, 0, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:01:04', '2025-01-17 07:05:00.833196+00'),
	('A1100020', 8, 6, NULL, NULL, NULL, 7, 58, NULL, NULL, NULL, true, NULL, true, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00:05', '2025-01-17 07:05:00.833196+00'),
	('A1100001', 9, 13, NULL, 2, NULL, 7, 153, NULL, NULL, NULL, true, 3, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 3, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 10, 7, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:21', '2025-01-17 07:05:00.833196+00'),
	('A1100021', 9, 5, NULL, 4, NULL, 0, 56, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00:51', '2025-01-17 07:05:00.833196+00'),
	('A1100022', 7, 3, NULL, NULL, NULL, 0, 22, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00:20', '2025-01-17 07:05:00.833196+00'),
	('A1100050', 16, 5, NULL, NULL, NULL, 5, 31, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-16T17:56:47', '2025-01-17 07:05:00.833196+00'),
	('A1100040', 24, 9, NULL, 9, NULL, NULL, 302, 7, 8, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 3, NULL, NULL, NULL, 4, 0, NULL, NULL, NULL, NULL, 12, 2, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00', '2025-01-17 07:05:00.833196+00'),
	('A1100003', 8, 8, NULL, 0, NULL, 2, 226, 9, 4, NULL, true, NULL, true, NULL, NULL, true, true, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, 4, 1, 2, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, 1, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:08', '2025-01-17 07:05:00.833196+00'),
	('A1100007', 0, 18, 4, 4, 9, 8, 598, 3, 12, NULL, true, 3, true, NULL, NULL, true, true, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 3, NULL, 6, 1, 6, 3, NULL, 4, NULL, NULL, 29, 23, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T15:57:36', '2025-01-17 07:05:00.833196+00'),
	('A1100025', 7, 3, NULL, NULL, NULL, 5, 68, NULL, NULL, NULL, true, NULL, false, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00:57', '2025-01-17 07:05:00.833196+00'),
	('A1100012', 7, 16, NULL, 11, 3, 1, 299, 9, 11, NULL, true, 5, true, NULL, NULL, true, true, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1, NULL, 8, 2, NULL, NULL, NULL, NULL, 16, 6, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:09', '2025-01-17 07:05:00.833196+00'),
	('A1100013', 3, 10, NULL, 0, NULL, NULL, 282, 0, 1, NULL, true, NULL, true, NULL, NULL, true, true, 4, 3, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, 3, NULL, NULL, NULL, 0, 11, NULL, NULL, NULL, 10, 2, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T15:58:01', '2025-01-17 07:05:00.833196+00'),
	('A1100008', 15, 8, NULL, 2, NULL, NULL, 187, 5, 8, NULL, true, NULL, true, NULL, NULL, true, true, 2, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, 2, 26, NULL, NULL, NULL, 29, 1, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:01:50', '2025-01-17 07:05:00.833196+00'),
	('A1100039', 3, 6, NULL, NULL, NULL, 14, 130, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00:03', '2025-01-17 07:05:00.833196+00'),
	('A1100009', -12, 44, 3, 13, 1, NULL, 738, 3, 3, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, 2, 1, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 1, 3, NULL, 2, 1, 5, 4, NULL, 6, NULL, NULL, 20, 7, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:01:15', '2025-01-17 07:05:00.833196+00'),
	('A1100019', 7, 1, NULL, NULL, NULL, 1, 69, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:16', '2025-01-17 07:05:00.833196+00'),
	('A1100223', 6, 1, NULL, NULL, NULL, 3, 15, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00', '2025-01-17 07:05:00.833196+00'),
	('A1100005', 14, 8, NULL, 0, NULL, NULL, 74, 0, 0, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 2, 4, 3, NULL, NULL, NULL, 0, 5, NULL, NULL, NULL, 9, 1, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:12', '2025-01-17 07:05:00.833196+00'),
	('A1100011', 9, 8, NULL, NULL, NULL, NULL, 36, -1, 3, NULL, true, 5, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:07', '2025-01-17 07:05:00.833196+00'),
	('A1100024', 8, 3, NULL, NULL, NULL, 1, 77, NULL, NULL, NULL, true, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:42', '2025-01-17 07:05:00.833196+00'),
	('A1100037', 7, 2, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:01:38', '2025-01-17 07:05:00.833196+00'),
	('A1100055', 9, 8, NULL, 0, NULL, NULL, 114, 1, 7, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:47', '2025-01-17 07:05:00.833196+00'),
	('A1100054', 10, 1, NULL, 1, NULL, 1, 19, NULL, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00:24', '2025-01-17 07:05:00.833196+00'),
	('A1100004', 11, 10, NULL, 1, NULL, 15, 146, NULL, NULL, NULL, true, NULL, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 4, 1, 2, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 21, 0, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00:39', '2025-01-17 07:05:00.833196+00'),
	('A1121013', -4, 14, NULL, -4, NULL, NULL, 168, 0, 2, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 2, 2, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL, NULL, NULL, 1, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:09', '2025-01-17 07:05:00.833196+00'),
	('A1100023', 9, 1, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00:40', '2025-01-17 07:05:00.833196+00'),
	('A1100017', -18, 34, 1, 10, 0, NULL, 401, 4, 13, NULL, true, 2, true, NULL, NULL, true, true, NULL, NULL, 1, 1, 1, 1, NULL, NULL, 0, 0, NULL, 9, NULL, NULL, 9, 2, 4, 7, 8, 0, 6, 4, 30, 6, NULL, NULL, 12, 2, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:54', '2025-01-17 07:05:00.833196+00'),
	('A1100006', 1, 4, NULL, 1, 3, 7, 70, NULL, 0, NULL, true, 1, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 13, 2, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:45', '2025-01-17 07:05:00.833196+00'),
	('A1100029', 8, 6, NULL, NULL, NULL, 5, 94, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T15:58:59', '2025-01-17 07:05:00.833196+00'),
	('A1100032', 10, 8, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:02:26', '2025-01-17 07:05:00.833196+00'),
	('A1100052', 10, 6, NULL, NULL, NULL, 8, 43, NULL, 0, NULL, true, NULL, true, NULL, 8, false, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 5, 3, 2, 3, 2, NULL, NULL, NULL, 2, 0, NULL, 8, 2, NULL, 7, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:01:07', '2025-01-17 07:05:00.833196+00'),
	('A1100075', 7, 2, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00:49', '2025-01-17 07:05:00.833196+00'),
	('A1100044', 0, 3, NULL, NULL, NULL, 7, 8, NULL, NULL, NULL, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00', '2025-01-17 07:05:00.833196+00'),
	('A1100035', 2, 9, NULL, 1, NULL, 2, 183, 2, NULL, NULL, true, 1, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, 2, 2, 9, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, 0, 3, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-17T16:00:01', '2025-01-17 07:05:00.833196+00');


--
-- Data for Name: hospital_location_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hospital_location_info" ("hpid", "dutyaddr", "dutyemcls", "dutyemclsname", "wgs84lon", "wgs84lat") VALUES
	('A1100048', '서울특별시 노원구 한글비석로 68, 을지병원 (하계동)', 'G006', '지역응급의료센터', 127.07000281991385, 37.636442927386746),
	('A1100044', '서울특별시 중랑구 사가정로49길 53 (면목동)', 'G007', '지역응급의료기관', 127.08605546969358, 37.58362083896108),
	('A1100037', '서울특별시 영등포구 시흥대로 657 (대림동, 대림성모병원)', 'G007', '지역응급의료기관', 126.90716948025135, 37.49068925436284),
	('A1100024', '서울특별시 영등포구 도림로 156, 명지성모병원 (대림동)', 'G007', '지역응급의료기관', 126.89925446922592, 37.4938507104387),
	('A1100046', '서울특별시 강서구 강서로 295 (내발산동)', 'G009', '응급실운영신고기관', 126.83602535156236, 37.55225379358291),
	('A1100036', '서울특별시 강서구 공항대로 389, 부민병원 (등촌동)', 'G007', '지역응급의료기관', 126.85094950539181, 37.556940892893586),
	('A1100148', '서울특별시 관악구 남부순환로 1860, -1,1,3,4,5층 (봉천동,  )', 'G009', '응급실운영신고기관', 126.956285774259, 37.4796247835746),
	('A1100010', '서울특별시 강남구 일원로 81 (일원동, 삼성의료원)', 'G006', '지역응급의료센터', 127.08668245340024, 37.48851613490445),
	('A1100021', '서울특별시 동대문구 망우로 82 (휘경동)', 'G006', '지역응급의료센터', 127.0653288266823, 37.587992001305395),
	('A1100017', '서울특별시 종로구 대학로 101 (연건동)', 'G001', '권역응급의료센터', 126.99896308412191, 37.57966608924356),
	('A1107402', '서울특별시 종로구 대학로 101 (연건동)', 'G009', '응급실운영신고기관', 126.997196437908, 37.5804523853297),
	('A1100050', '서울특별시 동대문구 왕산로 259, 서울성심병원 (청량리동)', 'G007', '지역응급의료기관', 127.04983805981972, 37.58419129209865),
	('A1100029', '서울특별시 종로구 새문안로 9, 적십자병원 (평동)', 'G007', '지역응급의료기관', 126.96699861289684, 37.56715536263689),
	('A1100022', '서울특별시 동대문구 무학로 124 (용두동)', 'G007', '지역응급의료기관', 127.03140257525507, 37.57539886464885),
	('A1100040', '서울특별시 동작구 보라매로5길 20 (신대방동)', 'G006', '지역응급의료센터', 126.92404876254014, 37.4937184009319),
	('A1100223', '서울특별시 양천구 신정이펜1로 20 (신정동)', 'G007', '지역응급의료기관', 126.8331299304024, 37.51201935883779),
	('A1100035', '서울특별시 중랑구 신내로 156 (신내동)', 'G001', '권역응급의료센터', 127.0980910949257, 37.61286931510163),
	('A1100172', '서울특별시 강북구 도봉로 374 (번동, 서울현대병원)', 'G009', '응급실운영신고기관', 127.028504374531, 37.6402559204261),
	('A1100028', '서울특별시 강동구 성안로 150 (길동)', 'G006', '지역응급의료센터', 127.13526354631517, 37.53598408220376),
	('A1100054', '서울특별시 영등포구 여의대방로53길 22 (신길동, 성애병원)', 'G006', '지역응급의료센터', 126.92236733617031, 37.51205044957338),
	('A1100032', '서울특별시 종로구 통일로 256 (무악동)', 'G007', '지역응급의료기관', 126.9577071892358, 37.57534016994642),
	('A1100012', '서울특별시 서초구 반포대로 222 (반포동)', 'G006', '지역응급의료센터', 127.00472725970137, 37.501800804785276),
	('A1100013', '서울특별시 성동구 왕십리로 222-1 (사근동)', 'G001', '권역응급의료센터', 127.04488284061982, 37.559944533564746),
	('A1100051', '서울특별시 광진구 자양로 85 (자양동)', 'G007', '지역응급의료기관', 127.08360130258502, 37.535315660180416),
	('A1100019', '서울특별시 양천구 목동로 225, 홍익병원본관 (신정동)', 'G007', '지역응급의료기관', 126.8636640030062, 37.52844147447355),
	('A1100049', '서울특별시 금천구 시흥대로 244 (시흥동)', 'G007', '지역응급의료기관', 126.90056251863875, 37.45567063464179),
	('A1100011', '서울특별시 영등포구 63로 10, 여의도성모병원 (여의도동)', 'G006', '지역응급의료센터', 126.93673129599131, 37.51827233800711),
	('A1121013', '서울특별시 은평구 통일로 1021 (진관동)', 'G006', '지역응급의료센터', 126.91615048739686, 37.633608409726854),
	('A1100047', '서울특별시 관악구 관악로 242 (봉천동)', 'G009', '응급실운영신고기관', 126.956781703053, 37.4856188363947),
	('A1123234', '서울특별시 강남구 선릉로 404, 더드림병원 (대치동)', 'G009', '응급실운영신고기관', 127.050967336445, 37.5009902618151),
	('A1100141', '서울특별시 강남구 남부순환로 2649, 베드로병원 (도곡동)', 'G009', '응급실운영신고기관', 127.0395873429168, 37.485612179925724),
	('A1100076', '서울특별시 관악구 남부순환로 1449, 강남힐병원 (신림동)', 'G009', '응급실운영신고기관', 126.911648078471, 37.4816513439454),
	('A1100043', '서울특별시 강동구 동남로 892 (상일동)', 'G001', '권역응급의료센터', 127.157084787845, 37.5520459324005),
	('A1100006', '서울특별시 종로구 새문안로 29 (평동)', 'G006', '지역응급의료센터', 126.96793805451702, 37.568497631233825),
	('A1121842', '서울특별시 강북구 도봉로 187, 지하1층, 2층~5층 (미아동)', 'G009', '응급실운영신고기관', 127.026184524499, 37.6254205559935),
	('A1117285', '서울특별시 강서구 가로공원로 187, 강서케이병원 (화곡동)', 'G009', '응급실운영신고기관', 126.836699017573, 37.5373576230977),
	('A1100002', '서울특별시 광진구 능동로 120-1 (화양동)', 'G006', '지역응급의료센터', 127.0721229093036, 37.54084479467721),
	('A1100039', '서울특별시 송파구 송이로 123, 국립경찰병원 (가락동)', 'G007', '지역응급의료기관', 127.12348793503202, 37.496413213560785),
	('A1100001', '서울특별시 동대문구 경희대로 23 (회기동)', 'G006', '지역응급의료센터', 127.05183223390303, 37.5938765502235),
	('A1100014', '서울특별시 구로구 구로동로 148, 고려대부속구로병원 (구로동)', 'G001', '권역응급의료센터', 126.8847449363546, 37.49211114525054),
	('A1100026', '서울특별시 구로구 경인로 427, 구로성심병원 (고척동)', 'G007', '지역응급의료기관', 126.86636039556485, 37.49964578669388),
	('A1100052', '서울특별시 중구 을지로 245, 국립중앙의료원 (을지로6가)', 'G006', '지역응급의료센터', 127.00579539705473, 37.56733955813183),
	('A1122033', '서울특별시 서초구 서초중앙로 4, 기쁨병원 (서초동)', 'G009', '응급실운영신고기관', 127.018063486739, 37.482713030212),
	('A1100057', '서울특별시 강남구 논현로 566, 강남차병원(역삼동650-9, 606-4, 605외2필지(지하7층~지하1층, 지상2층~7층)) (역삼동)', 'G009', '응급실운영신고기관', 127.03466865188072, 37.506800025850865),
	('A1100008', '서울특별시 성북구 고려대로 73, 고려대병원 (안암동5가)', 'G001', '권역응급의료센터', 127.02647086385966, 37.58715608002366),
	('A1100163', '서울특별시 영등포구 영등포로 83, 한강수병원 (양평동1가)', 'G009', '응급실운영신고기관', 126.890913736375, 37.5224047841717),
	('A1100053', '서울특별시 강동구 진황도로61길 53 (둔촌동)', 'G006', '지역응급의료센터', 127.14671886173552, 37.528220900896635),
	('A1100027', '서울특별시 노원구 노원로 75, 한국원자력의학원 (공릉동)', 'G007', '지역응급의료기관', 127.08269315796588, 37.628815981330355),
	('A1100055', '서울특별시 영등포구 신길로 1 (대림동, 강남성심병원)', 'G006', '지역응급의료센터', 126.9086725295, 37.4932492859),
	('A1100038', '서울특별시 영등포구 버드나루로7길 12 (영등포동7가, 한강성심병원)', 'G009', '응급실운영신고기관', 126.91033000120589, 37.52346674579277),
	('A1100004', '서울특별시 용산구 대사관로 59 (한남동)', 'G006', '지역응급의료센터', 127.00441798640304, 37.53384172231443),
	('A1100063', '서울특별시 마포구 서강로 110, 지2층~6층 (신수동)', 'G009', '응급실운영신고기관', 126.933734666413, 37.5525892651719),
	('A1100045', '서울특별시 영등포구 영등포로36길 13 (영등포동4가, 충무병원)', 'G009', '응급실운영신고기관', 126.90367981067837, 37.518848328762154),
	('A1100015', '서울특별시 강남구 언주로 211, 강남세브란스병원 (도곡동)', 'G006', '지역응급의료센터', 127.04631254186798, 37.492806984645476),
	('A1100007', '서울특별시 서대문구 연세로 50-1 (신촌동)', 'G006', '지역응급의료센터', 126.94082769649863, 37.56211711412639),
	('A1100042', '서울특별시 강서구 하늘길 70 (과해동)', 'G009', '응급실운영신고기관', 126.7963653099318, 37.56199597494205),
	('A1100152', '서울특별시 은평구 연서로 177 (갈현동)', 'G009', '응급실운영신고기관', 126.917472218592, 37.6146922208583),
	('A1100025', '서울특별시 서대문구 연희로 272, 동신병원 본관동 (홍은동)', 'G007', '지역응급의료기관', 126.93658306608872, 37.58110428173239),
	('A1100041', '서울특별시 관악구 남부순환로 1636, 양지병원 (신림동)', 'G006', '지역응급의료센터', 126.93253922577287, 37.48427507045319),
	('A1100030', '서울특별시 강북구 도봉로 301 (수유동, 대한병원)', 'G009', '응급실운영신고기관', 127.02267251878474, 37.63547043209498),
	('A1100255', '서울특별시 영등포구 당산로31길 10 (당산동3가)', 'G009', '응급실운영신고기관', 126.89561402986, 37.526858089517),
	('A1100023', '서울특별시 은평구 통일로 873 (갈현동)', 'G007', '지역응급의료기관', 126.91955399169245, 37.62079154435882),
	('A1100075', '서울특별시 중랑구 망우로 511, 동부제일병원 지하1~6층 (망우동)', 'G007', '지역응급의료기관', 127.1090292210168, 37.60067564592665),
	('A1100020', '서울특별시 도봉구 우이천로 308, 한일병원 (쌍문동)', 'G006', '지역응급의료센터', 127.02902417950423, 37.64611570419094),
	('A1100005', '서울특별시 양천구 안양천로 1071 (목동)', 'G001', '권역응급의료센터', 126.8862159683056, 37.53654282637804),
	('A1120796', '서울특별시 강서구 공항대로 260, 이화의대부속서울병원 (마곡동)', 'G006', '지역응급의료센터', 126.8362659275, 37.557261149),
	('A1100016', '서울특별시 노원구 동일로 1342, 상계백병원 (상계동)', 'G006', '지역응급의료센터', 127.06311619032103, 37.6485812672986),
	('A1122381', '서울특별시 성동구 왕십리로 382 (하왕십리동)', 'G009', '응급실운영신고기관', 127.028019796271, 37.5651102845783),
	('A1100009', '서울특별시 송파구 올림픽로43길 88, 서울아산병원 (풍납동)', 'G006', '지역응급의료센터', 127.10823825113607, 37.526563966361216),
	('A1100003', '서울특별시 동작구 흑석로 102 (흑석동)', 'G006', '지역응급의료센터', 126.96079378447554, 37.50707428493414),
	('A1117070', '서울특별시 은평구 서오릉로 45, 최원호병원 (녹번동)', 'G009', '응급실운영신고기관', 126.923855760856, 37.604769594378);


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 62, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: hospital_emergency_info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."hospital_emergency_info_info_id_seq"', 1, false);


--
-- Name: reservations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."reservations_id_seq"', 40, true);


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
