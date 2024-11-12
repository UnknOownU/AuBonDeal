--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.2)
-- Dumped by pg_dump version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.2)

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
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: belong; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.belong (
    product_uuid uuid NOT NULL,
    order_number uuid NOT NULL
);


ALTER TABLE public.belong OWNER TO postgres;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_number uuid NOT NULL,
    order_total_cost_ht numeric(10,2) NOT NULL,
    order_total_quantity integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    deliver_at timestamp without time zone,
    user_uuid uuid
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_uuid uuid NOT NULL,
    product_name character varying(100) NOT NULL,
    product_description text,
    product_price numeric(10,2) NOT NULL,
    product_quantity integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_uuid uuid NOT NULL,
    user_pseudo character varying(50) NOT NULL,
    username character varying(50) NOT NULL,
    user_password character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: belong; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.belong (product_uuid, order_number) FROM stdin;
aaa111e4-567e-49b1-8d3a-456426614100	111a4567-e89b-12d3-a456-426614174010
bbb222e4-567e-49b1-8d3a-456426614101	222a4567-e89b-12d3-a456-426614174011
ccc333e4-567e-49b1-8d3a-456426614102	333a4567-e89b-12d3-a456-426614174012
ddd444e4-567e-49b1-8d3a-456426614103	444a4567-e89b-12d3-a456-426614174013
eee555e4-567e-49b1-8d3a-456426614104	555a4567-e89b-12d3-a456-426614174014
fff666e4-567e-49b1-8d3a-456426614105	666a4567-e89b-12d3-a456-426614174015
aaa777e4-567e-49b1-8d3a-456426614106	777a4567-e89b-12d3-a456-426614174016
bbb888e4-567e-49b1-8d3a-456426614107	888a4567-e89b-12d3-a456-426614174017
ccc999e4-567e-49b1-8d3a-456426614108	999a4567-e89b-12d3-a456-426614174018
ddd000e4-567e-49b1-8d3a-456426614109	aaaa4567-e89b-12d3-a456-426614174019
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_number, order_total_cost_ht, order_total_quantity, created_at, deliver_at, user_uuid) FROM stdin;
111a4567-e89b-12d3-a456-426614174010	1499.99	3	2023-01-01 10:00:00	2023-01-05 10:00:00	111e4567-e89b-12d3-a456-426614174000
222a4567-e89b-12d3-a456-426614174011	299.99	2	2023-02-10 12:30:00	2023-02-15 12:30:00	222e4567-e89b-12d3-a456-426614174001
333a4567-e89b-12d3-a456-426614174012	899.99	1	2023-03-20 08:15:00	2023-03-25 08:15:00	333e4567-e89b-12d3-a456-426614174002
444a4567-e89b-12d3-a456-426614174013	499.99	1	2023-04-15 11:45:00	2023-04-20 11:45:00	444e4567-e89b-12d3-a456-426614174003
555a4567-e89b-12d3-a456-426614174014	1299.99	4	2023-05-05 09:30:00	2023-05-10 09:30:00	555e4567-e89b-12d3-a456-426614174004
666a4567-e89b-12d3-a456-426614174015	749.99	2	2023-06-12 14:00:00	2023-06-17 14:00:00	666e4567-e89b-12d3-a456-426614174005
777a4567-e89b-12d3-a456-426614174016	399.99	1	2023-07-07 16:45:00	2023-07-12 16:45:00	777e4567-e89b-12d3-a456-426614174006
888a4567-e89b-12d3-a456-426614174017	249.99	2	2023-08-03 13:30:00	2023-08-08 13:30:00	888e4567-e89b-12d3-a456-426614174007
999a4567-e89b-12d3-a456-426614174018	199.99	1	2023-09-10 11:15:00	2023-09-15 11:15:00	999e4567-e89b-12d3-a456-426614174008
aaaa4567-e89b-12d3-a456-426614174019	99.99	5	2023-10-01 10:00:00	2023-10-06 10:00:00	111e4567-e89b-12d3-a456-426614174abc
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_uuid, product_name, product_description, product_price, product_quantity, created_at, updated_at) FROM stdin;
aaa111e4-567e-49b1-8d3a-456426614100	Laptop	High-performance laptop for gaming	899.99	15	2023-01-01 10:00:00	2023-02-01 10:00:00
bbb222e4-567e-49b1-8d3a-456426614101	Smartphone	Latest model smartphone with high-resolution camera	699.99	25	2023-03-01 10:00:00	2023-03-15 10:00:00
ccc333e4-567e-49b1-8d3a-456426614102	Headphones	Noise-cancelling wireless headphones	199.99	50	2023-04-01 10:00:00	2023-04-20 10:00:00
ddd444e4-567e-49b1-8d3a-456426614103	Tablet	Lightweight tablet with long battery life	299.99	30	2023-05-01 10:00:00	2023-05-10 10:00:00
eee555e4-567e-49b1-8d3a-456426614104	Camera	Digital camera with 4K video support	499.99	20	2023-06-01 10:00:00	2023-06-15 10:00:00
fff666e4-567e-49b1-8d3a-456426614105	Smartwatch	Smartwatch with health tracking features	149.99	40	2023-07-01 10:00:00	2023-07-05 10:00:00
aaa777e4-567e-49b1-8d3a-456426614106	Gaming Console	Next-gen gaming console	399.99	10	2023-08-01 10:00:00	2023-08-10 10:00:00
bbb888e4-567e-49b1-8d3a-456426614107	Keyboard	Mechanical keyboard with RGB lighting	99.99	100	2023-09-01 10:00:00	2023-09-20 10:00:00
ccc999e4-567e-49b1-8d3a-456426614108	Mouse	Wireless mouse with high precision	49.99	75	2023-10-01 10:00:00	2023-10-10 10:00:00
ddd000e4-567e-49b1-8d3a-456426614109	Monitor	4K Ultra HD monitor	299.99	5	2023-11-01 10:00:00	2023-11-15 10:00:00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_uuid, user_pseudo, username, user_password, created_at) FROM stdin;
111e4567-e89b-12d3-a456-426614174000	johndoe	john_doe	$2a$06$aGEN6KHXhthTxNnaqeBG4.fDzO.oapqpK04Y2cKGBvF1r1dq01WZ.	2023-01-01 10:00:00
222e4567-e89b-12d3-a456-426614174001	janedoe	jane_doe	$2a$06$KsrAHbVOviCRq2gJlWVDOuneM2UIx4.d6hkFkRyBO/MrTqEI4LdQ2	2023-02-15 12:30:00
333e4567-e89b-12d3-a456-426614174002	alice	alice_w	$2a$06$1CVFT3g6CzJk/6/l5OQzfuL22g8mH2E9R9rW7sW8vqbw8kpbxSoj6	2023-03-10 08:15:00
444e4567-e89b-12d3-a456-426614174003	bobsmith	bob_smith	$2a$06$W58doi0L2FBLSKkycN753.XZh598Rv1FyLxgn8nloAZeyc2N8BVx2	2023-04-20 11:45:00
555e4567-e89b-12d3-a456-426614174004	charlie	charlie_c	$2a$06$T43DI42P5.izXoBfGSyzKuWbNNQKMdlRDLB8LL2CCrdAeG.G/I6u.	2023-05-05 09:30:00
666e4567-e89b-12d3-a456-426614174005	daniel	daniel_d	$2a$06$1kZBbaDSdUqlBt0AmcgMeuNtT4lOxXv8djTRqXmvNxVN3i/oqg5gW	2023-06-12 14:00:00
777e4567-e89b-12d3-a456-426614174006	eve	eve_king	$2a$06$iK51wS7ipeiYfXkBwHq8yOrf893qFxp84HsMJ1rN4t5/9zvMlmMau	2023-07-07 16:45:00
888e4567-e89b-12d3-a456-426614174007	frank	frank_f	$2a$06$aH2QUb26xghOjaqja5FJ9.Jp7Are5.SZHxOv6N4PXGyQc1z9WxoEW	2023-08-03 13:30:00
999e4567-e89b-12d3-a456-426614174008	george	george_g	$2a$06$c/uXemQzxF4YlSAyTG0RceUH7i923hdun1UuOMyHWyoILBxluPz4i	2023-09-10 11:15:00
111e4567-e89b-12d3-a456-426614174abc	hannah	hannah_h	$2a$06$cqbR.qAukYPXwUa8XmfqlOkPCf0z.XjtR62Yh4iBMAwpR.x.ddIGm	2023-10-01 10:00:00
\.


--
-- Name: belong belong_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.belong
    ADD CONSTRAINT belong_pkey PRIMARY KEY (product_uuid, order_number);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_number);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_uuid);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_uuid);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: belong belong_order_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.belong
    ADD CONSTRAINT belong_order_number_fkey FOREIGN KEY (order_number) REFERENCES public.orders(order_number);


--
-- Name: belong belong_product_uuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.belong
    ADD CONSTRAINT belong_product_uuid_fkey FOREIGN KEY (product_uuid) REFERENCES public.products(product_uuid);


--
-- Name: orders orders_user_uuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_uuid_fkey FOREIGN KEY (user_uuid) REFERENCES public.users(user_uuid);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT USAGE ON SCHEMA public TO aubondeal_user;


--
-- Name: TABLE belong; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.belong TO aubondeal_user;


--
-- Name: TABLE orders; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.orders TO aubondeal_user;


--
-- Name: TABLE products; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.products TO aubondeal_user;


--
-- Name: TABLE users; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.users TO aubondeal_user;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO aubondeal_user;


--
-- PostgreSQL database dump complete
--

