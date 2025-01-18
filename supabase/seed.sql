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
	('samsunghospital', '2025-01-14 06:35:27.079781+00', '삼성서울병원', 'samsunghospital.com'),
	('safer', '2025-01-15 01:47:03.978069+00', '응급구조사', 'safer.com'),
	('hyumc', '2025-01-16 03:15:07.307534+00', '한양대학교병원', 'hyumc.kr');


--
-- Data for Name: hospitals; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hospitals" ("id", "hpid", "dutyname", "dutytel3", "created_at", "tenant_id") VALUES
	(1, 'A1100010', '삼성서울병원', '02-3410-0129', '2025-01-14 07:25:27.538904+00', 'samsunghospital'),
	(2, 'A1100013', '한양대학교병원', '02-2290-8114', '2025-01-16 03:17:49.799986+00', 'hyumc');


--
-- Data for Name: hospital_bed_availability; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hospital_bed_availability" ("hospital_id", "hvec", "hvoc", "hvcc", "hvncc", "hvccc", "hvicc", "hvgc", "hv2", "hv3", "hv4", "hv5", "hv6", "hv7", "hv8", "hv9", "hv10", "hv11", "hv13", "hv14", "hv15", "hv16", "hv17", "hv18", "hv19", "hv21", "hv22", "hv23", "hv24", "hv25", "hv26", "hv27", "hv28", "hv29", "hv30", "hv31", "hv32", "hv33", "hv34", "hv35", "hv36", "hv37", "hv38", "hv39", "hv40", "hv41", "hv42", "hv43", "hvctayn", "hvmriayn", "hvangioayn", "hvventiayn", "hvventisoayn", "hvincuayn", "hvcrrtayn", "hvecmoayn", "hvoxyayn", "hvhypoayn", "hvamyn", "hvidate", "updated_at") VALUES
	(1, 3, 28, NULL, 7, 9, 3, 205, 16, 14, NULL, true, 0, true, NULL, NULL, true, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 2, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 12, true, NULL, true, true, true, NULL, NULL, true, true, true, false, true, true, '20250114165452', NULL);


--
-- Data for Name: hospital_emergency_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hospital_emergency_info" ("info_id", "dutyaddr", "dutyemcls", "dutyemclsname", "wgs84lon", "wgs84lat") VALUES
	(1, '서울특별시 강남구 일원로 81', 'G007', '지역응급의료센터', 37.489109, 127.088603),
	(2, '서울특별시 성동구 사근동 왕십리로 222-1', 'G007', '지역응급의료센터', 37.559835, 127.044014);


--
-- Data for Name: reservations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."reservations" ("id", "hospital_id", "department", "reserved_by", "reserved_beds", "requested_at", "approved_at", "rejected_at", "cancelled_at", "updated_at", "status") VALUES
	(4, 2, '내과', '5cb12aad-92a7-410a-a062-44a626e1f5e8', 2, '2025-01-16 03:22:53.404389+00', NULL, NULL, NULL, '2025-01-16 03:22:53.404389+00', 'pending'),
	(2, 1, '소아과', '5cb12aad-92a7-410a-a062-44a626e1f5e8', 1, '2025-01-16 00:27:42.210838+00', '2025-01-16 07:54:54.578911+00', NULL, NULL, '2025-01-16 00:27:42.210838+00', 'approved'),
	(5, 1, '정형외과', '5cb12aad-92a7-410a-a062-44a626e1f5e8', 3, '2025-01-16 03:23:35.661557+00', NULL, '2025-01-16 07:58:24.694229+00', NULL, '2025-01-16 03:23:35.661557+00', 'rejected'),
	(7, 1, '흉부외과', '5cb12aad-92a7-410a-a062-44a626e1f5e8', 3, '2025-01-16 08:05:15.373139+00', NULL, NULL, NULL, '2025-01-16 08:05:15.373139+00', 'pending'),
	(6, 1, '신경과', '5cb12aad-92a7-410a-a062-44a626e1f5e8', 1, '2025-01-16 08:02:58.233467+00', '2025-01-16 08:22:53.098454+00', NULL, NULL, '2025-01-16 08:02:58.233467+00', 'approved');


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
-- Name: hospitals_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."hospitals_id_seq1"', 2, true);


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
