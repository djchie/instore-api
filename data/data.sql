--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: inventory; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE inventory (
    id uuid NOT NULL,
    stock_count integer DEFAULT 0,
    price double precision DEFAULT 0,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    product_id uuid NOT NULL,
    store_id uuid NOT NULL
);


ALTER TABLE inventory OWNER TO "user";

--
-- Name: product; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE product (
    id uuid NOT NULL,
    name character varying(255),
    image_url character varying(255),
    description character varying(255),
    brand character varying(255),
    category character varying(255),
    type character varying(255),
    market_price double precision,
    size character varying(255),
    color character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE product OWNER TO "user";

--
-- Name: store; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE store (
    id uuid NOT NULL,
    name character varying(255),
    street_address character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    zip_code character varying(255),
    email character varying(255),
    phone_number character varying(255),
    category character varying(255),
    longitude double precision,
    latitude double precision,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE store OWNER TO "user";

--
-- Name: users; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE users (
    id integer NOT NULL,
    username character varying(255),
    password character varying(255) NOT NULL
);


ALTER TABLE users OWNER TO "user";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO "user";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: user
--

COPY inventory (id, stock_count, price, created_at, updated_at, product_id, store_id) FROM stdin;
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: user
--

COPY product (id, name, image_url, description, brand, category, type, market_price, size, color, created_at, updated_at) FROM stdin;
10bbcd27-b736-4ae4-a73b-b190ff1d1e14	Nike Men's LunarEclipse+ 3	http://placehold.it/350x150	This is a Nike Men's LunarEclipse+ 3.	Nike	Athletic & Outdoor	Shoes	\N	10	LME	2017-01-11 10:11:16.45+00	2017-01-11 10:11:16.45+00
7e4d2e5b-2768-40cf-bf9a-b833b90c3380	Nike Men's LunarEclipse+ 3	http://placehold.it/350x150	This is a Nike Men's LunarEclipse+ 3.	Nike	Athletic & Outdoor	Shoes	\N	11.5	LME	2017-01-11 10:11:16.45+00	2017-01-11 10:11:16.45+00
5e43c338-c853-4a15-934d-7cedfe90de04	Nike Men's LunarEclipse+ 3	http://placehold.it/350x150	This is a Nike Men's LunarEclipse+ 3.	Nike	Athletic & Outdoor	Shoes	\N	11	LME	2017-01-11 10:11:16.451+00	2017-01-11 10:11:16.451+00
77adb65d-cd3f-42d4-a576-387b10636bdc	Nike - Rabona []	http://placehold.it/350x150	This is a Nike - Rabona [].	Nike	Fashion Sneakers	Shoes	\N	8 D(M) US	deep royal blue/black/gum med brown/white	2017-01-11 10:11:16.451+00	2017-01-11 10:11:16.451+00
9802804e-6992-4ad9-b027-5d5b3d20bbd4	Nike LunarMX+	http://placehold.it/350x150	This is a Nike LunarMX+.	Nike	Running	Shoes	\N	\N	Black / Black-Dark Grey-White	2017-01-11 10:11:16.451+00	2017-01-11 10:11:16.451+00
ffd63cfa-e654-4e56-82a9-e5b007604818	Nike Men's Structure+ 16	http://placehold.it/350x150	This is a Nike Men's Structure+ 16.	Nike	Athletic & Outdoor	Shoes	\N	7	BLK/GRN	2017-01-11 10:11:16.451+00	2017-01-11 10:11:16.451+00
6b606835-bed2-491f-86e0-85d216af9ba8	Nike Men's Structure+ 16	http://placehold.it/350x150	This is a Nike Men's Structure+ 16.	Nike	Athletic & Outdoor	Shoes	\N	8.5	BLK/GRN	2017-01-11 10:11:16.452+00	2017-01-11 10:11:16.452+00
9ddcbdda-4b54-4c48-a493-f7409a27472f	Nike Men's Structure+ 16	http://placehold.it/350x150	This is a Nike Men's Structure+ 16.	Nike	Athletic & Outdoor	Shoes	\N	10	BLK/GRN	2017-01-11 10:11:16.454+00	2017-01-11 10:11:16.454+00
9bae53a8-9f0b-4fdb-99ba-1c8575f6a80f	Nike Men's Structure+ 16	http://placehold.it/350x150	This is a Nike Men's Structure+ 16.	Nike	Athletic & Outdoor	Shoes	\N	11.5	BLK/GRN	2017-01-11 10:11:16.454+00	2017-01-11 10:11:16.454+00
6c1717a2-49ce-4a9f-bd27-cc868a18f4a7	Nike Men's Structure+ 16	http://placehold.it/350x150	This is a Nike Men's Structure+ 16.	Nike	Athletic & Outdoor	Shoes	\N	9	BLK/GRN	2017-01-11 10:11:16.455+00	2017-01-11 10:11:16.455+00
1c55314d-480a-4a78-91dc-e39c198a36d2	Nike Legendary Tights - Women's	http://placehold.it/350x150	This is a Nike Legendary Tights - Women's.	Nike	Clothing	Shoes	\N	XL	Multi	2017-01-11 10:11:16.456+00	2017-01-11 10:11:16.456+00
f2cd7d66-fb47-4720-90b5-db596aaa00bb	Nike NSW T-Shirt []	http://placehold.it/350x150	This is a Nike NSW T-Shirt [].	Nike	Active Shirts & Tees	Shoes	\N	Medium	Grey	2017-01-11 10:11:16.456+00	2017-01-11 10:11:16.456+00
0bbe4ddc-03a3-4112-a5a8-a33b4c9b682e	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Active	Shoes	\N	L	Court Purple/White/Black	2017-01-11 10:11:16.456+00	2017-01-11 10:11:16.456+00
b389670d-961f-4291-8005-0da629d82593	Nike Men's Structure+ 16	http://placehold.it/350x150	This is a Nike Men's Structure+ 16.	Nike	Athletic & Outdoor	Shoes	\N	9.5	BLK/GRN	2017-01-11 10:11:16.456+00	2017-01-11 10:11:16.456+00
d115cefb-7d48-483e-b3b2-3a59025b15ec	Nike NSW T-Shirt []	http://placehold.it/350x150	This is a Nike NSW T-Shirt [].	Nike	Active Shirts & Tees	Shoes	\N	Small	Grey	2017-01-11 10:11:16.457+00	2017-01-11 10:11:16.457+00
7d4b04a1-4461-4e47-acfa-47dca845f97c	Nike FormFlux Tote Bag	http://placehold.it/350x150	This is a Nike FormFlux Tote Bag.	Nike	Women	Shoes	\N	\N	Black	2017-01-11 10:11:16.457+00	2017-01-11 10:11:16.457+00
ebcbd52a-eac5-4c73-b156-a1942164bf26	Nike Legendary Tights - Women's	http://placehold.it/350x150	This is a Nike Legendary Tights - Women's.	Nike	Clothing	Shoes	\N	XL	Multi	2017-01-11 10:11:16.457+00	2017-01-11 10:11:16.457+00
8ed86004-da97-488c-9328-8a73e9840dbd	Nike Women's Structure+ 16	http://placehold.it/350x150	This is a Nike Women's Structure+ 16.	Nike	Running	Shoes	\N	7	BLU/GRN	2017-01-11 10:11:16.457+00	2017-01-11 10:11:16.457+00
0000232d-f8ae-4518-8ed6-5cf86865b442	Nike Women's Structure+ 16	http://placehold.it/350x150	This is a Nike Women's Structure+ 16.	Nike	Running	Shoes	\N	5	BLU/GRN	2017-01-11 10:11:16.457+00	2017-01-11 10:11:16.457+00
f628a3f4-021d-4e88-b095-24d77849758a	Nike Women's Structure+ 16	http://placehold.it/350x150	This is a Nike Women's Structure+ 16.	Nike	Running	Shoes	\N	8	BLU/GRN	2017-01-11 10:11:16.457+00	2017-01-11 10:11:16.457+00
a9ca4b4c-21ce-419a-82d7-02d839ce9e5a	NIKE Juvenate Sneakers	http://placehold.it/350x150	This is a NIKE Juvenate Sneakers.	NIKE	Women	Shoes	\N	US 10,5	\N	2017-01-11 10:11:16.457+00	2017-01-11 10:11:16.457+00
86e09b7b-d55c-46f7-8983-2c85f1adc6dc	NIKE Juvenate Sneakers	http://placehold.it/350x150	This is a NIKE Juvenate Sneakers.	NIKE	Women	Shoes	\N	US 8	\N	2017-01-11 10:11:16.458+00	2017-01-11 10:11:16.458+00
481ab46f-f806-4804-b2c9-94cc520d9c71	NIKE Juvenate Sneakers	http://placehold.it/350x150	This is a NIKE Juvenate Sneakers.	NIKE	Women	Shoes	\N	US 9	\N	2017-01-11 10:11:16.457+00	2017-01-11 10:11:16.457+00
e358feae-6190-4f5c-aea8-f45bdba2d898	NIKE Juvenate Sneakers	http://placehold.it/350x150	This is a NIKE Juvenate Sneakers.	NIKE	Women	Shoes	\N	US 7	\N	2017-01-11 10:11:16.458+00	2017-01-11 10:11:16.458+00
df46eefe-386a-4db1-beff-44c55340b664	NIKE Leather/Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Leather/Mesh Sneakers.	NIKE	Men	Shoes	\N	US 9	\N	2017-01-11 10:11:16.458+00	2017-01-11 10:11:16.458+00
26bb0aeb-7c2c-4e8f-b50b-e4c9068c3c6f	NIKE Leather/Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Leather/Mesh Sneakers.	NIKE	Men	Shoes	\N	US 8,5	\N	2017-01-11 10:11:16.458+00	2017-01-11 10:11:16.458+00
e1efd11e-94af-4019-a0d8-d87409fd0f09	NIKE Cortez Sneakers	http://placehold.it/350x150	This is a NIKE Cortez Sneakers.	NIKE	Women	Shoes	\N	US 10	\N	2017-01-11 10:11:16.458+00	2017-01-11 10:11:16.458+00
5a1ff4f2-df65-453d-b73c-b62b7e586cf9	NIKE Cortez Sneakers	http://placehold.it/350x150	This is a NIKE Cortez Sneakers.	NIKE	Women	Shoes	\N	US 9,5	\N	2017-01-11 10:11:16.459+00	2017-01-11 10:11:16.459+00
ce8550d2-55f3-4861-9f95-dde45710227c	NIKE Cortez Sneakers	http://placehold.it/350x150	This is a NIKE Cortez Sneakers.	NIKE	Women	Shoes	\N	US 7	\N	2017-01-11 10:11:16.459+00	2017-01-11 10:11:16.459+00
f30f9d9d-130c-4b6e-af57-410a1486dc06	NIKE Juvenate Sneakers	http://placehold.it/350x150	This is a NIKE Juvenate Sneakers.	NIKE	Women	Shoes	\N	US 8,5	\N	2017-01-11 10:11:16.46+00	2017-01-11 10:11:16.46+00
210ef7ea-9092-4ac5-85a5-d4b2b0b0dc2a	Nike LunarEclipse+ 3 - Men's	http://placehold.it/350x150	This is a Nike LunarEclipse+ 3 - Men's.	Nike	Athletic & Outdoor	Shoes	\N	\N	\N	2017-01-11 10:11:16.46+00	2017-01-11 10:11:16.46+00
981bbeb5-e579-4090-8d67-89e2af0c5586	Nike Tailwind 12 - Men's	http://placehold.it/350x150	This is a Nike Tailwind 12 - Men's.	Nike	Sporting Equipment	Shoes	\N	\N	Metallic Pewter	2017-01-11 10:11:16.46+00	2017-01-11 10:11:16.46+00
37e79c50-7577-4163-9519-610db7eb9386	NIKE Leather/Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Leather/Mesh Sneakers.	NIKE	Men	Shoes	\N	US 11	\N	2017-01-11 10:11:16.46+00	2017-01-11 10:11:16.46+00
ab8cc5ae-93fe-4103-938d-253a3a49c609	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Sporting Equipment	Shoes	\N	XX-Large	White	2017-01-11 10:11:16.46+00	2017-01-11 10:11:16.46+00
9fd696ea-e740-4d07-8721-81ec20c8016a	Nike Bonded Sportswear Dress	http://placehold.it/350x150	This is a Nike Bonded Sportswear Dress.	Nike	Women	Shoes	\N	M	Game Royal	2017-01-11 10:11:16.461+00	2017-01-11 10:11:16.461+00
1d43c0c3-e657-4128-a06c-6dc2a679560b	Nike Bonded Sportswear Dress	http://placehold.it/350x150	This is a Nike Bonded Sportswear Dress.	Nike	Women	Shoes	\N	XL	Game Royal	2017-01-11 10:11:16.461+00	2017-01-11 10:11:16.461+00
eb5a772e-ccfd-4fb3-8a9f-5842df598660	NIKE Leather/Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Leather/Mesh Sneakers.	NIKE	Men	Shoes	\N	US 11,5	\N	2017-01-11 10:11:16.462+00	2017-01-11 10:11:16.462+00
be15a2df-7462-4171-a110-9663925d2517	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Sporting Equipment	Shoes	\N	X-Large	White	2017-01-11 10:11:16.462+00	2017-01-11 10:11:16.462+00
1d5b02f8-793b-450e-bc9e-14af8fa27dc4	NIKE Leather/Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Leather/Mesh Sneakers.	NIKE	Men	Shoes	\N	US 12	\N	2017-01-11 10:11:16.462+00	2017-01-11 10:11:16.462+00
2c61cbcf-0a31-48bb-a2e8-6cdc8d4a157b	Nike + SportWatch GPS	http://placehold.it/350x150	This is a Nike + SportWatch GPS.	Nike	Electronics	Shoes	\N	\N	Blue	2017-01-11 10:11:16.462+00	2017-01-11 10:11:16.462+00
b97a3f02-ad78-4e0c-991c-ee76a6c02509	Women's Nike International Jacket	http://placehold.it/350x150	This is a Women's Nike International Jacket.	NIKE	Clothing & Accessories	Shoes	\N	XS	White	2017-01-11 10:11:16.462+00	2017-01-11 10:11:16.462+00
dae7995c-3cda-4179-94fd-5362315a49a4	Women's Nike International Jacket	http://placehold.it/350x150	This is a Women's Nike International Jacket.	NIKE	Clothing & Accessories	Shoes	\N	XL	White	2017-01-11 10:11:16.462+00	2017-01-11 10:11:16.462+00
022a793f-d805-49c8-a4c7-6f42e7a2c718	Women's Nike International Jacket	http://placehold.it/350x150	This is a Women's Nike International Jacket.	NIKE	Clothing & Accessories	Shoes	\N	S	White	2017-01-11 10:11:16.463+00	2017-01-11 10:11:16.463+00
c142e370-9b4d-47ab-899f-6492e9502700	NIKE Juvenate Sneakers	http://placehold.it/350x150	This is a NIKE Juvenate Sneakers.	NIKE	Women	Shoes	\N	US 10	\N	2017-01-11 10:11:16.464+00	2017-01-11 10:11:16.464+00
45dc37f0-261f-4af1-860b-e58e60ff97f4	NIKE Juvenate Sneakers	http://placehold.it/350x150	This is a NIKE Juvenate Sneakers.	NIKE	Women	Shoes	\N	US 8	\N	2017-01-11 10:11:16.465+00	2017-01-11 10:11:16.465+00
0e335743-bae0-4134-b26f-b9390be28034	NIKE Cortez Sneakers	http://placehold.it/350x150	This is a NIKE Cortez Sneakers.	NIKE	Women	Shoes	\N	US 9,5	\N	2017-01-11 10:11:16.467+00	2017-01-11 10:11:16.467+00
9b607777-6663-45a7-a00d-5160d6f2aa24	NIKE -High-tops	http://placehold.it/350x150	This is a NIKE -High-tops.	NIKE	Women	Shoes	\N	8	Ocher	2017-01-11 10:11:16.468+00	2017-01-11 10:11:16.468+00
23411ab5-4232-4185-8714-194a4b32f70f	Nike Gift Card, $150	http://placehold.it/350x150	This is a Nike Gift Card, $150.	Nike	Gifts	Shoes	\N	\N	\N	2017-01-11 10:11:16.472+00	2017-01-11 10:11:16.472+00
cb842e73-bff8-467c-aeec-02f7f893b789	Nike Legendary Tights - Women's	http://placehold.it/350x150	This is a Nike Legendary Tights - Women's.	Nike	Clothing	Shoes	\N	XL	White/Black	2017-01-11 10:11:16.477+00	2017-01-11 10:11:16.477+00
1f61a699-fbac-4e70-9dab-6092fd67f07b	Nike Legendary Tights - Women's	http://placehold.it/350x150	This is a Nike Legendary Tights - Women's.	Nike	Clothing	Shoes	\N	M	White/Black	2017-01-11 10:11:16.479+00	2017-01-11 10:11:16.479+00
dd649e89-6112-4690-9d60-e97feaa21015	Nike Tailwind 12 - Men's	http://placehold.it/350x150	This is a Nike Tailwind 12 - Men's.	Nike	Sporting Equipment	Shoes	\N	\N	Black/Volt	2017-01-11 10:11:16.48+00	2017-01-11 10:11:16.48+00
1130b8dd-3cdd-4240-a583-c9029c0b4982	Nike+ Fuelband ICE []	http://placehold.it/350x150	This is a Nike+ Fuelband ICE [].	Nike	Electronics & Gadgets	Shoes	\N	Small	\N	2017-01-11 10:11:16.481+00	2017-01-11 10:11:16.481+00
6ad3d1c7-5ad8-4799-be10-062baa78c963	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Baseball & Softball	Shoes	\N	11 M US	Black/White	2017-01-11 10:11:16.481+00	2017-01-11 10:11:16.481+00
f18578f7-2365-4693-8568-f68cd15eb753	Nike International Fleece Top	http://placehold.it/350x150	This is a Nike International Fleece Top.	Nike	Women	Shoes	\N	S	White/Black	2017-01-11 10:11:16.482+00	2017-01-11 10:11:16.482+00
1ffc7ccd-8b71-4e5e-a8be-d68964af6370	NIKE Cotton Blend Sweatpants	http://placehold.it/350x150	This is a NIKE Cotton Blend Sweatpants.	NIKE	Women	Shoes	\N	L	\N	2017-01-11 10:11:16.483+00	2017-01-11 10:11:16.483+00
0db9b170-fd4e-47d0-9e74-f805871bd299	NIKE Cotton Blend Sweatpants	http://placehold.it/350x150	This is a NIKE Cotton Blend Sweatpants.	NIKE	Women	Shoes	\N	S	\N	2017-01-11 10:11:16.483+00	2017-01-11 10:11:16.483+00
e03a76b9-59c8-4ef3-bb7a-dd09ade3c760	NIKE -Low-tops	http://placehold.it/350x150	This is a NIKE -Low-tops.	NIKE	Men	Shoes	\N	9.5	Lead	2017-01-11 10:11:16.484+00	2017-01-11 10:11:16.484+00
0173141c-423c-4128-8827-c9b15c850e32	Nike Backpack	http://placehold.it/350x150	This is a Nike Backpack.	Nike	Footwear	Shoes	\N	\N	GREY	2017-01-11 10:11:16.484+00	2017-01-11 10:11:16.484+00
10b6f5e8-30c3-4ef3-9792-80315a9b38d7	NIKE Suede and Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Suede and Mesh Sneakers.	NIKE	Women	Shoes	\N	US 7	\N	2017-01-11 10:11:16.485+00	2017-01-11 10:11:16.485+00
037c39a3-b81f-4aa9-9e45-61c53143d2b0	NIKE -Low-tops	http://placehold.it/350x150	This is a NIKE -Low-tops.	NIKE	Men	Shoes	\N	10	Black	2017-01-11 10:11:16.486+00	2017-01-11 10:11:16.486+00
f55a1003-43a8-40e2-a886-4a26dc4e82da	Nike Juvenate Sneaker	http://placehold.it/350x150	This is a Nike Juvenate Sneaker.	Nike	Boys	Shoes	\N	9	TAUPE	2017-01-11 10:11:16.489+00	2017-01-11 10:11:16.489+00
87465321-5da2-4d89-8aa2-fdfd555f839f	Men's Nike International Pants	http://placehold.it/350x150	This is a Men's Nike International Pants.	NIKE	Clothing & Accessories	Shoes	\N	M	Black	2017-01-11 10:11:16.49+00	2017-01-11 10:11:16.49+00
5ce40e8a-a8a7-49d0-b9be-f858c515db74	Nike Shutter Jammer Swimsuit	http://placehold.it/350x150	This is a Nike Shutter Jammer Swimsuit.	Nike	Boating & Water Sports	Shoes	\N	36	Bright Mango	2017-01-11 10:11:16.49+00	2017-01-11 10:11:16.49+00
db612e47-ab81-442e-824a-3dfa53650f1a	Nike Bloom Jacket - Women's	http://placehold.it/350x150	This is a Nike Bloom Jacket - Women's.	Nike	Active	Shoes	\N	S	Chambray	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
c2e39385-cce1-4705-9355-910a56b51315	Nike Jersey Hoodie - Women's	http://placehold.it/350x150	This is a Nike Jersey Hoodie - Women's.	Nike	Active	Shoes	\N	S	Black/White	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
ebaba355-1b20-4fa0-a42e-24e41393d843	Nike Manoa Toddler Boots	http://placehold.it/350x150	This is a Nike Manoa Toddler Boots.	NIKE	Athletic & Outdoor	Shoes	\N	5.0	Wheat	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
50ca496d-a243-4b67-85e4-1dfd742ac3e8	Nike Slant - Boys' Preschool	http://placehold.it/350x150	This is a Nike Slant - Boys' Preschool.	Nike	Footwear	Shoes	\N	01.0	Black/White	2017-01-11 10:11:16.492+00	2017-01-11 10:11:16.492+00
8ab0816f-4399-4662-b6c9-2fe9dbfc2c3f	Nike Auralux Tote Bag	http://placehold.it/350x150	This is a Nike Auralux Tote Bag.	Nike	Luggage & Bags	Shoes	\N	\N	BLACK	2017-01-11 10:11:16.492+00	2017-01-11 10:11:16.492+00
70fa51a8-4fb8-4306-98a7-fe64c5065260	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	M	White	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
70902d74-edbe-4854-a781-39f2d7a03b42	Nike® Mesh Block Tee	http://placehold.it/350x150	This is a Nike® Mesh Block Tee.	Nike	Clothing & Accessories	Shoes	\N	Small	Black	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
27001185-f424-43e5-b3d9-0c0814203668	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	Small	Black	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
c5115bb4-b2d4-4519-bbc6-433ee3486126	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Clothing	Shoes	\N	LRG 	BLACK	2017-01-11 10:11:16.496+00	2017-01-11 10:11:16.496+00
2e326428-19bd-4b2e-b8b0-a6803fe0477a	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Hyper Cobalt/Hyper Cobalt	2017-01-11 10:11:16.496+00	2017-01-11 10:11:16.496+00
3c0715e2-4fe8-4f8c-90e1-3ea627b26fe1	Nike Cash Shorts - Men's	http://placehold.it/350x150	This is a Nike Cash Shorts - Men's.	Nike	Clothing	Shoes	\N	L	Anthracite/Black	2017-01-11 10:11:16.497+00	2017-01-11 10:11:16.497+00
970621e9-7d2b-4d72-bcfe-a3c09b4fcc58	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	L	Black	2017-01-11 10:11:16.498+00	2017-01-11 10:11:16.498+00
da308f27-393b-4c05-8ecf-f36ecb36a03b	Nike Featherlight Cap	http://placehold.it/350x150	This is a Nike Featherlight Cap.	Nike	Men	Shoes	\N	\N	Black/Black/Black/White	2017-01-11 10:11:16.498+00	2017-01-11 10:11:16.498+00
85f6a47d-ab5c-428c-98d4-171dc5590841	Nike® KO Thermal Gloves	http://placehold.it/350x150	This is a Nike® KO Thermal Gloves.	Nike	Sporting Equipment	Shoes	\N	Medium	Black Volt	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
f5822bdc-d445-4a8c-9a84-b69ee158209a	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XS	Black	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
78645525-f032-4af0-bffe-69c526c267a1	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	Xx-large	Black	2017-01-11 10:11:16.5+00	2017-01-11 10:11:16.5+00
81b162f1-dadb-4ea7-bf3a-182b36ed32f9	Nike® AOP Plays Tee	http://placehold.it/350x150	This is a Nike® AOP Plays Tee.	Nike	Clothing & Accessories	Shoes	\N	Small	Dgh Black	2017-01-11 10:11:16.5+00	2017-01-11 10:11:16.5+00
629ed28d-6f66-4dbe-98a6-787502239c4a	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	X-small	Blackltcrms	2017-01-11 10:11:16.501+00	2017-01-11 10:11:16.501+00
27f9a783-d357-47f8-be23-484e934b0e7b	Nike Protegga Shield	http://placehold.it/350x150	This is a Nike Protegga Shield.	Nike	Team Sports	Shoes	\N	LG	Black/Red	2017-01-11 10:11:16.501+00	2017-01-11 10:11:16.501+00
ec6dc10b-ee8a-4d9d-ae49-dea61e453827	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	M	Volt	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
2e537876-dd76-4a25-bb74-3e5b063dd148	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	M	White	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
642ae5b4-dfce-42ec-9fd4-1d9f3723f57f	Women's Nike International Jacket	http://placehold.it/350x150	This is a Women's Nike International Jacket.	NIKE	Clothing & Accessories	Shoes	\N	M	White	2017-01-11 10:11:16.463+00	2017-01-11 10:11:16.463+00
e6c6cc7b-5dea-4716-a2c2-9389b09aad47	NIKE -Low-tops	http://placehold.it/350x150	This is a NIKE -Low-tops.	NIKE	Women	Shoes	\N	10	Black	2017-01-11 10:11:16.464+00	2017-01-11 10:11:16.464+00
2a5c86d5-933f-4350-8a55-3b79c536c9cd	NIKE Juvenate Sneakers	http://placehold.it/350x150	This is a NIKE Juvenate Sneakers.	NIKE	Women	Shoes	\N	US 7	\N	2017-01-11 10:11:16.465+00	2017-01-11 10:11:16.465+00
9a02ccfb-65bc-4ed4-aee5-469e193f1775	NIKE Cortez Sneakers	http://placehold.it/350x150	This is a NIKE Cortez Sneakers.	NIKE	Women	Shoes	\N	US 7	\N	2017-01-11 10:11:16.468+00	2017-01-11 10:11:16.468+00
dbd91129-baa4-4b4b-9b11-9a674b592459	Men's Nike International Hoodie	http://placehold.it/350x150	This is a Men's Nike International Hoodie.	NIKE	Clothing & Accessories	Shoes	\N	L	Midnight Turq	2017-01-11 10:11:16.47+00	2017-01-11 10:11:16.47+00
2f701501-100d-400a-94f7-4a6e5f4dbdde	Nike Legendary Tights - Women's	http://placehold.it/350x150	This is a Nike Legendary Tights - Women's.	Nike	Clothing	Shoes	\N	S	White/Black	2017-01-11 10:11:16.472+00	2017-01-11 10:11:16.472+00
70c2c246-abbb-431b-bc50-2b42d3604487	NIKE Suede and Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Suede and Mesh Sneakers.	NIKE	Women	Shoes	\N	US 8,5	\N	2017-01-11 10:11:16.479+00	2017-01-11 10:11:16.479+00
6da7b0b1-2d84-40ea-abd6-f8b26f3ec576	NIKE Suede and Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Suede and Mesh Sneakers.	NIKE	Women	Shoes	\N	US 6,5	\N	2017-01-11 10:11:16.48+00	2017-01-11 10:11:16.48+00
64d19aaa-99bf-4225-bed9-8922fa996a42	Nike International Printed Windbreaker	http://placehold.it/350x150	This is a Nike International Printed Windbreaker.	Nike	Women	Shoes	\N	L	Black	2017-01-11 10:11:16.48+00	2017-01-11 10:11:16.48+00
72c418ab-3610-421c-b994-584eb188e8e2	NIKE Men's Windfly Jacket []	http://placehold.it/350x150	This is a NIKE Men's Windfly Jacket [].	Nike	Clothing	Shoes	\N	Large	Navy/White	2017-01-11 10:11:16.481+00	2017-01-11 10:11:16.481+00
dca64b40-7d73-47cc-8704-43aeef32fa9d	Nike Legendary Tights - Women's	http://placehold.it/350x150	This is a Nike Legendary Tights - Women's.	Nike	Clothing	Shoes	\N	XL	Black	2017-01-11 10:11:16.482+00	2017-01-11 10:11:16.482+00
d769c9a0-3624-4688-b70a-217e5e15f188	Nike International Fleece Top	http://placehold.it/350x150	This is a Nike International Fleece Top.	Nike	Women	Shoes	\N	XL	White/Black	2017-01-11 10:11:16.482+00	2017-01-11 10:11:16.482+00
e27815c5-8207-489a-922c-57fe9ed7d3b5	NIKE Men's Windfly Jacket []	http://placehold.it/350x150	This is a NIKE Men's Windfly Jacket [].	Nike	Clothing	Shoes	\N	Medium	Navy/White	2017-01-11 10:11:16.483+00	2017-01-11 10:11:16.483+00
ea1cab58-bb2f-4158-b21b-9014187fe884	NIKE Cotton Blend Sweatpants	http://placehold.it/350x150	This is a NIKE Cotton Blend Sweatpants.	NIKE	Women	Shoes	\N	L	\N	2017-01-11 10:11:16.483+00	2017-01-11 10:11:16.483+00
6c35690d-7994-4287-81a9-0ade43fcc0a6	Nike Nike Cruiser Matte Black	http://placehold.it/350x150	This is a Nike Nike Cruiser Matte Black.	Nike	Boys	Shoes	\N	\N	Matte Black	2017-01-11 10:11:16.484+00	2017-01-11 10:11:16.484+00
d065b744-fc69-459a-b3c7-d1df9f5dab11	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Baseball & Softball	Shoes	\N	9 M US	Black/White	2017-01-11 10:11:16.484+00	2017-01-11 10:11:16.484+00
517a3806-3226-4408-98fe-57f7efc223e9	Nike Inflict	http://placehold.it/350x150	This is a Nike Inflict.	Nike	Fashion Sneakers	Shoes	\N	7.5 D(M) US	Medium Grey/Black	2017-01-11 10:11:16.485+00	2017-01-11 10:11:16.485+00
4d71b87d-975a-4814-820f-9d2ef81da21f	NIKE Suede and Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Suede and Mesh Sneakers.	NIKE	Women	Shoes	\N	US 8	\N	2017-01-11 10:11:16.486+00	2017-01-11 10:11:16.486+00
4294c3ff-00c1-4860-8ee3-1cc7a92cce36	Nike Juvenate Sneaker	http://placehold.it/350x150	This is a Nike Juvenate Sneaker.	Nike	Boys	Shoes	\N	9.5	TAUPE	2017-01-11 10:11:16.489+00	2017-01-11 10:11:16.489+00
64515b2c-05d3-46e2-9321-933de1338915	Nike Legendary Tights - Women's	http://placehold.it/350x150	This is a Nike Legendary Tights - Women's.	Nike	Clothing	Shoes	\N	S	Black	2017-01-11 10:11:16.49+00	2017-01-11 10:11:16.49+00
be750081-818e-41b3-b4ba-4d6906ed0d48	Nike Gift Card	http://placehold.it/350x150	This is a Nike Gift Card.	Nike	Sporting Equipment	Shoes	\N	\N	\N	2017-01-11 10:11:16.49+00	2017-01-11 10:11:16.49+00
c0654f1a-ae1b-4bcb-81a0-eae018cf4c02	Nike MLB Hoodie - Men's	http://placehold.it/350x150	This is a Nike MLB Hoodie - Men's.	Nike	Team Sports	Shoes	\N	L	Royal	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
3710a463-a0c5-438a-aa45-b83dad5b1691	Nike Rivalry Pants - Men's	http://placehold.it/350x150	This is a Nike Rivalry Pants - Men's.	Nike	Clothing	Shoes	\N	3XL	Obsidian/Obsidian	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
592a82c8-95fd-4839-bfc0-56131736b06b	Nike KD Shorts - Men's	http://placehold.it/350x150	This is a Nike KD Shorts - Men's.	Nike	Clothing	Shoes	\N	M	Black/Black	2017-01-11 10:11:16.492+00	2017-01-11 10:11:16.492+00
9625a122-e8fa-483a-bbc6-e2610a4d5d67	Nike Men's Free 5.0+	http://placehold.it/350x150	This is a Nike Men's Free 5.0+.	Nike	Athletic & Outdoor	Shoes	\N	8	GRN/ORG	2017-01-11 10:11:16.492+00	2017-01-11 10:11:16.492+00
22fec456-0e42-49c0-b2fc-b8c0b7e83f97	Nike Mini Women's Sneakers	http://placehold.it/350x150	This is a Nike Mini Women's Sneakers.	nike	Women	Shoes	\N	7.5	White Black	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
1afbd2b7-c613-4a07-9623-0d51506f3b9f	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XS	Volt	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
6e50c6af-7626-4e4b-8726-e9d37d112ca1	Nike® AOP Plays Tee	http://placehold.it/350x150	This is a Nike® AOP Plays Tee.	Nike	Clothing & Accessories	Shoes	\N	Small	Black White	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
840a8ee4-43c9-411a-a836-8f5979285d29	Men's Nike Block Tee	http://placehold.it/350x150	This is a Men's Nike Block Tee.	nike	Boys	Shoes	\N	L	Black	2017-01-11 10:11:16.495+00	2017-01-11 10:11:16.495+00
aea211f2-240a-448b-b281-2da79a5dd07e	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Fuchsia Force/Fuchsia Force	2017-01-11 10:11:16.496+00	2017-01-11 10:11:16.496+00
6896903a-89cb-4fdf-b851-cbaee47f2dff	Nike Alumni Shorts - Men's	http://placehold.it/350x150	This is a Nike Alumni Shorts - Men's.	Nike	Clothing	Shoes	\N	XS	Black	2017-01-11 10:11:16.496+00	2017-01-11 10:11:16.496+00
cb986230-c222-4974-8e8a-3ecd78777e95	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	M	Black	2017-01-11 10:11:16.497+00	2017-01-11 10:11:16.497+00
fe3c79ed-65d1-4376-bdbb-9a7284972b34	Nike® Shadow Block Tee	http://placehold.it/350x150	This is a Nike® Shadow Block Tee.	Nike	Clothing & Accessories	Shoes	\N	Small	White Black	2017-01-11 10:11:16.498+00	2017-01-11 10:11:16.498+00
84ba0919-6243-466e-ac87-f68dda7b9e94	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	M	Violet Shock	2017-01-11 10:11:16.498+00	2017-01-11 10:11:16.498+00
d9a7b8b9-be1f-4255-ba30-3e70f798ce46	Nike® KO Thermal Gloves	http://placehold.it/350x150	This is a Nike® KO Thermal Gloves.	Nike	Sporting Equipment	Shoes	\N	Small	Black Volt	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
21bddd5b-1639-4eca-b2ef-a8e65ef49ae7	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XS	White	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
8468fc91-8bb6-42c2-8ed3-bd68f4a2a1ca	Nike® Mesh Block Tee	http://placehold.it/350x150	This is a Nike® Mesh Block Tee.	Nike	Clothing & Accessories	Shoes	\N	Large	Black	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
1963cff4-af73-4ad3-ab34-c2091526bf44	Nike® AOP Plays Tee	http://placehold.it/350x150	This is a Nike® AOP Plays Tee.	Nike	Clothing & Accessories	Shoes	\N	Large	Dgh Black	2017-01-11 10:11:16.5+00	2017-01-11 10:11:16.5+00
635084d6-26ee-4deb-85dc-86a7ddcaf84b	Nike® Victory Compression Bra	http://placehold.it/350x150	This is a Nike® Victory Compression Bra.	Nike	Girls	Shoes	\N	Large	White/black	2017-01-11 10:11:16.5+00	2017-01-11 10:11:16.5+00
7ba56d86-636b-4c1a-af8b-47f1207cacb0	Men's Nike Block Tee	http://placehold.it/350x150	This is a Men's Nike Block Tee.	nike	Boys	Shoes	\N	M	Black	2017-01-11 10:11:16.501+00	2017-01-11 10:11:16.501+00
f7645d85-3bcc-40be-8f50-9a20e4103454	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	M	Vivid Pink	2017-01-11 10:11:16.501+00	2017-01-11 10:11:16.501+00
5a413f25-3e6d-46e4-9322-e1ea51ee97e6	Women's Nike International Jacket	http://placehold.it/350x150	This is a Women's Nike International Jacket.	NIKE	Clothing & Accessories	Shoes	\N	L	White	2017-01-11 10:11:16.463+00	2017-01-11 10:11:16.463+00
40a9d5b8-7419-4751-a927-2643bbc3a9f5	NIKE Leather/Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Leather/Mesh Sneakers.	NIKE	Men	Shoes	\N	US 10,5	\N	2017-01-11 10:11:16.464+00	2017-01-11 10:11:16.464+00
06d8137a-891c-4120-a722-3953babdd393	NIKE Leather/Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Leather/Mesh Sneakers.	NIKE	Men	Shoes	\N	US 9	\N	2017-01-11 10:11:16.465+00	2017-01-11 10:11:16.465+00
f1d722be-5407-4e73-9c26-21f9aa33181f	NIKE Juvenate Sneakers	http://placehold.it/350x150	This is a NIKE Juvenate Sneakers.	NIKE	Women	Shoes	\N	US 8,5	\N	2017-01-11 10:11:16.468+00	2017-01-11 10:11:16.468+00
1b4bfa1b-69dc-46b1-af58-a9ab7a240e92	Men's Nike International Hoodie	http://placehold.it/350x150	This is a Men's Nike International Hoodie.	NIKE	Clothing & Accessories	Shoes	\N	M	Black	2017-01-11 10:11:16.471+00	2017-01-11 10:11:16.471+00
1e858d1b-8b81-48ab-9866-e7362eda9461	Nike Legendary Tights - Women's	http://placehold.it/350x150	This is a Nike Legendary Tights - Women's.	Nike	Clothing	Shoes	\N	M	White/Black	2017-01-11 10:11:16.473+00	2017-01-11 10:11:16.473+00
b694e886-6c39-4a25-b24a-fd11eee8ae2a	NIKE Suede and Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Suede and Mesh Sneakers.	NIKE	Women	Shoes	\N	US 9,5	\N	2017-01-11 10:11:16.479+00	2017-01-11 10:11:16.479+00
ff72c89e-6eed-4772-b99a-89c73af23a18	NIKE Suede and Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Suede and Mesh Sneakers.	NIKE	Women	Shoes	\N	US 9	\N	2017-01-11 10:11:16.48+00	2017-01-11 10:11:16.48+00
50cb43e9-153a-4881-aa9a-b6a469f68bdc	Nike International Printed Windbreaker	http://placehold.it/350x150	This is a Nike International Printed Windbreaker.	Nike	Women	Shoes	\N	XL	Black	2017-01-11 10:11:16.481+00	2017-01-11 10:11:16.481+00
e4d2aa88-75be-4e39-8a08-5ef3eb4864ae	Nike Tailwind 12 - Men's	http://placehold.it/350x150	This is a Nike Tailwind 12 - Men's.	Nike	Sporting Equipment	Shoes	\N	\N	Black/Volt	2017-01-11 10:11:16.481+00	2017-01-11 10:11:16.481+00
00866282-d077-4ca5-b0b1-4f5cd0f77cbd	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Baseball & Softball	Shoes	\N	10 M US	Black/White	2017-01-11 10:11:16.482+00	2017-01-11 10:11:16.482+00
9c703f42-7540-4243-84da-0ce28b4e7197	Nike Lunarspeed+ []	http://placehold.it/350x150	This is a Nike Lunarspeed+ [].	Nike	Running	Shoes	\N	6 B(M) US	Pink Force / White	2017-01-11 10:11:16.483+00	2017-01-11 10:11:16.483+00
5952bbc2-ae8f-47fd-93f3-d607cc57f8f5	Nike International Fleece Top	http://placehold.it/350x150	This is a Nike International Fleece Top.	Nike	Women	Shoes	\N	L	White/Black	2017-01-11 10:11:16.483+00	2017-01-11 10:11:16.483+00
bdb77869-7ae7-4669-b9d6-801241ab59cf	NIKE Cotton Blend Sweatpants	http://placehold.it/350x150	This is a NIKE Cotton Blend Sweatpants.	NIKE	Women	Shoes	\N	M	\N	2017-01-11 10:11:16.484+00	2017-01-11 10:11:16.484+00
d6a9b6cb-505e-47fe-b2b4-3bb145932189	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Baseball & Softball	Shoes	\N	9 M US	White/Black-Metallic Silver	2017-01-11 10:11:16.484+00	2017-01-11 10:11:16.484+00
8d029635-5bf2-49a4-9d33-1c047337f040	NIKE -Sandals	http://placehold.it/350x150	This is a NIKE -Sandals.	NIKE	Men	Shoes	\N	9	Black	2017-01-11 10:11:16.485+00	2017-01-11 10:11:16.485+00
f4172641-c321-499e-a29b-6bdeb8bfb6ac	NIKE Suede and Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Suede and Mesh Sneakers.	NIKE	Women	Shoes	\N	US 6	\N	2017-01-11 10:11:16.485+00	2017-01-11 10:11:16.485+00
0a521cb4-1af7-4dcc-881a-39763451c641	Nike Juvenate Sneaker	http://placehold.it/350x150	This is a Nike Juvenate Sneaker.	Nike	Boys	Shoes	\N	7	TAUPE	2017-01-11 10:11:16.486+00	2017-01-11 10:11:16.486+00
28635d81-1916-462b-907a-16267a307e31	Nike Juvenate - Women's	http://placehold.it/350x150	This is a Nike Juvenate - Women's.	Nike	Women	Shoes	\N	09.0	Black/White	2017-01-11 10:11:16.489+00	2017-01-11 10:11:16.489+00
53c273fc-09c4-4c83-afbd-28b5a275f079	Nike Shutter Jammer Swimsuit	http://placehold.it/350x150	This is a Nike Shutter Jammer Swimsuit.	Nike	Boating & Water Sports	Shoes	\N	38	Bright Mango	2017-01-11 10:11:16.49+00	2017-01-11 10:11:16.49+00
42cb3e20-3cee-4f29-abfa-48b4532459ac	NIKE Huarache Ultra Sneakers	http://placehold.it/350x150	This is a NIKE Huarache Ultra Sneakers.	NIKE	Women	Shoes	\N	US 9,5	\N	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
662a86bc-8102-4d28-9bd9-ee96c3a9a17f	Nike Jersey Hoodie - Women's	http://placehold.it/350x150	This is a Nike Jersey Hoodie - Women's.	Nike	Active	Shoes	\N	XS	Black/White	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
c50a1ed4-5fb6-4442-816c-aa17e8bc8741	Nike Manoa Toddler Boots	http://placehold.it/350x150	This is a Nike Manoa Toddler Boots.	NIKE	Athletic & Outdoor	Shoes	\N	4.0	Wheat	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
f02adb3d-a075-43aa-9126-dcbed5efde41	Nike Slant - Boys' Preschool	http://placehold.it/350x150	This is a Nike Slant - Boys' Preschool.	Nike	Footwear	Shoes	\N	13.0	Black/White	2017-01-11 10:11:16.492+00	2017-01-11 10:11:16.492+00
718436e1-a82e-4420-901f-74cc19ef8b33	Nike Auralux Tote Bag	http://placehold.it/350x150	This is a Nike Auralux Tote Bag.	Nike	Women	Shoes	\N	\N	Teal	2017-01-11 10:11:16.492+00	2017-01-11 10:11:16.492+00
3ba09c3a-75d6-4add-9bfb-fc347e77eaef	Nike Fastbreak Shorts - Men's	http://placehold.it/350x150	This is a Nike Fastbreak Shorts - Men's.	Nike	Men	Shoes	\N	M	White/Black	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
fad99f87-05a8-45ac-93c5-860efa2fc61d	Nike® AOP Plays Tee	http://placehold.it/350x150	This is a Nike® AOP Plays Tee.	Nike	Clothing & Accessories	Shoes	\N	Large	Black White	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
6218dfa9-7d70-40f6-bb84-7fa9571ace6b	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	Medium	Dgh	2017-01-11 10:11:16.494+00	2017-01-11 10:11:16.494+00
c0140dd9-a473-4d31-91fb-9a9c38e124e9	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Baseball & Softball	Shoes	\N	8.5 M US	Black/White-Metallic Silver	2017-01-11 10:11:16.496+00	2017-01-11 10:11:16.496+00
0904bd3d-ec30-4327-bb56-2247d9c7b7ad	Nike Protegga Shield	http://placehold.it/350x150	This is a Nike Protegga Shield.	Nike	Team Sports	Shoes	\N	LG	Black/Red	2017-01-11 10:11:16.496+00	2017-01-11 10:11:16.496+00
b4b19474-6ac5-43b9-a865-05fb4e0984d0	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	L	Black	2017-01-11 10:11:16.497+00	2017-01-11 10:11:16.497+00
600b6a26-84b9-42a8-a1e0-608041efffd2	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	L	White	2017-01-11 10:11:16.497+00	2017-01-11 10:11:16.497+00
829d1b9f-ff62-4cf9-a2fe-a12cab364afc	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XS	Volt	2017-01-11 10:11:16.498+00	2017-01-11 10:11:16.498+00
479bbd90-0186-4926-b1de-004e10af3425	Nike® KO Thermal Gloves	http://placehold.it/350x150	This is a Nike® KO Thermal Gloves.	Nike	Sporting Equipment	Shoes	\N	Large	Black Volt	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
781aa2d6-d464-4ef4-b810-8061468ed01f	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	L	White	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
f48bfa37-d1db-4ade-be24-b761544091bd	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XL	Volt	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
d28717c8-5063-4a6d-a474-955238007673	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	3x-large	Dgh	2017-01-11 10:11:16.5+00	2017-01-11 10:11:16.5+00
eddf4f7f-2262-4cbc-a69a-df72250220bf	Nike® Court Plays Tee	http://placehold.it/350x150	This is a Nike® Court Plays Tee.	Nike	Clothing & Accessories	Shoes	\N	Large	Deep Royal	2017-01-11 10:11:16.5+00	2017-01-11 10:11:16.5+00
c5281064-8aa5-4dfa-9be2-164fee7eefd2	Women's Nike Featherlight Visor	http://placehold.it/350x150	This is a Women's Nike Featherlight Visor.	nike	Women	Shoes	\N	S-M	Fuchsia	2017-01-11 10:11:16.501+00	2017-01-11 10:11:16.501+00
16b74ac4-b702-4edf-8f6f-a1653fec1b62	Nike Waist Wrap [width :]	http://placehold.it/350x150	This is a Nike Waist Wrap [width :].	Nike	Sporting Equipment	Shoes	\N	L	Black	2017-01-11 10:11:16.501+00	2017-01-11 10:11:16.501+00
68865c4a-4391-4624-a3c3-26ef4ae23ed2	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	S	Volt	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
193a166c-2d4d-4e1e-852c-4cd69e6e6678	Nike+ SportWatch GPS (with Sensor)	http://placehold.it/350x150	This is a Nike+ SportWatch GPS (with Sensor).	Nike	Electronics	Shoes	\N	\N	GRP/RED	2017-01-11 10:11:16.463+00	2017-01-11 10:11:16.463+00
78fe6673-683b-483a-910e-56bee761e6e9	NIKE Juvenate Sneakers	http://placehold.it/350x150	This is a NIKE Juvenate Sneakers.	NIKE	Women	Shoes	\N	US 10,5	\N	2017-01-11 10:11:16.465+00	2017-01-11 10:11:16.465+00
483adaa1-4911-47c4-972c-a41cbb7400a7	NIKE Leather/Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Leather/Mesh Sneakers.	NIKE	Men	Shoes	\N	US 8,5	\N	2017-01-11 10:11:16.465+00	2017-01-11 10:11:16.465+00
bfe701ee-0331-4d10-b470-5c3ea8efb6bf	Men's Nike International Hoodie	http://placehold.it/350x150	This is a Men's Nike International Hoodie.	NIKE	Clothing & Accessories	Shoes	\N	XL	Black	2017-01-11 10:11:16.468+00	2017-01-11 10:11:16.468+00
1ffe042d-f27d-4cbd-8a26-9bd80ff3e9f0	Men's Nike International Hoodie	http://placehold.it/350x150	This is a Men's Nike International Hoodie.	NIKE	Clothing & Accessories	Shoes	\N	XXL	Black	2017-01-11 10:11:16.469+00	2017-01-11 10:11:16.469+00
ea95f332-30fb-4395-b57a-6a40793934f6	Nike Legendary Tights - Women's	http://placehold.it/350x150	This is a Nike Legendary Tights - Women's.	Nike	Clothing	Shoes	\N	L	White/Black	2017-01-11 10:11:16.472+00	2017-01-11 10:11:16.472+00
ad9b42d4-3df0-491a-bffa-aa8b7cab7d71	Nike Legendary Tights - Women's	http://placehold.it/350x150	This is a Nike Legendary Tights - Women's.	Nike	Clothing	Shoes	\N	L	White/Black	2017-01-11 10:11:16.479+00	2017-01-11 10:11:16.479+00
5013ddf2-8f09-43ac-b83b-4d45571b8f43	NIKE Suede and Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Suede and Mesh Sneakers.	NIKE	Women	Shoes	\N	US 7,5	\N	2017-01-11 10:11:16.48+00	2017-01-11 10:11:16.48+00
52d4e2a6-3b86-4c70-b75b-25df7a04e02f	Nike International Printed Windbreaker	http://placehold.it/350x150	This is a Nike International Printed Windbreaker.	Nike	Women	Shoes	\N	M	White	2017-01-11 10:11:16.481+00	2017-01-11 10:11:16.481+00
eda949c3-9b09-48af-88ff-79c58f431b5c	Nike Sculpt Capris - Women's	http://placehold.it/350x150	This is a Nike Sculpt Capris - Women's.	Nike	Women	Shoes	\N	XS	Black	2017-01-11 10:11:16.481+00	2017-01-11 10:11:16.481+00
9a4a95cc-c65e-4aa2-be51-c869e8bbcc91	Nike International Fleece Top	http://placehold.it/350x150	This is a Nike International Fleece Top.	Nike	Women	Shoes	\N	M	White/Black	2017-01-11 10:11:16.482+00	2017-01-11 10:11:16.482+00
2293a0fc-316e-438f-a686-f3322143af36	Nike Legendary Tights - Women's	http://placehold.it/350x150	This is a Nike Legendary Tights - Women's.	Nike	Clothing	Shoes	\N	XS	Black	2017-01-11 10:11:16.482+00	2017-01-11 10:11:16.482+00
e25a4002-e77a-4e2a-afbf-5634f207db96	NIKE Men's Windfly Jacket []	http://placehold.it/350x150	This is a NIKE Men's Windfly Jacket [].	Nike	Clothing	Shoes	\N	Medium	Red/White	2017-01-11 10:11:16.483+00	2017-01-11 10:11:16.483+00
5fe5d26c-0c63-4523-866b-29163b20fd44	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Baseball & Softball	Shoes	\N	10.5 M US	Black/White	2017-01-11 10:11:16.484+00	2017-01-11 10:11:16.484+00
4e74fa60-3175-4467-b44c-e0afee64920c	Nike Women's Element Hoody	http://placehold.it/350x150	This is a Nike Women's Element Hoody.	Nike	Active	Shoes	\N	XS	Blue	2017-01-11 10:11:16.484+00	2017-01-11 10:11:16.484+00
eeae26b0-acf5-498c-aba5-c726131d9b64	Nike Backpack	http://placehold.it/350x150	This is a Nike Backpack.	Nike	Footwear	Shoes	\N	\N	RED	2017-01-11 10:11:16.484+00	2017-01-11 10:11:16.484+00
2dc55280-6cf6-4876-ab5f-70705eae9a2c	Nike Inflict	http://placehold.it/350x150	This is a Nike Inflict.	Nike	Fashion Sneakers	Shoes	\N	6.5 D(M) US	Medium Grey/Black	2017-01-11 10:11:16.485+00	2017-01-11 10:11:16.485+00
734abb86-f9a4-490f-8129-ec230f3a9974	NIKE Suede and Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Suede and Mesh Sneakers.	NIKE	Women	Shoes	\N	US 10,5	\N	2017-01-11 10:11:16.486+00	2017-01-11 10:11:16.486+00
e8f337fa-a727-4e56-ae5b-2695f69b0b05	Nike Juvenate - Women's	http://placehold.it/350x150	This is a Nike Juvenate - Women's.	Nike	Women	Shoes	\N	06.5	Black/White	2017-01-11 10:11:16.489+00	2017-01-11 10:11:16.489+00
4a95383e-76ef-46bb-8e7e-1240bc779f7f	NIKE Cotton Blend Sweatpants	http://placehold.it/350x150	This is a NIKE Cotton Blend Sweatpants.	NIKE	Women	Shoes	\N	XS	\N	2017-01-11 10:11:16.49+00	2017-01-11 10:11:16.49+00
4f7eea3a-50c4-494b-a2ac-58566b588839	NIKE Huarache Ultra Sneakers	http://placehold.it/350x150	This is a NIKE Huarache Ultra Sneakers.	NIKE	Women	Shoes	\N	US 9	\N	2017-01-11 10:11:16.49+00	2017-01-11 10:11:16.49+00
c6aef014-283f-41ee-a9e3-e1532676a67b	Nike MLB Hoodie - Men's	http://placehold.it/350x150	This is a Nike MLB Hoodie - Men's.	Nike	Team Sports	Shoes	\N	XXL	Royal	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
93a90d78-d77a-4aec-a500-ce429a5f7853	Nike Rivalry Jacket - Men's	http://placehold.it/350x150	This is a Nike Rivalry Jacket - Men's.	Nike	Clothing	Shoes	\N	M	Black/White	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
2baf45d2-e237-4209-b234-d2da6cc94c45	Nike MLB Hoodie - Men's	http://placehold.it/350x150	This is a Nike MLB Hoodie - Men's.	Nike	Team Sports	Shoes	\N	XL	Navy	2017-01-11 10:11:16.492+00	2017-01-11 10:11:16.492+00
cc677a7c-e003-484d-beb1-d36fb1df8e6f	Women's Nike Zoom W4	http://placehold.it/350x150	This is a Women's Nike Zoom W4.	Nike	Women	Shoes	\N	9.0	\N	2017-01-11 10:11:16.492+00	2017-01-11 10:11:16.492+00
65d92702-1b57-490b-8265-c9e7a720c404	Nike Men's Free 5.0+	http://placehold.it/350x150	This is a Nike Men's Free 5.0+.	Nike	Athletic & Outdoor	Shoes	\N	12	BLK/GRN	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
90392fc3-2c57-4a49-9ced-c91341b530a9	Nike Fastbreak Shorts - Men's	http://placehold.it/350x150	This is a Nike Fastbreak Shorts - Men's.	Nike	Clothing	Shoes	\N	XL	Black/Black	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
030b49e0-df41-4f25-b204-0937d73936c0	Nike® AOP Plays Tee	http://placehold.it/350x150	This is a Nike® AOP Plays Tee.	Nike	Clothing & Accessories	Shoes	\N	Small	White Red	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
aad629cb-1bf9-4e87-9515-becf04dcc100	Men's Nike Vertical Tee	http://placehold.it/350x150	This is a Men's Nike Vertical Tee.	nike	Men	Shoes	\N	XL	White	2017-01-11 10:11:16.495+00	2017-01-11 10:11:16.495+00
bbef8fc9-a0ca-4465-958e-3c9f195dde08	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	S	Black/Black	2017-01-11 10:11:16.496+00	2017-01-11 10:11:16.496+00
42b3db73-4909-40f6-a645-8ac26d920ae3	Nike Featherlight Cap	http://placehold.it/350x150	This is a Nike Featherlight Cap.	Nike	Men	Shoes	\N	\N	White/Black/White/Black	2017-01-11 10:11:16.496+00	2017-01-11 10:11:16.496+00
865822a3-34e7-4d59-93ea-10a40f82888d	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XL	White	2017-01-11 10:11:16.497+00	2017-01-11 10:11:16.497+00
68822025-3d9d-465b-901c-9c4bde453957	Nike® Mesh Block Tee	http://placehold.it/350x150	This is a Nike® Mesh Block Tee.	Nike	Clothing & Accessories	Shoes	\N	X-large	Black	2017-01-11 10:11:16.498+00	2017-01-11 10:11:16.498+00
9d22cd36-aae2-4d27-8b49-edbd9a0aa9b6	Nike® Trop Storm Cap	http://placehold.it/350x150	This is a Nike® Trop Storm Cap.	Nike	Team Sports	Shoes	\N	\N	Lucid Green Black	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
4dcd5fd0-9725-42b3-9d66-138493cc18dc	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XL	Sport Fuchsia	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
f8615a9f-37bb-4848-b337-9539ace97fd0	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XL	Black	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
a9cfc303-4806-41c9-8639-aa1d65bd275c	Nike® Mesh Block Tee	http://placehold.it/350x150	This is a Nike® Mesh Block Tee.	Nike	Clothing & Accessories	Shoes	\N	Xx-large	Black	2017-01-11 10:11:16.5+00	2017-01-11 10:11:16.5+00
2453fd52-944e-4996-951f-bc41fba5c0b4	Nike® Court Plays Tee	http://placehold.it/350x150	This is a Nike® Court Plays Tee.	Nike	Clothing & Accessories	Shoes	\N	Large	Black White	2017-01-11 10:11:16.5+00	2017-01-11 10:11:16.5+00
089c9696-9581-4fbd-8cee-ad787ca642f0	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	X-small	Ltphblwhite	2017-01-11 10:11:16.501+00	2017-01-11 10:11:16.501+00
668ed94f-6bd6-4505-a8d0-0bf68de9bb42	Nike® Beanie	http://placehold.it/350x150	This is a Nike® Beanie.	Nike	Clothing & Accessories	Shoes	\N	\N	Medium Ash	2017-01-11 10:11:16.501+00	2017-01-11 10:11:16.501+00
467ce4cf-25f3-4636-89b5-4c994bcb7f6c	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	L	Black	2017-01-11 10:11:16.501+00	2017-01-11 10:11:16.501+00
56ff47a1-0958-4ea4-be10-7b3ece1e1db7	Nike+ SportWatch GPS (with Sensor)	http://placehold.it/350x150	This is a Nike+ SportWatch GPS (with Sensor).	Nike	Electronics	Shoes	\N	\N	BLK/TEA	2017-01-11 10:11:16.463+00	2017-01-11 10:11:16.463+00
2c6231dc-0e95-4604-ae41-e368088b9281	NIKE Juvenate Sneakers	http://placehold.it/350x150	This is a NIKE Juvenate Sneakers.	NIKE	Women	Shoes	\N	US 9	\N	2017-01-11 10:11:16.465+00	2017-01-11 10:11:16.465+00
e1102496-9bf4-4ad1-9a3a-bfe150062f6a	NIKE Cortez Sneakers	http://placehold.it/350x150	This is a NIKE Cortez Sneakers.	NIKE	Women	Shoes	\N	US 10	\N	2017-01-11 10:11:16.467+00	2017-01-11 10:11:16.467+00
ada57ad7-4ce8-4cbe-9e11-9a4593adbe48	Men's Nike International Hoodie	http://placehold.it/350x150	This is a Men's Nike International Hoodie.	NIKE	Clothing & Accessories	Shoes	\N	M	Midnight Turq	2017-01-11 10:11:16.468+00	2017-01-11 10:11:16.468+00
b16287d8-16b4-447c-ad03-ac6a6a349d91	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Baseball & Softball	Shoes	\N	14 M US	Black/White	2017-01-11 10:11:16.472+00	2017-01-11 10:11:16.472+00
cf4a465c-cd58-4936-b1ca-48af2644351e	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Baseball & Softball	Shoes	\N	8.5 B(M) US Women / 7 D(M) US Men	Black/White-Metallic Silver	2017-01-11 10:11:16.479+00	2017-01-11 10:11:16.479+00
fb89252d-177d-4d69-b2a3-9829a00388fe	NIKE Suede and Mesh Sneakers	http://placehold.it/350x150	This is a NIKE Suede and Mesh Sneakers.	NIKE	Women	Shoes	\N	US 10	\N	2017-01-11 10:11:16.48+00	2017-01-11 10:11:16.48+00
a17fa6d9-49c2-4687-82f9-d75a9083385a	Nike Gift Card	http://placehold.it/350x150	This is a Nike Gift Card.	Nike	Sporting Equipment	Shoes	\N	\N	\N	2017-01-11 10:11:16.48+00	2017-01-11 10:11:16.48+00
fa01ccd2-728a-4bf7-995a-c6609f7e1350	Nike International Printed Windbreaker	http://placehold.it/350x150	This is a Nike International Printed Windbreaker.	Nike	Women	Shoes	\N	L	White	2017-01-11 10:11:16.481+00	2017-01-11 10:11:16.481+00
6f0cce96-4537-47ab-8ddf-b531fde44256	NIKE -High-tops	http://placehold.it/350x150	This is a NIKE -High-tops.	NIKE	Women	Shoes	\N	7.5	Garnet	2017-01-11 10:11:16.481+00	2017-01-11 10:11:16.481+00
6660da08-354c-48a2-be65-9531a63d7f45	Nike International Fleece Top	http://placehold.it/350x150	This is a Nike International Fleece Top.	Nike	Women	Shoes	\N	XS	White/Black	2017-01-11 10:11:16.482+00	2017-01-11 10:11:16.482+00
e3d09932-7c26-4045-b2f3-124a6e868503	NIKE Cotton Blend Sweatpants	http://placehold.it/350x150	This is a NIKE Cotton Blend Sweatpants.	NIKE	Women	Shoes	\N	M	\N	2017-01-11 10:11:16.483+00	2017-01-11 10:11:16.483+00
8f75f6fa-a0b9-4c50-8ff5-886c7ca38b88	Nike Mens Cortez Nylon	http://placehold.it/350x150	This is a Nike Mens Cortez Nylon.	NIKE	Men	Shoes	\N	13.0	Black/White	2017-01-11 10:11:16.483+00	2017-01-11 10:11:16.483+00
487ba137-5901-4412-893f-e131cd74fb2b	Nike Legendary Tights - Women's	http://placehold.it/350x150	This is a Nike Legendary Tights - Women's.	Nike	Clothing	Shoes	\N	M	Black	2017-01-11 10:11:16.484+00	2017-01-11 10:11:16.484+00
eb3ba5d7-9a53-4d52-8fc4-d0b741855056	Nike Women's Element Hoody	http://placehold.it/350x150	This is a Nike Women's Element Hoody.	Nike	Active	Shoes	\N	M	Blue	2017-01-11 10:11:16.484+00	2017-01-11 10:11:16.484+00
0b36d4a3-7b1a-4c80-801a-f385a305b826	Nike Huperfuse []	http://placehold.it/350x150	This is a Nike Huperfuse [].	Nike	Basketball	Shoes	\N	11 D(M) US	midnight navy/white	2017-01-11 10:11:16.485+00	2017-01-11 10:11:16.485+00
838945f6-94bf-411e-8d5f-ea8149005602	Nike Gift Card, $100	http://placehold.it/350x150	This is a Nike Gift Card, $100.	Nike	Gifts	Shoes	\N	\N	\N	2017-01-11 10:11:16.485+00	2017-01-11 10:11:16.485+00
afe4ee43-6109-4de2-8f75-8e46dcf23688	Nike Juvenate Sneaker	http://placehold.it/350x150	This is a Nike Juvenate Sneaker.	Nike	Boys	Shoes	\N	8	TAUPE	2017-01-11 10:11:16.488+00	2017-01-11 10:11:16.488+00
4bb8679e-80d5-4b72-8c24-f0d528d85ffc	NIKE Cotton Blend Sweatpants	http://placehold.it/350x150	This is a NIKE Cotton Blend Sweatpants.	NIKE	Women	Shoes	\N	S	\N	2017-01-11 10:11:16.489+00	2017-01-11 10:11:16.489+00
ce362391-6c18-4b6c-94c6-39027566002d	Nike Bonded Windrunner - Women's	http://placehold.it/350x150	This is a Nike Bonded Windrunner - Women's.	Nike	Women	Shoes	\N	S	Obsidian/Anthracite/Obsidian	2017-01-11 10:11:16.49+00	2017-01-11 10:11:16.49+00
3bb17117-9cd0-43a5-aa46-851115bbe250	Nike MLB Hoodie - Men's	http://placehold.it/350x150	This is a Nike MLB Hoodie - Men's.	Nike	Team Sports	Shoes	\N	XL	Royal	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
47a2e042-b2e0-4cbf-8f1d-fdfedbb38a86	Nike Rivalry Pants - Men's	http://placehold.it/350x150	This is a Nike Rivalry Pants - Men's.	Nike	Clothing	Shoes	\N	XXL	Obsidian/Obsidian	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
8dc05cc1-dcd7-4c38-af0b-c8fbf5aaf3c3	Nike Manoa Toddler Boots	http://placehold.it/350x150	This is a Nike Manoa Toddler Boots.	NIKE	Athletic & Outdoor	Shoes	\N	6.0	Wheat	2017-01-11 10:11:16.491+00	2017-01-11 10:11:16.491+00
5e61f365-2d38-49f3-b8ea-0251cf3754d0	Nike Men's Free 5.0+	http://placehold.it/350x150	This is a Nike Men's Free 5.0+.	Nike	Athletic & Outdoor	Shoes	\N	11.5	BLK/GRN	2017-01-11 10:11:16.492+00	2017-01-11 10:11:16.492+00
673e1429-7d66-4349-bfe2-5d638a1b158d	Nike Men's Free 5.0+	http://placehold.it/350x150	This is a Nike Men's Free 5.0+.	Nike	Athletic & Outdoor	Shoes	\N	7	Gray	2017-01-11 10:11:16.492+00	2017-01-11 10:11:16.492+00
7a73b26f-578a-4c07-b70b-6e14e66bdf10	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	M	Volt	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
fa0ef543-feab-42e0-8228-1d917fe336df	Nike® Mesh Block Tee	http://placehold.it/350x150	This is a Nike® Mesh Block Tee.	Nike	Clothing & Accessories	Shoes	\N	Medium	Black	2017-01-11 10:11:16.493+00	2017-01-11 10:11:16.493+00
8bf50744-8e69-43b1-bca0-18829d9f8ca3	Women's Nike Featherlight Visor	http://placehold.it/350x150	This is a Women's Nike Featherlight Visor.	nike	Women	Shoes	\N	\N	Cosmic Purple	2017-01-11 10:11:16.494+00	2017-01-11 10:11:16.494+00
1100588f-08fc-4198-8ca8-73fae26e45e3	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XS	Sport Fuchsia	2017-01-11 10:11:16.496+00	2017-01-11 10:11:16.496+00
57ff72ba-c8a1-4c74-88a8-b2f7e19e58a3	Nike Protegga Shield	http://placehold.it/350x150	This is a Nike Protegga Shield.	Nike	Team Sports	Shoes	\N	XS	Black/Red	2017-01-11 10:11:16.496+00	2017-01-11 10:11:16.496+00
daf1c4fe-e592-42fd-9074-12d3fd821058	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XS	White	2017-01-11 10:11:16.496+00	2017-01-11 10:11:16.496+00
d4e1f5a7-fa5e-4063-90bd-ff96990b4486	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	Medium	Black	2017-01-11 10:11:16.498+00	2017-01-11 10:11:16.498+00
b07a32a6-b8e8-4e06-9d91-8e155cb0daf7	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	S	Black	2017-01-11 10:11:16.498+00	2017-01-11 10:11:16.498+00
d4d74b84-2dd2-4a6f-a07b-f20508c97532	Nike® KO Thermal Gloves	http://placehold.it/350x150	This is a Nike® KO Thermal Gloves.	Nike	Clothing & Accessories	Shoes	\N	X-large	Black	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
0e100261-d4f3-42de-905b-b22095b8e3fb	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XL	White	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
fd4c501e-8936-4c4f-ac40-a2b89ffc26be	Nike Fastbreak Shorts - Men's	http://placehold.it/350x150	This is a Nike Fastbreak Shorts - Men's.	Nike	Men	Shoes	\N	XXL	White/Black	2017-01-11 10:11:16.499+00	2017-01-11 10:11:16.499+00
2527894a-b320-401b-b5f4-5ae3e13e6935	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	Small	Dgh	2017-01-11 10:11:16.5+00	2017-01-11 10:11:16.5+00
bb4c43b2-9a6f-4131-afe1-93e2f4a28866	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	L	White	2017-01-11 10:11:16.5+00	2017-01-11 10:11:16.5+00
9fd79db7-90f9-4b7e-ad8f-1894ce94f8b0	Women's Nike Featherlight Visor	http://placehold.it/350x150	This is a Women's Nike Featherlight Visor.	nike	Women	Shoes	\N	S-M	Midnight	2017-01-11 10:11:16.501+00	2017-01-11 10:11:16.501+00
96877334-106d-4126-b14d-73ca3e4db7d3	Nike Protegga Shield	http://placehold.it/350x150	This is a Nike Protegga Shield.	Nike	Team Sports	Shoes	\N	XS	Black/Red	2017-01-11 10:11:16.501+00	2017-01-11 10:11:16.501+00
00d48ab6-1d24-48a7-aef2-789fbeeb78e3	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	L	White	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
009a1392-36c9-45c4-bc1e-2c2d1be6f2d2	Nike Fastbreak Shorts - Men's	http://placehold.it/350x150	This is a Nike Fastbreak Shorts - Men's.	Nike	Men	Shoes	\N	3XL	White/Black	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
b15bd6a4-9584-47e6-bd90-3b4be79e8581	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	X-small	Black	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
0fcdbb8b-2a80-4973-a556-9a668c922f2b	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	L	Teal	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
09e2bda8-57b0-4d41-b7cf-e4591fa019dd	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XL	Volt	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
e6d48617-2598-45d8-b4b5-4635dc01341d	Nike® Shadow Block Tee	http://placehold.it/350x150	This is a Nike® Shadow Block Tee.	Nike	Clothing & Accessories	Shoes	\N	Small	Black White	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
71f950dd-1d61-4dc6-b159-7f888bc9912b	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	Large	Dgh	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
1a594c25-dfcf-47e7-b281-caa88d9dc85d	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Fuchsia Force/Fuchsia Force	2017-01-11 10:11:16.504+00	2017-01-11 10:11:16.504+00
9fd405a5-3af6-4fa7-96bf-6c2b71369098	Nike® Baselayer Training Shorts	http://placehold.it/350x150	This is a Nike® Baselayer Training Shorts.	Nike	Clothing & Accessories	Shoes	\N	Small	Blackvivid Pink	2017-01-11 10:11:16.504+00	2017-01-11 10:11:16.504+00
56049a90-3d85-4300-be8e-4a6e9a180eca	Nike® Victory Compression Bra	http://placehold.it/350x150	This is a Nike® Victory Compression Bra.	Nike	Girls	Shoes	\N	Small	White/black	2017-01-11 10:11:16.505+00	2017-01-11 10:11:16.505+00
29a9729a-6ac8-4ee6-b115-2d8fab45a5a0	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Clothing	Shoes	\N	SML 	RASTA FADE	2017-01-11 10:11:16.505+00	2017-01-11 10:11:16.505+00
840f3314-e00b-4398-b1b2-8541cce88714	Nike® Baselayer Training Shorts	http://placehold.it/350x150	This is a Nike® Baselayer Training Shorts.	Nike	Clothing & Accessories	Shoes	\N	Large	Blackcosmic Purple	2017-01-11 10:11:16.506+00	2017-01-11 10:11:16.506+00
70043231-14db-48d3-a2f9-8dd1bdf8453c	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Hyper Cobalt/Hyper Cobalt	2017-01-11 10:11:16.506+00	2017-01-11 10:11:16.506+00
439a2244-a59b-46fb-8b23-f7bfd3f04d6a	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Distance Blue	2017-01-11 10:11:16.507+00	2017-01-11 10:11:16.507+00
3d27d738-5177-41f6-ad15-d4e5190a4f7f	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Atomic Mango	2017-01-11 10:11:16.509+00	2017-01-11 10:11:16.509+00
9afeffb7-bb00-4fc5-abff-fca9109248c9	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Clothing	Shoes	\N	LRG 	RASTA FADE	2017-01-11 10:11:16.511+00	2017-01-11 10:11:16.511+00
ddedabd7-eaa3-4049-9bb5-04cb2a1ce27d	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	Medium	Blacks Leaf	2017-01-11 10:11:16.514+00	2017-01-11 10:11:16.514+00
7c6624a4-9a1b-43d0-8e55-4cccd2c7996f	Nike® Baselayer Training Shorts	http://placehold.it/350x150	This is a Nike® Baselayer Training Shorts.	Nike	Clothing & Accessories	Shoes	\N	Large	Blackvivid Pink	2017-01-11 10:11:16.515+00	2017-01-11 10:11:16.515+00
4518b733-ae10-4608-ae35-c8a3b71be4eb	Nike® 10K Shorts	http://placehold.it/350x150	This is a Nike® 10K Shorts.	Nike	Girls	Shoes	\N	Medium	Black/anthracite	2017-01-11 10:11:16.517+00	2017-01-11 10:11:16.517+00
04ad7083-d4fb-41ef-b717-adc32f632aa9	Nike Dunk High LR []	http://placehold.it/350x150	This is a Nike Dunk High LR [].	Nike	Fashion Sneakers	Shoes	\N	9	\N	2017-01-11 10:11:16.52+00	2017-01-11 10:11:16.52+00
1c06401d-09f9-461d-b09a-1298d889d451	Nike Force Tank - Men's	http://placehold.it/350x150	This is a Nike Force Tank - Men's.	Nike	Clothing & Accessories	Shoes	\N	XXL	Black	2017-01-11 10:11:16.521+00	2017-01-11 10:11:16.521+00
9bace800-9a15-42a5-81d0-85b7deaf241c	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Bright Mango/Bright Mango	2017-01-11 10:11:16.521+00	2017-01-11 10:11:16.521+00
7138b6d6-41e4-444f-a454-0a5d2c8a6908	Nike Remora Metallic Goggle	http://placehold.it/350x150	This is a Nike Remora Metallic Goggle.	Nike	Goggles	Shoes	\N	\N	Pink	2017-01-11 10:11:16.522+00	2017-01-11 10:11:16.522+00
2c0092f3-df07-471e-8039-462f146b8122	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Purple Haze/Purple Haze	2017-01-11 10:11:16.522+00	2017-01-11 10:11:16.522+00
7e2e7c98-6a3e-4255-98b9-3486810f8b4c	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Venom Green	2017-01-11 10:11:16.523+00	2017-01-11 10:11:16.523+00
3cfc5e08-82c4-40c7-baba-c52be5360214	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Bright Grape	2017-01-11 10:11:16.524+00	2017-01-11 10:11:16.524+00
2fd856cf-b4f5-4fb3-8ebd-19cd45f13b8b	Men's Nike Tank Top	http://placehold.it/350x150	This is a Men's Nike Tank Top.	nike	Men	Shoes	\N	XL	White	2017-01-11 10:11:16.524+00	2017-01-11 10:11:16.524+00
97065187-992c-432d-b32d-38f9a273fc9c	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Fusion Pink	2017-01-11 10:11:16.525+00	2017-01-11 10:11:16.525+00
a8aa5348-231c-4205-8806-617cb293b787	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Fusion Pink	2017-01-11 10:11:16.526+00	2017-01-11 10:11:16.526+00
915858ac-b40d-4e00-9eeb-ddc2e2b357d6	Nike Amplified Shiver 2.0	http://placehold.it/350x150	This is a Nike Amplified Shiver 2.0.	nike	Exercise & Fitness	Shoes	\N	ONESIZE	Green Brown	2017-01-11 10:11:16.526+00	2017-01-11 10:11:16.526+00
4c87f16b-58c1-4807-8d9b-700523b8b96b	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Laser Crimson	2017-01-11 10:11:16.529+00	2017-01-11 10:11:16.529+00
fb049af9-c97a-4d16-9a5d-2130c5f30005	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Vivid Blue	2017-01-11 10:11:16.53+00	2017-01-11 10:11:16.53+00
b27d88f8-8f16-4f1e-a775-68d558f399cc	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	White/White	2017-01-11 10:11:16.53+00	2017-01-11 10:11:16.53+00
a23ff823-bbc2-4779-9c8e-5050f008f37f	Nike Zone Shorts - Men's	http://placehold.it/350x150	This is a Nike Zone Shorts - Men's.	Nike	Active	Shoes	\N	XXL	Black/White	2017-01-11 10:11:16.531+00	2017-01-11 10:11:16.531+00
1b3d2d54-46d2-40a5-9c6b-d0f8a17fd76e	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Medium Mint/Medium Mint	2017-01-11 10:11:16.531+00	2017-01-11 10:11:16.531+00
cde4d5bd-83d7-42cf-a1f6-bb2181728a26	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Clothing	Shoes	\N	1SZ 	RED	2017-01-11 10:11:16.532+00	2017-01-11 10:11:16.532+00
e58240a9-745d-41a1-a387-6281c4d8413f	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Team Sports	Shoes	\N	MD	White/Black	2017-01-11 10:11:16.532+00	2017-01-11 10:11:16.532+00
c89f582f-3862-44cb-8c67-f96d9a6b7227	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XL	Vivid Pink	2017-01-11 10:11:16.532+00	2017-01-11 10:11:16.532+00
011b4959-6e6a-451f-a014-0aa43c3aee1b	Nike Fundamental Towel	http://placehold.it/350x150	This is a Nike Fundamental Towel.	Nike	Men	Shoes	\N	M	Royal	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
560d7f0d-206c-4d19-af6c-af5082731f54	Nike Essential Volleyball Kneepad	http://placehold.it/350x150	This is a Nike Essential Volleyball Kneepad.	Nike	Sporting Equipment	Shoes	\N	XL/2X	White	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
06d7b493-6edc-428b-b96f-4ace656ce810	Nike Dome Lunch Bag	http://placehold.it/350x150	This is a Nike Dome Lunch Bag.	nike	Fan Shop	Shoes	\N	\N	Blue	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
c48bb917-fbb2-4810-bbf8-8767596ac095	Nike Therma-FIT Gloves	http://placehold.it/350x150	This is a Nike Therma-FIT Gloves.	Nike	Women	Shoes	\N	L	Black/Black	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
a42e1341-ef3f-42f7-93d4-370cf1ed1c28	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XL	White	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
b31f674c-43dc-4d52-b8ea-5ca59d905c04	Nike® Shadow Block Tee	http://placehold.it/350x150	This is a Nike® Shadow Block Tee.	Nike	Clothing & Accessories	Shoes	\N	Medium	White Black	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
29ea6c80-c4f5-4dda-89f1-f040e43feaa2	Nike Fastbreak Shorts - Men's	http://placehold.it/350x150	This is a Nike Fastbreak Shorts - Men's.	Nike	Clothing	Shoes	\N	M	Black/Black	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
057a4e56-c77e-4b47-a8a8-2f7b33ed0cb0	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XS	Black	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
58fdf242-04fd-4ca4-9af5-00da40a24e2c	Nike® Ultra Panel Tee	http://placehold.it/350x150	This is a Nike® Ultra Panel Tee.	Nike	Clothing & Accessories	Shoes	\N	Small	Dgh Black	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
a4c16a03-834d-4677-a3e1-4cee0eaab204	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	Xx-large	Dgh	2017-01-11 10:11:16.504+00	2017-01-11 10:11:16.504+00
cd8472bb-51fd-4c40-84ca-b77f69a47349	Nike MLB Practice T	http://placehold.it/350x150	This is a Nike MLB Practice T.	Nike	Fan Shop	Shoes	\N	S	Black	2017-01-11 10:11:16.504+00	2017-01-11 10:11:16.504+00
d8746642-885b-491f-8544-aa67ee7f273e	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	Large	Ltphblwhite	2017-01-11 10:11:16.504+00	2017-01-11 10:11:16.504+00
101a7b20-fc27-46ee-bc0e-82d62d64a426	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Baseball & Softball	Shoes	\N	12 M US	Black/White	2017-01-11 10:11:16.505+00	2017-01-11 10:11:16.505+00
ad4e5397-ec47-43da-97e1-ae7702ca494a	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	S	Volt/Volt	2017-01-11 10:11:16.505+00	2017-01-11 10:11:16.505+00
52f553df-5d75-454b-8449-e1e42a2a6e8c	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	Medium	Col Gyblack	2017-01-11 10:11:16.506+00	2017-01-11 10:11:16.506+00
4ee8bc9e-9f18-4aac-86c0-bc2210a65706	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Clothing	Shoes	\N	LRG 	NAVY	2017-01-11 10:11:16.506+00	2017-01-11 10:11:16.506+00
eef6a989-cad0-4f86-ac27-6e11dbe1d429	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	White/White	2017-01-11 10:11:16.507+00	2017-01-11 10:11:16.507+00
17d24544-b92e-460d-b20c-970570f14ef4	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Bright Grape	2017-01-11 10:11:16.51+00	2017-01-11 10:11:16.51+00
ee8afc62-5613-4845-9ce4-07802890e4cd	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Baseball & Softball	Shoes	\N	12.5 M US	Black/White	2017-01-11 10:11:16.511+00	2017-01-11 10:11:16.511+00
b1f491fa-2a6f-47c3-b2a5-023631e2c9fa	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	Medium	Blackltcrms	2017-01-11 10:11:16.513+00	2017-01-11 10:11:16.513+00
c91c2d15-72bc-439b-b44d-17cc578f7b4c	Nike Force Tank - Men's	http://placehold.it/350x150	This is a Nike Force Tank - Men's.	Nike	Clothing & Accessories	Shoes	\N	M	Black	2017-01-11 10:11:16.516+00	2017-01-11 10:11:16.516+00
b9cac58d-19c7-4387-b5f9-0c5189e382f6	Nike® 10K Shorts	http://placehold.it/350x150	This is a Nike® 10K Shorts.	Nike	Girls	Shoes	\N	Small	Black/anthracite	2017-01-11 10:11:16.518+00	2017-01-11 10:11:16.518+00
88fe2dbf-d1da-4a80-a391-6e2b1c127521	NIKE Hat	http://placehold.it/350x150	This is a NIKE Hat.	NIKE	Men	Shoes	\N	M	Lead	2017-01-11 10:11:16.519+00	2017-01-11 10:11:16.519+00
2bb00037-2f0b-40e0-9e8b-b27d5a968443	Nike® Victory Compression Bra	http://placehold.it/350x150	This is a Nike® Victory Compression Bra.	Nike	Girls	Shoes	\N	Large	Black/white	2017-01-11 10:11:16.521+00	2017-01-11 10:11:16.521+00
45504fd6-bbc0-4ce3-8fd9-a7625f2e8689	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Atomic Pink	2017-01-11 10:11:16.521+00	2017-01-11 10:11:16.521+00
5b81c56d-e457-472c-9485-d28c35cca126	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Atomic Mango	2017-01-11 10:11:16.522+00	2017-01-11 10:11:16.522+00
47ba8d9a-2f3a-4b57-bac7-b65cb50a2950	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Bright Grape	2017-01-11 10:11:16.522+00	2017-01-11 10:11:16.522+00
a904a198-d82a-4a79-b3ab-777e685b338e	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Vivid Blue	2017-01-11 10:11:16.522+00	2017-01-11 10:11:16.522+00
3a16cc91-7926-4993-8260-bb718d46daa3	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Urban Lilac	2017-01-11 10:11:16.523+00	2017-01-11 10:11:16.523+00
ef9889cb-9788-4374-ae70-6680bfebebd2	Nike Featherlight Cap	http://placehold.it/350x150	This is a Nike Featherlight Cap.	Nike	Clothing & Accessories	Shoes	\N	\N	\N	2017-01-11 10:11:16.524+00	2017-01-11 10:11:16.524+00
f7a024fe-e5d3-495a-9eb9-3065c2fcb33a	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Hyper Pink/Hyper Pink	2017-01-11 10:11:16.525+00	2017-01-11 10:11:16.525+00
0fb125b6-ed92-4467-99b9-a0d382b64c4b	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Bright Mango/Bright Mango	2017-01-11 10:11:16.525+00	2017-01-11 10:11:16.525+00
82bb5208-a51a-4df1-a59f-a503626c1b80	NIKE Women's Double Sport Headband	http://placehold.it/350x150	This is a NIKE Women's Double Sport Headband.	Nike	Headbands	Shoes	\N	\N	\N	2017-01-11 10:11:16.526+00	2017-01-11 10:11:16.526+00
a00b725c-83ec-4ca9-9b89-21ca8b49fed7	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Atomic Orange	2017-01-11 10:11:16.528+00	2017-01-11 10:11:16.528+00
97bc16be-1ad1-432d-a29d-2e384414e111	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Arctic Green	2017-01-11 10:11:16.529+00	2017-01-11 10:11:16.529+00
e00c732c-9de7-4b6c-9889-975bd3cba025	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Bright Mango/Bright Mango	2017-01-11 10:11:16.53+00	2017-01-11 10:11:16.53+00
d9fbc180-a17f-49db-9939-00363da4eef7	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Black/Black	2017-01-11 10:11:16.53+00	2017-01-11 10:11:16.53+00
8e91394e-784f-43ad-827d-7336f2fb623a	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Atomic Mango	2017-01-11 10:11:16.531+00	2017-01-11 10:11:16.531+00
8f0fffa2-781b-4a7e-88ee-21e02662c0de	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Baseball & Softball	Shoes	\N	16 D(M) US	Black/White	2017-01-11 10:11:16.531+00	2017-01-11 10:11:16.531+00
9f9caf3c-31e3-4c7f-8c62-bd214f6fc7db	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Team Sports	Shoes	\N	SM	White/Black	2017-01-11 10:11:16.532+00	2017-01-11 10:11:16.532+00
4274f0ea-13e3-479b-b260-5cbac828e615	Nike Layup Shorts - Men's	http://placehold.it/350x150	This is a Nike Layup Shorts - Men's.	Nike	Clothing	Shoes	\N	XL	Black/Black/White	2017-01-11 10:11:16.532+00	2017-01-11 10:11:16.532+00
1f39dc9c-23fd-4caf-8350-da331da0c598	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Sporting Equipment	Shoes	\N	Medium	Purple Haze/Metallic Silver	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
6c1c3db9-dda4-4319-9d9a-312fa663ca44	Nike Heritage Gymsack	http://placehold.it/350x150	This is a Nike Heritage Gymsack.	Nike	Sporting Equipment	Shoes	\N	\N	Court Purple/Court Purple/White	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
1efec2b7-698c-4b55-ada8-5a53fc3370b1	Nike Heritage Gymsack	http://placehold.it/350x150	This is a Nike Heritage Gymsack.	Nike	Sporting Equipment	Shoes	\N	\N	Venom Green/White	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
667b650f-c2af-4d2e-a53f-018d43a6465f	Nike Lunar Sculpt Sneaker	http://placehold.it/350x150	This is a Nike Lunar Sculpt Sneaker.	Nike	Boys	Shoes	\N	6.5	ORANGE	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
b563a8ca-c734-4a96-b381-00dd2e33bc7f	Nike® AOP Plays Tee	http://placehold.it/350x150	This is a Nike® AOP Plays Tee.	Nike	Clothing & Accessories	Shoes	\N	Medium	Black White	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
d257ffce-be0e-479a-8b99-5c7e9ae39684	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	S	Violet Shock	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
632165c4-c2af-4c33-91d3-ec656e61eaff	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	M	White	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
888accaf-e412-43c4-b647-18682fe8a7f3	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XL	White	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
0cccaed4-3f33-422e-8540-04d8dee505ef	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	X-large	Black	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
5cb4cb76-1680-442b-83f5-fcfab6cbc2f3	Nike® AOP Plays Tee	http://placehold.it/350x150	This is a Nike® AOP Plays Tee.	Nike	Clothing & Accessories	Shoes	\N	Large	White Red	2017-01-11 10:11:16.504+00	2017-01-11 10:11:16.504+00
2973d673-fd4c-4128-a603-1491276e67e1	Nike® 10K Shorts	http://placehold.it/350x150	This is a Nike® 10K Shorts.	Nike	Sporting Equipment	Shoes	\N	Large	Black/anthracite	2017-01-11 10:11:16.504+00	2017-01-11 10:11:16.504+00
9269e689-096b-44e4-b147-ad39eac4daa4	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	Small	Blackltcrms	2017-01-11 10:11:16.505+00	2017-01-11 10:11:16.505+00
4a2f16c1-8c4d-46b4-a8f2-a01ba2aee7be	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Fuchsia Force/Fuchsia Force	2017-01-11 10:11:16.505+00	2017-01-11 10:11:16.505+00
4142fa47-f38a-4148-b9af-3c23822bf183	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	Large	Blacks Leaf	2017-01-11 10:11:16.506+00	2017-01-11 10:11:16.506+00
8ccd0cf8-b1b9-47df-9052-3083cedf564f	Nike® Baselayer Training Shorts	http://placehold.it/350x150	This is a Nike® Baselayer Training Shorts.	Nike	Clothing & Accessories	Shoes	\N	Small	Blackcosmic Purple	2017-01-11 10:11:16.506+00	2017-01-11 10:11:16.506+00
a44d6417-47e6-4ca8-9486-931a0d4cdd16	Nike Featherlight Visor	http://placehold.it/350x150	This is a Nike Featherlight Visor.	Nike	Sporting Equipment	Shoes	\N	\N	White/Black/Black	2017-01-11 10:11:16.506+00	2017-01-11 10:11:16.506+00
9527e729-53bf-4c5d-b3bb-a5a70e5d0191	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Urban Lilac	2017-01-11 10:11:16.508+00	2017-01-11 10:11:16.508+00
b964aeb2-a980-4331-a089-d8d4403f094d	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Black/Black	2017-01-11 10:11:16.511+00	2017-01-11 10:11:16.511+00
90f1d6ff-6c68-4df9-88f6-747cbe7e475a	Nike® Victory Compression Bra	http://placehold.it/350x150	This is a Nike® Victory Compression Bra.	Nike	Girls	Shoes	\N	Small	Black/white	2017-01-11 10:11:16.512+00	2017-01-11 10:11:16.512+00
7786f5c8-490c-4225-9863-5b6ff09275c0	Nike® Baselayer Training Shorts	http://placehold.it/350x150	This is a Nike® Baselayer Training Shorts.	Nike	Clothing & Accessories	Shoes	\N	Medium	Blackcosmic Purple	2017-01-11 10:11:16.515+00	2017-01-11 10:11:16.515+00
84859749-87aa-497e-a82c-ea77b7097492	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Clothing	Shoes	\N	MED 	BLACK	2017-01-11 10:11:16.516+00	2017-01-11 10:11:16.516+00
b8f70f3a-84e1-4321-ba73-0d2d72a6cace	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	Medium	Ltphblwhite	2017-01-11 10:11:16.518+00	2017-01-11 10:11:16.518+00
8c8f0871-f17b-476a-a93b-d219fc592bd2	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	Small	Col Gyblack	2017-01-11 10:11:16.521+00	2017-01-11 10:11:16.521+00
8594a493-f267-478b-831d-6b1b78dff838	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Purple Haze/Purple Haze	2017-01-11 10:11:16.521+00	2017-01-11 10:11:16.521+00
85ee8cae-99d7-4bd9-ad16-927c3b877239	Nike Zone Shorts - Men's	http://placehold.it/350x150	This is a Nike Zone Shorts - Men's.	Nike	Active	Shoes	\N	XXXL	Black/White	2017-01-11 10:11:16.522+00	2017-01-11 10:11:16.522+00
ed24a02c-a217-4c49-abe1-94acf91fcbd1	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Fusion Pink	2017-01-11 10:11:16.522+00	2017-01-11 10:11:16.522+00
3e41140d-9745-4c68-8a19-b90167773841	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Turbo Green	2017-01-11 10:11:16.522+00	2017-01-11 10:11:16.522+00
0cb10cc1-344d-4616-b412-9c82af22b866	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Fusion Pink	2017-01-11 10:11:16.523+00	2017-01-11 10:11:16.523+00
7911f247-31d9-4875-af02-4c204717979a	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	White/White	2017-01-11 10:11:16.524+00	2017-01-11 10:11:16.524+00
2389ea58-393c-43bd-a599-de51671f9d27	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Urban Lilac	2017-01-11 10:11:16.525+00	2017-01-11 10:11:16.525+00
d8db98d4-f0c6-45f5-ac83-90e7fc2e5993	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Urban Lilac	2017-01-11 10:11:16.525+00	2017-01-11 10:11:16.525+00
8614c466-0a7b-4260-94db-3355eec52946	Men's Nike Tank Top	http://placehold.it/350x150	This is a Men's Nike Tank Top.	nike	Men	Shoes	\N	S	Black	2017-01-11 10:11:16.526+00	2017-01-11 10:11:16.526+00
4eb068f4-bd74-4e16-87f4-3ab535aedac7	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Bright Mango/Bright Mango	2017-01-11 10:11:16.528+00	2017-01-11 10:11:16.528+00
74b8dbf7-b11c-4053-8dfc-e7e0ddb63a61	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Laser Crimson	2017-01-11 10:11:16.529+00	2017-01-11 10:11:16.529+00
f9aeb1f7-6911-4476-9c28-7d78ede3014d	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	White/White	2017-01-11 10:11:16.53+00	2017-01-11 10:11:16.53+00
a30ef411-3de2-437b-a874-086ca8dfe2a7	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Atomic Orange	2017-01-11 10:11:16.53+00	2017-01-11 10:11:16.53+00
41e38cc3-c1d2-46cd-858c-44755e83aa43	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Venom Green	2017-01-11 10:11:16.531+00	2017-01-11 10:11:16.531+00
e25c7911-5c4c-451b-ba29-39617e7eb175	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Volt/Volt	2017-01-11 10:11:16.531+00	2017-01-11 10:11:16.531+00
cc985cfa-34df-4110-ac86-e0e7636c1cd5	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Team Sports	Shoes	\N	LG	Black/Volt	2017-01-11 10:11:16.532+00	2017-01-11 10:11:16.532+00
609ec26a-bd02-4566-bb6d-61de6b4e8232	Nike Heritage Gymsack	http://placehold.it/350x150	This is a Nike Heritage Gymsack.	Nike	Sporting Equipment	Shoes	\N	\N	Gold Leaf/White	2017-01-11 10:11:16.532+00	2017-01-11 10:11:16.532+00
c99e4985-30fc-48d7-b366-f2cf80e54955	Nike Strength Training Belt, Large	http://placehold.it/350x150	This is a Nike Strength Training Belt, Large.	Nike	Accessories	Shoes	\N	\N	\N	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
02e21eb5-1d4d-4942-adf9-fa9538620c6d	Nike Therma-FIT Gloves	http://placehold.it/350x150	This is a Nike Therma-FIT Gloves.	Nike	Women	Shoes	\N	S	Black/Black	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
2d392a24-4018-4ae3-bb6f-0a48136b4ae2	Nike Dome Lunch Bag	http://placehold.it/350x150	This is a Nike Dome Lunch Bag.	nike	Camping & Hiking	Shoes	\N	\N	Black	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
d3c5d52e-033e-4168-a79d-116a22713a43	Nike Lunar Sculpt Sneaker	http://placehold.it/350x150	This is a Nike Lunar Sculpt Sneaker.	Nike	Boys	Shoes	\N	7.5	ORANGE	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
c0aeb0e8-4fcb-41df-9374-341b7fcbf6be	Nike® Shadow Block Tee	http://placehold.it/350x150	This is a Nike® Shadow Block Tee.	Nike	Clothing & Accessories	Shoes	\N	Large	Black White	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
b137db36-bb7b-4bae-9d23-b82a77d00e08	Nike Mercurial Lite []	http://placehold.it/350x150	This is a Nike Mercurial Lite [].	Nike	Shin Guards	Shoes	\N	Large	Blue	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
0ce08d40-2591-4469-ac1a-d46352cb8974	Nike Elite Tank - Women's	http://placehold.it/350x150	This is a Nike Elite Tank - Women's.	Nike	Women	Shoes	\N	L	White/Black	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
76e8a513-0798-4d1f-8c75-f8e16b2ea405	Nike® Ultra Panel Tee	http://placehold.it/350x150	This is a Nike® Ultra Panel Tee.	Nike	Clothing & Accessories	Shoes	\N	Medium	Dgh Black	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
ce8cee55-57f6-450f-bf97-1533c5deccce	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	Large	Black	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
cc424d7f-402f-4944-befb-3d6ab035021b	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	M	Volt	2017-01-11 10:11:16.504+00	2017-01-11 10:11:16.504+00
f473faf8-8f7c-4585-af9c-b08adfca3dd3	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Clothing	Shoes	\N	LRG 	HEATHER GREY	2017-01-11 10:11:16.504+00	2017-01-11 10:11:16.504+00
cc84d316-e917-4d5e-88c9-51d37305bdfb	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	Large	Blackltcrms	2017-01-11 10:11:16.505+00	2017-01-11 10:11:16.505+00
a35bd494-aeff-469c-bb68-3408b8006d5c	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Clothing	Shoes	\N	SML 	NAVY	2017-01-11 10:11:16.505+00	2017-01-11 10:11:16.505+00
8a48ffb7-30e7-4957-a763-c3eaad1e682c	Nike Protegga Shield	http://placehold.it/350x150	This is a Nike Protegga Shield.	Nike	Team Sports	Shoes	\N	LG	\N	2017-01-11 10:11:16.505+00	2017-01-11 10:11:16.505+00
fe4bee9b-1a9d-48d1-85d4-67fe7d4624d9	Nike® Baselayer Training Shorts	http://placehold.it/350x150	This is a Nike® Baselayer Training Shorts.	Nike	Clothing & Accessories	Shoes	\N	Large	Blackwhite	2017-01-11 10:11:16.506+00	2017-01-11 10:11:16.506+00
8cd27e40-4225-44c0-94a4-811914336065	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Atomic Mango	2017-01-11 10:11:16.507+00	2017-01-11 10:11:16.507+00
a20999f5-d400-443b-ae9a-acbdf5e9ac65	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Black/Black	2017-01-11 10:11:16.509+00	2017-01-11 10:11:16.509+00
edb11260-178e-401f-a7f8-00f0f1b6938e	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Black/Black	2017-01-11 10:11:16.51+00	2017-01-11 10:11:16.51+00
7283ad4d-16e6-420e-9a57-5d84415cab73	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	Small	Ltphblwhite	2017-01-11 10:11:16.512+00	2017-01-11 10:11:16.512+00
c0935418-cb59-4bb4-9920-db4160c95050	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	Small	Blacks Leaf	2017-01-11 10:11:16.514+00	2017-01-11 10:11:16.514+00
80111677-1b1f-4234-a670-cbd8ecc5a120	Nike® Victory Compression Bra	http://placehold.it/350x150	This is a Nike® Victory Compression Bra.	Nike	Girls	Shoes	\N	Medium	Black/white	2017-01-11 10:11:16.517+00	2017-01-11 10:11:16.517+00
dff6824e-a13e-41ba-8d8e-cc7babe64575	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Clothing	Shoes	\N	XLG 	RASTA FADE	2017-01-11 10:11:16.519+00	2017-01-11 10:11:16.519+00
ccf49f84-4010-481a-b600-9dff3ef5a53f	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Sporting Equipment	Shoes	\N	XL	Black/Volt	2017-01-11 10:11:16.52+00	2017-01-11 10:11:16.52+00
95f5c928-bedc-4a6b-a961-7bf3e01b2da1	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Turbo Green	2017-01-11 10:11:16.521+00	2017-01-11 10:11:16.521+00
fd89a75e-9be4-4442-87b6-69cd7a93b66a	Nike Zone Shorts - Men's	http://placehold.it/350x150	This is a Nike Zone Shorts - Men's.	Nike	Active	Shoes	\N	M	Black/White	2017-01-11 10:11:16.521+00	2017-01-11 10:11:16.521+00
565948c9-7a7a-4ff9-b367-8786910eeea6	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Laser Crimson	2017-01-11 10:11:16.522+00	2017-01-11 10:11:16.522+00
00f31bf8-bb4a-4c47-92ba-7cac3715bdcc	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Purple Haze/Purple Haze	2017-01-11 10:11:16.522+00	2017-01-11 10:11:16.522+00
7c6b04ca-06cd-4d2f-86b2-73c3b5ff43f9	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Turbo Green	2017-01-11 10:11:16.523+00	2017-01-11 10:11:16.523+00
cbb00c3d-b468-4d90-ba4a-d9c523a5f31e	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Vivid Blue	2017-01-11 10:11:16.524+00	2017-01-11 10:11:16.524+00
14cddabd-da9f-4251-9f0a-273297076a01	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Bright Mango/Bright Mango	2017-01-11 10:11:16.524+00	2017-01-11 10:11:16.524+00
85ebcac5-3001-4e45-94f4-812a99265da8	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Hyper Pink/Hyper Pink	2017-01-11 10:11:16.525+00	2017-01-11 10:11:16.525+00
696b6cc1-4217-4648-ab3f-370d5e13dc25	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Bright Grape	2017-01-11 10:11:16.526+00	2017-01-11 10:11:16.526+00
af5c946b-476e-4510-82c4-942af1a06d5e	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Bright Mango/Bright Mango	2017-01-11 10:11:16.526+00	2017-01-11 10:11:16.526+00
983cde8b-91f1-4d9d-9353-cd72a58b1fed	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Medium Mint/Medium Mint	2017-01-11 10:11:16.529+00	2017-01-11 10:11:16.529+00
a12e554e-f587-486a-ae81-1168240ffbab	Nike.	http://placehold.it/350x150	This is a Nike..	Nike	Sporting Equipment	Shoes	\N	\N	White	2017-01-11 10:11:16.53+00	2017-01-11 10:11:16.53+00
1d43c003-758a-4d0b-b8d0-8a4551411345	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Black/Black	2017-01-11 10:11:16.53+00	2017-01-11 10:11:16.53+00
fd4d0d55-d4b8-4ac7-8bc8-052fec1ba3c0	Nike Zone Shorts - Men's	http://placehold.it/350x150	This is a Nike Zone Shorts - Men's.	Nike	Active	Shoes	\N	L	Black/White	2017-01-11 10:11:16.531+00	2017-01-11 10:11:16.531+00
b9fc49e6-86a2-4318-a0d3-2e72fcd18e50	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Bright Mango/Bright Mango	2017-01-11 10:11:16.531+00	2017-01-11 10:11:16.531+00
182b0337-7b61-4a0c-be74-5f2deca2ebd9	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Team Sports	Shoes	\N	MD	Black/Volt	2017-01-11 10:11:16.532+00	2017-01-11 10:11:16.532+00
e7e7a967-5dce-4078-bcbc-22cc9514f3e6	Nike []	http://placehold.it/350x150	This is a Nike [].	Nike	Baseball & Softball	Shoes	\N	9	Pro Red/White	2017-01-11 10:11:16.532+00	2017-01-11 10:11:16.532+00
8144148b-340e-4206-b774-c8e83a990287	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	L	Scarlet/White/White	2017-01-11 10:11:16.532+00	2017-01-11 10:11:16.532+00
819bfb6e-5e89-4e86-93a8-e35bf6747cb1	Nike Libretto Shorts - Men	http://placehold.it/350x150	This is a Nike Libretto Shorts - Men.	Nike	Sporting Equipment	Shoes	\N	S	Obsidian White	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
072fdf30-60f8-4feb-8c5d-70f2f509dee7	Nike Str8 Jacket - Men's	http://placehold.it/350x150	This is a Nike Str8 Jacket - Men's.	Nike	Sporting Equipment	Shoes	\N	M	Pink/Black	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
2587d499-cfae-46a9-8c70-6830227822d1	Nike Lunar Sculpt Sneaker	http://placehold.it/350x150	This is a Nike Lunar Sculpt Sneaker.	Nike	Boys	Shoes	\N	5	ORANGE	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
b4cb265e-bbc6-4c4e-af94-3d749d032d22	Nike Track Jacket - Men's	http://placehold.it/350x150	This is a Nike Track Jacket - Men's.	Nike	Clothing & Accessories	Shoes	\N	M	Black/Volt	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
9ef3ff8e-9fe7-427f-a348-668b15a1b838	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	3x-large	Black	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
f037adf4-f8e2-4d7f-a7d7-71deb812ce2f	Nike Strength Training Belt	http://placehold.it/350x150	This is a Nike Strength Training Belt.	Nike	Exercise & Fitness	Shoes	\N	MEDIUM	\N	2017-01-11 10:11:16.502+00	2017-01-11 10:11:16.502+00
a6a6d69b-285c-47dc-95e7-35a0e8e2169f	Nike Fastbreak Shorts - Men's	http://placehold.it/350x150	This is a Nike Fastbreak Shorts - Men's.	Nike	Men	Shoes	\N	S	White/Black	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
871d944f-a2c5-464d-bb76-a9543bcb2adb	Nike® Shadow Block Tee	http://placehold.it/350x150	This is a Nike® Shadow Block Tee.	Nike	Clothing & Accessories	Shoes	\N	Medium	Black White	2017-01-11 10:11:16.503+00	2017-01-11 10:11:16.503+00
c6fa70e7-f43a-489e-8331-4cd15d39bd6f	Nike® Block Pocket Tee	http://placehold.it/350x150	This is a Nike® Block Pocket Tee.	Nike	Clothing & Accessories	Shoes	\N	X-small	Dgh	2017-01-11 10:11:16.504+00	2017-01-11 10:11:16.504+00
efc09360-e2ba-4ccf-b714-a75ddc25836e	Nike MLB Homer T	http://placehold.it/350x150	This is a Nike MLB Homer T.	Nike	Clothing & Accessories	Shoes	\N	S	Navy	2017-01-11 10:11:16.504+00	2017-01-11 10:11:16.504+00
9a595685-1f88-4e25-a8d2-9bf6f805fd29	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	Large	Col Gyblack	2017-01-11 10:11:16.504+00	2017-01-11 10:11:16.504+00
82d51d80-1c1c-460f-93c6-42df98092546	Nike® Victory Compression Bra	http://placehold.it/350x150	This is a Nike® Victory Compression Bra.	Nike	Girls	Shoes	\N	Medium	White/black	2017-01-11 10:11:16.505+00	2017-01-11 10:11:16.505+00
75df9ef1-cdc5-42b5-a511-719c5b538501	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Clothing	Shoes	\N	MED 	HEATHER GREY	2017-01-11 10:11:16.505+00	2017-01-11 10:11:16.505+00
eb27f00c-d707-42de-81cc-69f769ea78ae	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	X-large	Ltphblwhite	2017-01-11 10:11:16.506+00	2017-01-11 10:11:16.506+00
a47b8ca4-6c28-437c-8f61-e3aaace93cd1	Nike MLB Practice T	http://placehold.it/350x150	This is a Nike MLB Practice T.	Nike	Sporting Equipment	Shoes	\N	S	Grey Heather	2017-01-11 10:11:16.506+00	2017-01-11 10:11:16.506+00
5041717f-c928-4c2d-add9-dddd3c268778	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Arctic Green	2017-01-11 10:11:16.508+00	2017-01-11 10:11:16.508+00
b4ecc254-8db0-4101-b214-8145b140ac07	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Venom Green	2017-01-11 10:11:16.509+00	2017-01-11 10:11:16.509+00
3ff1b451-6643-49a1-adec-d523f543475f	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Clothing	Shoes	\N	MED 	RASTA FADE	2017-01-11 10:11:16.512+00	2017-01-11 10:11:16.512+00
279e0753-e780-4008-950e-86efce4e5afc	Nike® Infiknit Training Shorts	http://placehold.it/350x150	This is a Nike® Infiknit Training Shorts.	Nike	Active	Shoes	\N	X-large	Blackltcrms	2017-01-11 10:11:16.513+00	2017-01-11 10:11:16.513+00
cab9c917-e1e9-49e5-86a9-9a825bde3bba	Nike® Baselayer Training Shorts	http://placehold.it/350x150	This is a Nike® Baselayer Training Shorts.	Nike	Clothing & Accessories	Shoes	\N	Small	Blackwhite	2017-01-11 10:11:16.515+00	2017-01-11 10:11:16.515+00
2206201f-a6b6-4aa3-93c7-27675a67b46d	Nike® Baselayer Training Shorts	http://placehold.it/350x150	This is a Nike® Baselayer Training Shorts.	Nike	Clothing & Accessories	Shoes	\N	Medium	Blackvivid Pink	2017-01-11 10:11:16.518+00	2017-01-11 10:11:16.518+00
c07b5234-6b8e-4164-9a20-4572794b6830	NIKE NATIONAL MENS SHORT (MENS)	http://placehold.it/350x150	This is a NIKE NATIONAL MENS SHORT (MENS).	Nike	Shorts	Shoes	\N	Large	White/Black/Black	2017-01-11 10:11:16.52+00	2017-01-11 10:11:16.52+00
be000f22-eef3-49d3-acdc-c3240331aec2	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Medium Mint/Medium Mint	2017-01-11 10:11:16.521+00	2017-01-11 10:11:16.521+00
d8d4c452-3ccb-4c54-b97d-7bfc81d73b1f	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Black/Black	2017-01-11 10:11:16.521+00	2017-01-11 10:11:16.521+00
f07de112-cb15-45ba-83ad-3605568dc0c3	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Volt/Volt	2017-01-11 10:11:16.522+00	2017-01-11 10:11:16.522+00
ac129805-46d9-4983-9659-29551aea6023	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Hyper Cobalt/Hyper Cobalt	2017-01-11 10:11:16.522+00	2017-01-11 10:11:16.522+00
c6a51948-3038-489a-8571-00a7b2dec4c8	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Bright Mango/Bright Mango	2017-01-11 10:11:16.523+00	2017-01-11 10:11:16.523+00
a2b76a52-776a-4612-9ea6-38afef1bb683	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Hyper Pink/Hyper Pink	2017-01-11 10:11:16.524+00	2017-01-11 10:11:16.524+00
eec96840-5b5f-420f-9ad0-07b38dbb6858	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Laser Crimson	2017-01-11 10:11:16.525+00	2017-01-11 10:11:16.525+00
2690d5e0-7c99-4ac2-9c78-14ac39677521	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Venom Green	2017-01-11 10:11:16.525+00	2017-01-11 10:11:16.525+00
c6a0f938-ab87-4f4c-b720-95b6831e63df	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	M	Volt/Volt	2017-01-11 10:11:16.526+00	2017-01-11 10:11:16.526+00
266c271c-5118-46bf-b059-380aac1ce919	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	L	Vivid Blue	2017-01-11 10:11:16.526+00	2017-01-11 10:11:16.526+00
99cdf4d4-e33f-439a-95c4-73ac9c8542cc	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Purple Haze/Purple Haze	2017-01-11 10:11:16.529+00	2017-01-11 10:11:16.529+00
54f17cbd-8fc0-41df-9848-7ac4ed4bb610	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Volt/Volt	2017-01-11 10:11:16.53+00	2017-01-11 10:11:16.53+00
14f30946-fe2f-4851-b219-0400f2690a8d	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XL	Fuchsia Force/Fuchsia Force	2017-01-11 10:11:16.53+00	2017-01-11 10:11:16.53+00
d21f2483-8472-475f-9e76-181314d9efc4	Nike Legend Tank - Women's	http://placehold.it/350x150	This is a Nike Legend Tank - Women's.	Nike	Active	Shoes	\N	XS	Medium Mint/Medium Mint	2017-01-11 10:11:16.531+00	2017-01-11 10:11:16.531+00
46a3b33a-724b-4e55-849e-13faf9a9e078	Nike Zone Shorts - Men's	http://placehold.it/350x150	This is a Nike Zone Shorts - Men's.	Nike	Active	Shoes	\N	XL	Black/White	2017-01-11 10:11:16.531+00	2017-01-11 10:11:16.531+00
e087fecc-b92f-4254-b48b-a95fb1cc758a	Nike Dome Lunch Bag	http://placehold.it/350x150	This is a Nike Dome Lunch Bag.	nike	Kitchen & Dining	Shoes	\N	\N	Red	2017-01-11 10:11:16.531+00	2017-01-11 10:11:16.531+00
bbafe254-7f6b-4470-b6d9-344b6dbf6d5b	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Team Sports	Shoes	\N	SM	Black/Volt	2017-01-11 10:11:16.532+00	2017-01-11 10:11:16.532+00
ec326d8e-7721-4a40-9db7-01c7894134af	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	S	Vivid Pink	2017-01-11 10:11:16.532+00	2017-01-11 10:11:16.532+00
e975fafa-9ded-4c9c-96a7-6abebee58243	Nike Fundamental Towel	http://placehold.it/350x150	This is a Nike Fundamental Towel.	Nike	Men	Shoes	\N	M	Red	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
51cb1754-ed31-41cb-bef5-cfcf39addda3	Nike Fundamental Yoga Mat	http://placehold.it/350x150	This is a Nike Fundamental Yoga Mat.	Nike	Women	Shoes	\N	\N	Anthracite	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
26f50c27-064c-4581-a74e-d5ae3c0ffd73	Nike Pro Hyperwarm Legging	http://placehold.it/350x150	This is a Nike Pro Hyperwarm Legging.	Nike	Baby	Shoes	\N	M	GREEN	2017-01-11 10:11:16.533+00	2017-01-11 10:11:16.533+00
22870395-13ca-48bb-8681-928397af59ac	Nike Track Jacket - Men's	http://placehold.it/350x150	This is a Nike Track Jacket - Men's.	Nike	Clothing & Accessories	Shoes	\N	L	Black/Volt	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
e93230a1-93a6-4262-b836-4390b09a92de	Nike Insulated Lunch Tote	http://placehold.it/350x150	This is a Nike Insulated Lunch Tote.	nike	Sporting Equipment	Shoes	\N	\N	Black Lime	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
45715b1c-b8a9-4bac-a020-a9c75ebc57f3	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	XXL	White/White/Black	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
f5a14877-a61f-4acf-9420-d0c9a339c91e	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	XL	Scarlet/White/White	2017-01-11 10:11:16.535+00	2017-01-11 10:11:16.535+00
ed5630bf-49f5-4122-b2b4-e42049e01918	Nike Tomboy Tank - Women's	http://placehold.it/350x150	This is a Nike Tomboy Tank - Women's.	Nike	Women	Shoes	\N	XS	Black	2017-01-11 10:11:16.536+00	2017-01-11 10:11:16.536+00
dac03ac1-a18b-46a1-a2c2-f8fc344efb52	Nike Lunar Sculpt Sneaker	http://placehold.it/350x150	This is a Nike Lunar Sculpt Sneaker.	Nike	Boys	Shoes	\N	6	ORANGE	2017-01-11 10:11:16.536+00	2017-01-11 10:11:16.536+00
fbce55f1-6465-434b-9757-00cddef93c92	Nike Featherlight Visor	http://placehold.it/350x150	This is a Nike Featherlight Visor.	Nike	Clothing	Shoes	\N	\N	WHITE	2017-01-11 10:11:16.536+00	2017-01-11 10:11:16.536+00
b0bf4ed5-6db1-4b70-a7e5-60a19ed09c82	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	XS	Cardinal/White/White	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
df2525a7-52a4-4a84-9630-84f98dba76ed	Nike Heritage Gymsack	http://placehold.it/350x150	This is a Nike Heritage Gymsack.	Nike	Team Sports	Shoes	\N	\N	Black/White	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
d5f6134d-437a-4ebf-adf0-554b2c006d1a	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Sporting Equipment	Shoes	\N	XL	Blue	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
6d65809d-93af-4ce8-8fdf-f5a17b876046	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	X-small	White	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
bbef492d-26a6-4496-91bc-a8a91355411f	Nike Featherlight Visor	http://placehold.it/350x150	This is a Nike Featherlight Visor.	Nike	Clothing	Shoes	\N	\N	BLACK	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
fd6355b5-f988-4ff3-8546-686e12006f3e	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	Medium	White	2017-01-11 10:11:16.539+00	2017-01-11 10:11:16.539+00
199e82cf-6e00-4a7a-ba9f-8a2b5ab681e0	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	Xx-large	Dgh	2017-01-11 10:11:16.539+00	2017-01-11 10:11:16.539+00
42e001ff-7f2b-46a4-a152-b7449143fe5c	Nike Lanyard []	http://placehold.it/350x150	This is a Nike Lanyard [].	Nike	Sporting Equipment	Shoes	\N	Ns	Black	2017-01-11 10:11:16.539+00	2017-01-11 10:11:16.539+00
d617ddd2-ef76-4e7a-ac63-638ef2c2131c	Nike® Solid Tank Top	http://placehold.it/350x150	This is a Nike® Solid Tank Top.	Nike	Clothing & Accessories	Shoes	\N	Medium	Black White	2017-01-11 10:11:16.54+00	2017-01-11 10:11:16.54+00
20258f1a-b6a4-43b8-9a6b-bdedd2ac4066	Nike Lanyard []	http://placehold.it/350x150	This is a Nike Lanyard [].	Nike	Sporting Equipment	Shoes	\N	Ns	Sports Red	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
62a8fefd-2dd4-46aa-ae7a-23e040201695	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Sporting Equipment	Shoes	\N	S	WHT/YEL	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
6f986fb6-2f4e-4d53-94a1-686757a5a32c	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	L	Lt Crimson	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
87a0708b-446b-478b-8b8a-8af42c9d6a03	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	3x-large	Dgh	2017-01-11 10:11:16.542+00	2017-01-11 10:11:16.542+00
83d2cf5e-b7b6-40af-a25c-7e759a1a9a2c	Nike Heritage Performance Cap	http://placehold.it/350x150	This is a Nike Heritage Performance Cap.	nike	Women	Shoes	\N	\N	White	2017-01-11 10:11:16.542+00	2017-01-11 10:11:16.542+00
a19c3d98-2400-40fb-a400-5531beb78c57	Nike Remora Fem Goggle	http://placehold.it/350x150	This is a Nike Remora Fem Goggle.	Nike	Paintball & Airsoft	Shoes	\N	\N	Smoke/ Bright Citrus	2017-01-11 10:11:16.543+00	2017-01-11 10:11:16.543+00
f1aabf33-9607-401b-afcd-cefcfae47f85	Nike® Cuffed Beanie	http://placehold.it/350x150	This is a Nike® Cuffed Beanie.	Nike	Clothing	Shoes	\N	\N	Black White	2017-01-11 10:11:16.543+00	2017-01-11 10:11:16.543+00
5a159d01-37c3-4d8a-a7a1-7ea97f9a4313	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Men	Shoes	\N	1SZ 	TEAL	2017-01-11 10:11:16.544+00	2017-01-11 10:11:16.544+00
38827358-9703-4c65-a26d-5d99aa98f20d	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Men	Shoes	\N	1SZ 	FERN GREEN	2017-01-11 10:11:16.544+00	2017-01-11 10:11:16.544+00
f764400d-3afc-4e9f-b3a6-d9b42bde7cce	Nike Alpha Adapt Gymsack	http://placehold.it/350x150	This is a Nike Alpha Adapt Gymsack.	Nike	Outdoor Recreation	Shoes	\N	\N	Black/Black/White	2017-01-11 10:11:16.544+00	2017-01-11 10:11:16.544+00
dde04d9c-7c65-4e7c-b5d8-af96c8f1d225	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Men	Shoes	\N	1SZ 	DARK BLUE	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
571aedef-10ef-4729-8db2-60fd228fafbe	Nike Heritage Performance Cap	http://placehold.it/350x150	This is a Nike Heritage Performance Cap.	Nike	Hats & Caps	Shoes	\N	\N	White Black	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
662d745e-531d-4c70-a467-1f57878acdda	Nike Elbow Sleeve	http://placehold.it/350x150	This is a Nike Elbow Sleeve.	Nike	Clothing & Accessories	Shoes	\N	S	Black	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
d38591a5-a0cf-4dee-a5ea-d67b1c17d6ed	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Team Sports	Shoes	\N	XXLRG 	GRAY	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
e5f63225-7eb9-49ca-87f1-8e169fbb1f5c	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Team Sports	Shoes	\N	MED 	GREEN	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
5479d434-2405-46a5-9a3b-013713fe89c1	Boys Nike Microfleece Gloves	http://placehold.it/350x150	This is a Boys Nike Microfleece Gloves.	nike	Clothing	Shoes	\N	\N	Black	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
24173a99-f5c0-4504-a0c4-6c91d8943613	Nike® Heritage Cap	http://placehold.it/350x150	This is a Nike® Heritage Cap.	Nike	Sporting Equipment	Shoes	\N	\N	Dymcpkwhite	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
ed2af6ae-2903-4850-8ff7-b6805a59987c	Nike Kids []	http://placehold.it/350x150	This is a Nike Kids [].	Nike	Uncategorized	Shoes	\N	7 M US Toddler	LYON BLUE/MIDNIGHT NAVY/BLUE	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
a05c7a62-d11c-47d8-86db-936cd4cb74b1	Toddler Boy Nike Tee	http://placehold.it/350x150	This is a Toddler Boy Nike Tee.	nike	Boys	Shoes	\N	4T	Orange	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
41b2b527-30df-470f-a82d-d2d53110c11f	Nike® Wristband	http://placehold.it/350x150	This is a Nike® Wristband.	Nike	Sporting Equipment	Shoes	\N	One  Fits Most	Royal Blue-white	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
28d4655b-6407-46db-ad70-d391595941f7	Nike Mini Lakota Lacrosse Mini Stick	http://placehold.it/350x150	This is a Nike Mini Lakota Lacrosse Mini Stick.	Nike	Team Sports	Shoes	\N	\N	\N	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
e94564f0-18df-475f-9965-1e7aff4545b9	Nike Resolute Mirror Goggles	http://placehold.it/350x150	This is a Nike Resolute Mirror Goggles.	nike	Sporting Equipment	Shoes	\N	ONESIZE	Smoke Metallic	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
75989665-19f3-4e50-9d6d-5f3e3f28c44b	Nike® Wristband	http://placehold.it/350x150	This is a Nike® Wristband.	Nike	Sporting Equipment	Shoes	\N	One  Fits Most	Black-white	2017-01-11 10:11:16.551+00	2017-01-11 10:11:16.551+00
eeee769c-5803-4031-92f7-51131a319823	Nike® Wristband	http://placehold.it/350x150	This is a Nike® Wristband.	Nike	Sporting Equipment	Shoes	\N	One  Fits Most	Fireberryatomic Gr	2017-01-11 10:11:16.551+00	2017-01-11 10:11:16.551+00
9c7f03ef-c2e6-473d-a7de-dd400c93742f	Nike® Wristband	http://placehold.it/350x150	This is a Nike® Wristband.	Nike	Sporting Equipment	Shoes	\N	One  Fits Most	Obsidian-white	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
bd358b06-3759-44ac-82d3-e010b4fed067	Nike Park IV Socks	http://placehold.it/350x150	This is a Nike Park IV Socks.	Nike	Fan Shop	Shoes	\N	M	Voltage/Black	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
c2cec824-3214-45ad-8df4-63089c30b279	Nike Park III Sock []	http://placehold.it/350x150	This is a Nike Park III Sock [].	Nike	Clothing	Shoes	\N	Small	White	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
9b8eea93-37a6-4a3b-8875-5d86c556e0fa	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XS	Vivid Pink	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
2d13e3c1-2302-49ed-9cee-e8d0a784ef37	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	L	Purple/White/White	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
ec22e34f-1d23-4ceb-bb94-2f5c516d193d	Kids' Nike Featherlight Cap	http://placehold.it/350x150	This is a Kids' Nike Featherlight Cap.	NIKE	Sporting Equipment	Shoes	\N	\N	Black/White	2017-01-11 10:11:16.535+00	2017-01-11 10:11:16.535+00
682d40e7-e8ad-4513-b616-724996861cbc	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	X-large	Dgh	2017-01-11 10:11:16.535+00	2017-01-11 10:11:16.535+00
4ae36eaa-df72-46bf-917b-f1b7e4221717	Nike Tomboy Tank - Women's	http://placehold.it/350x150	This is a Nike Tomboy Tank - Women's.	Nike	Women	Shoes	\N	S	Black	2017-01-11 10:11:16.536+00	2017-01-11 10:11:16.536+00
7b6466bd-0aaa-49a5-ac64-900b4b1cea1b	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	XXL	Cardinal/White/White	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
f38ca69c-b266-4fa5-83c4-e40f26a1f27e	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	XXL	Navy/White/White	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
355f8d60-2146-4970-83bd-a29474b153e1	Nike Tomboy Tank - Women's	http://placehold.it/350x150	This is a Nike Tomboy Tank - Women's.	Nike	Women	Shoes	\N	L	Black	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
208002b3-f78e-40a4-9a68-c9350e440948	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XS	Obsidian	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
4623ddff-cfad-4984-af3a-a4416bd86103	Nike® Solid Tank Top	http://placehold.it/350x150	This is a Nike® Solid Tank Top.	Nike	Clothing & Accessories	Shoes	\N	Large	Black White	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
29babf3f-8ffa-4746-a87d-782a66c59d85	Nike Protegga Shield Shinpads []	http://placehold.it/350x150	This is a Nike Protegga Shield Shinpads [].	Nike	Shin Guards	Shoes	\N	Large	Black	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
bd906ed7-1467-4c4c-8e60-c6ef4cb899a7	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	X-small	Dgh	2017-01-11 10:11:16.539+00	2017-01-11 10:11:16.539+00
cb57069d-9f3b-414e-a964-d88f14267f9f	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	Medium	Dgh	2017-01-11 10:11:16.539+00	2017-01-11 10:11:16.539+00
9fc47232-24f6-41bd-bce3-aa260334ec57	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Sporting Equipment	Shoes	\N	M	WHT/YEL	2017-01-11 10:11:16.54+00	2017-01-11 10:11:16.54+00
1b8e5bc2-9aa4-4494-929e-252cc186c709	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	Xx-large	White	2017-01-11 10:11:16.54+00	2017-01-11 10:11:16.54+00
36cc4a21-8ca2-470a-9c5d-62a734b6c0e9	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Men	Shoes	\N	1SZ 	OBSIDIAN	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
a20485a2-bdea-424a-a041-1c8239f12b4e	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Sporting Equipment	Shoes	\N	S	SIL/BGR	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
a703cb3b-bfb6-4e8b-9d9e-da48d02c2d61	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XS	Vivid Pink	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
9f26b46c-0d5a-4327-942d-8f31e457623a	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	Small	Dgh	2017-01-11 10:11:16.542+00	2017-01-11 10:11:16.542+00
181173ce-7c73-41f6-93c9-3f41e0f29357	48 Nike Pd Soft	http://placehold.it/350x150	This is a 48 Nike Pd Soft.	Nike	Recycled & Used Balls	Shoes	\N	\N	\N	2017-01-11 10:11:16.542+00	2017-01-11 10:11:16.542+00
aab2c280-16f5-4bcf-bd47-ccc4b19e8af4	Nike Heritage Performance Cap	http://placehold.it/350x150	This is a Nike Heritage Performance Cap.	nike	Women	Shoes	\N	\N	Black White	2017-01-11 10:11:16.543+00	2017-01-11 10:11:16.543+00
bd70c844-52b7-4e89-93c3-1bc171cb3ad5	Nike Heritage Gymsack	http://placehold.it/350x150	This is a Nike Heritage Gymsack.	Nike	Gear	Shoes	\N	\N	Game Royal/Black/Black	2017-01-11 10:11:16.543+00	2017-01-11 10:11:16.543+00
688f6790-a7d5-447d-9308-9ce59e9135b9	Nike Victory Yoga Sling	http://placehold.it/350x150	This is a Nike Victory Yoga Sling.	Nike	Exercise & Fitness	Shoes	\N	\N	Black	2017-01-11 10:11:16.544+00	2017-01-11 10:11:16.544+00
20229425-5b96-4225-815e-51d5ce5f0cda	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Team Sports	Shoes	\N	LRG 	GRAY	2017-01-11 10:11:16.544+00	2017-01-11 10:11:16.544+00
e66d5d4c-dcf7-4362-8648-f90f4d4bda31	Nike Boys' Franchise Shorts	http://placehold.it/350x150	This is a Nike Boys' Franchise Shorts.	Nike	Clothing	Shoes	\N	S	\N	2017-01-11 10:11:16.544+00	2017-01-11 10:11:16.544+00
6b9a1c58-0741-4a46-8bfe-762428ad0fc2	Nike Elite Versatility Crew	http://placehold.it/350x150	This is a Nike Elite Versatility Crew.	Nike	Boys	Shoes	\N	M	Black/White	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
1a630502-fc50-4e95-9a26-21446853aa16	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Men	Shoes	\N	1SZ 	BLACK/WHITE	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
980f255c-da72-44ba-87e6-f4bd1d0c04ca	Nike Patella Band	http://placehold.it/350x150	This is a Nike Patella Band.	Nike	Exercise & Fitness	Shoes	\N	M	Black	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
f3cab714-803b-49e1-9969-7f61ccfc26e9	Nike SB	http://placehold.it/350x150	This is a Nike SB.	Nike SB	Clothing	Shoes	\N	SML 	BLACK/WHITE	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
1aa5204c-c852-4e03-97bb-bbcfe904055d	Nike Lanyard	http://placehold.it/350x150	This is a Nike Lanyard.	nike	Exercise & Fitness	Shoes	\N	ONESIZE	Obsidian White	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
a2ae915c-f200-471c-a18f-4a95b90fec10	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Men	Shoes	\N	1SZ 	WHITE/GOLD	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
f127e602-70cc-493a-8c37-84cae247b30d	Nike® Brasilia XL Backpack	http://placehold.it/350x150	This is a Nike® Brasilia XL Backpack.	Nike	Team Sports	Shoes	\N	\N	\N	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
daadd796-c1d6-493d-8012-011a28c80009	Nike Kids Legend Tee	http://placehold.it/350x150	This is a Nike Kids Legend Tee.	Nike	Novelty & Special Use	Shoes	\N	MEDIUM	White	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
7bfb4dcc-0665-42a8-a366-c682c9eddbfe	Nike Layup Shorts - Men's	http://placehold.it/350x150	This is a Nike Layup Shorts - Men's.	Nike	Clothing	Shoes	\N	XL	Obsidian/White	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
ff0b9b6a-691a-4378-9bec-98fa80d174a5	Nike Layup Shorts - Men's	http://placehold.it/350x150	This is a Nike Layup Shorts - Men's.	Nike	Clothing	Shoes	\N	S	White/Black	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
aaa6024e-a52b-4ec4-bff5-c44148563f69	Nike Vapor Select Backpack	http://placehold.it/350x150	This is a Nike Vapor Select Backpack.	Nike	Sporting Equipment	Shoes	\N	\N	Black/Anthracite/White	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
ebb68f69-641e-4abd-889c-18c6ee77a3ec	Nike Rally Capris - Women's	http://placehold.it/350x150	This is a Nike Rally Capris - Women's.	Nike	Women	Shoes	\N	L	Black/Black/White	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
f949b3e7-df7a-406f-9bc1-4af1dd46e51a	Nike® Wristband	http://placehold.it/350x150	This is a Nike® Wristband.	Nike	Sporting Equipment	Shoes	\N	One  Fits Most	Matte Silver-black	2017-01-11 10:11:16.551+00	2017-01-11 10:11:16.551+00
47cb1af1-7d6e-4aa5-8743-1cde9f060c56	Nike Girls Juniors Shorts	http://placehold.it/350x150	This is a Nike Girls Juniors Shorts.	NIKE	Clothing	Shoes	\N	XL	Black	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
bc4d380e-93cd-4cce-b665-d0f159e900c7	Nike Sparq Medium / Large Football	http://placehold.it/350x150	This is a Nike Sparq Medium / Large Football.	Nike	Sporting Equipment	Shoes	\N	\N	\N	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
a2f7006d-2417-44a2-ab34-c36b941f1d8a	Nike Braided Headband - Women's	http://placehold.it/350x150	This is a Nike Braided Headband - Women's.	Nike	Accessories	Shoes	\N	\N	Raspberry	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
35718fb2-ebfe-4f58-89b7-8cc424d524df	Nike Park III Sock []	http://placehold.it/350x150	This is a Nike Park III Sock [].	Nike	Clothing	Shoes	\N	Medium	Red	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
b3c6beb4-0499-4ea8-9d40-3d2a4a218985	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	L	Navy/White/White	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
b4893f8f-dbaf-4348-99fc-6fbd54c5893b	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	XL	Royal/White/White	2017-01-11 10:11:16.535+00	2017-01-11 10:11:16.535+00
3b7d7284-6c8a-4796-ad8e-1355f4c8d12a	Nike Heritage Gymsack	http://placehold.it/350x150	This is a Nike Heritage Gymsack.	Nike	Sporting Equipment	Shoes	\N	\N	Kumquat/White	2017-01-11 10:11:16.535+00	2017-01-11 10:11:16.535+00
a9b1b73b-2ced-4cd1-aa3d-e9f71a4c987b	Nike Layup Shorts - Men's	http://placehold.it/350x150	This is a Nike Layup Shorts - Men's.	Nike	Clothing	Shoes	\N	XXL	Black/White	2017-01-11 10:11:16.536+00	2017-01-11 10:11:16.536+00
31827641-1d69-419c-bdc7-bab6d3a7109d	Nike Heritage Gymsack	http://placehold.it/350x150	This is a Nike Heritage Gymsack.	Nike	Sporting Equipment	Shoes	\N	\N	Bleached Turq/Bleached Turq/White	2017-01-11 10:11:16.536+00	2017-01-11 10:11:16.536+00
dd50ed35-45a7-479d-aa77-8d76385ba048	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	S	Cardinal/White/White	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
59ca5690-a9f8-4e50-85f7-f06485afa9b1	Nike Mercurial Lite Shinguard	http://placehold.it/350x150	This is a Nike Mercurial Lite Shinguard.	Nike	Soccer	Shoes	\N	M	Black/Volt	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
0fc63024-8266-4290-939d-12217e5f7f32	Nike Tomboy Tank - Women's	http://placehold.it/350x150	This is a Nike Tomboy Tank - Women's.	Nike	Women	Shoes	\N	XL	Black	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
e5dcc958-08b0-4a87-b53a-d96d0d00e872	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	S	Spring Leaf	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
a3971a3a-0108-44ea-9969-656eeab0e430	Nike® Solid Tank Top	http://placehold.it/350x150	This is a Nike® Solid Tank Top.	Nike	Clothing & Accessories	Shoes	\N	Large	White Black	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
cc25a0e4-7d66-452e-b2a4-2cd0768a5b49	Nike Heritage Gymsack	http://placehold.it/350x150	This is a Nike Heritage Gymsack.	Nike	Clothing & Accessories	Shoes	\N	\N	Black	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
ae3dcb43-59df-4cdb-bbee-a6119a4193cf	Nike Therma-Fit Balaclava	http://placehold.it/350x150	This is a Nike Therma-Fit Balaclava.	Nike	Men	Shoes	\N	\N	Black	2017-01-11 10:11:16.539+00	2017-01-11 10:11:16.539+00
f3e14f7d-3fe4-4d90-ae10-627ae327a3bc	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	3x-large	White	2017-01-11 10:11:16.539+00	2017-01-11 10:11:16.539+00
7cf1cc8e-e3bb-4de1-af80-26165c5197ca	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	S	Chalk Blue	2017-01-11 10:11:16.54+00	2017-01-11 10:11:16.54+00
7aae463c-d74d-427c-ab04-d0234cab5514	Nike® Solid Tank Top	http://placehold.it/350x150	This is a Nike® Solid Tank Top.	Nike	Clothing & Accessories	Shoes	\N	Small	White Black	2017-01-11 10:11:16.54+00	2017-01-11 10:11:16.54+00
6d086f1d-1b2d-48ba-9551-1acdf5703e1f	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Men	Shoes	\N	1SZ 	BLUE	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
4fb3aa7b-ccf2-404d-95e2-eff40a51d299	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Sporting Equipment	Shoes	\N	L	WHT/YEL	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
8279f679-7f5f-4e25-bd3b-b6c26830c9ee	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	M	Chalk Blue	2017-01-11 10:11:16.542+00	2017-01-11 10:11:16.542+00
d4dc8e9e-e667-4912-ac07-cb362c7d6cb4	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Men	Shoes	\N	1SZ 	BLACK/BLACK	2017-01-11 10:11:16.542+00	2017-01-11 10:11:16.542+00
6ab9efc8-17eb-4820-8b28-569ce65f35ee	Nike 'LunarSpeed+' Running Shoe	http://placehold.it/350x150	This is a Nike 'LunarSpeed+' Running Shoe.	Nike	Athletic & Outdoor	Shoes	\N	\N	\N	2017-01-11 10:11:16.543+00	2017-01-11 10:11:16.543+00
eb9e516d-845a-4a1c-b106-6324211408ce	Nike Heritage Gymsack	http://placehold.it/350x150	This is a Nike Heritage Gymsack.	Nike	Gear	Shoes	\N	\N	Black/Dark Grey/Dark Grey	2017-01-11 10:11:16.543+00	2017-01-11 10:11:16.543+00
7dc7db03-e661-49a1-bad0-80f9dba14cb3	Nike Iowa Hawkeyes Backpack	http://placehold.it/350x150	This is a Nike Iowa Hawkeyes Backpack.	Nike	Sporting Equipment	Shoes	\N	BACKPACK	Black	2017-01-11 10:11:16.543+00	2017-01-11 10:11:16.543+00
317c0bf0-b9e4-4b35-b949-910d0eac9649	Nike Silicone BlendSwim Cap	http://placehold.it/350x150	This is a Nike Silicone BlendSwim Cap.	Nike	Swim Caps	Shoes	\N	\N	beige/khaki	2017-01-11 10:11:16.544+00	2017-01-11 10:11:16.544+00
5d301e80-a1c6-4fad-ac5f-1aa864d5965e	Nike Boys' Franchise Shorts	http://placehold.it/350x150	This is a Nike Boys' Franchise Shorts.	Nike	Clothing	Shoes	\N	M	\N	2017-01-11 10:11:16.544+00	2017-01-11 10:11:16.544+00
8961fa00-33e8-467e-b03c-26ce459bbc4e	Nike Boys' Franchise Shorts	http://placehold.it/350x150	This is a Nike Boys' Franchise Shorts.	Nike	Clothing	Shoes	\N	L	\N	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
079ee482-1e0f-48e8-9b04-8eb39a06187a	Nike® Hayward Futura Backpack	http://placehold.it/350x150	This is a Nike® Hayward Futura Backpack.	Nike	Leisure Sports & Games	Shoes	\N	\N	\N	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
279e8160-beb1-4500-8a7d-aa56f5735921	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Team Sports	Shoes	\N	SML 	BLUE	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
c09f2683-882e-4725-a63f-e186d05b9c39	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Team Sports	Shoes	\N	MED 	GRAY	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
c365f61d-1fd0-455c-902f-39d0dbe9455e	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Team Sports	Shoes	\N	SML 	GRAY	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
ce7eef99-6d5b-4883-bb14-82da88b79162	Nike Lanyard	http://placehold.it/350x150	This is a Nike Lanyard.	nike	Exercise & Fitness	Shoes	\N	ONESIZE	Pink White	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
13570d4b-1616-476f-9ba8-0c1ec8fa55e7	Nike® Heritage Cap	http://placehold.it/350x150	This is a Nike® Heritage Cap.	Nike	Sporting Equipment	Shoes	\N	\N	Whiteblack	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
2ab42398-dec2-46b1-a6f9-568cd7032ac5	Nike Ball Pump []	http://placehold.it/350x150	This is a Nike Ball Pump [].	Nike	Inflation Devices & Accessories	Shoes	\N	\N	Black	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
e168c70e-9fc1-49bb-8de1-7cd68f2d3ef9	Nike Kids []	http://placehold.it/350x150	This is a Nike Kids [].	Nike	Uncategorized	Shoes	\N	5 M US Toddler	LYON BLUE/MIDNIGHT NAVY/BLUE	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
e2930896-efab-44d2-9fe5-8684f358dfeb	Nike® Weighted Rope 2.0	http://placehold.it/350x150	This is a Nike® Weighted Rope 2.0.	Nike	Accessories	Shoes	\N	\N	\N	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
730de726-6e85-463a-a905-223bc71d433f	Nike Sphere Pants - Men's	http://placehold.it/350x150	This is a Nike Sphere Pants - Men's.	Nike	Clothing & Accessories	Shoes	\N	L	Black	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
a3787c09-e4d9-41aa-a98f-59e8ffbeb59d	Nike® Cable-Knit Beanie	http://placehold.it/350x150	This is a Nike® Cable-Knit Beanie.	Nike	Boys	Shoes	\N	\N	Unvi Red Black	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
6f6d7004-6af5-4d2a-a211-5fcd509f57dc	Nike Rally Capris - Women's	http://placehold.it/350x150	This is a Nike Rally Capris - Women's.	Nike	Women	Shoes	\N	XS	Black/Black/White	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
ae3b3ac3-4200-4d16-bea6-daa6ec22587f	Nike Braided Headband - Women's	http://placehold.it/350x150	This is a Nike Braided Headband - Women's.	Nike	Accessories	Shoes	\N	\N	Gamma Blue	2017-01-11 10:11:16.551+00	2017-01-11 10:11:16.551+00
32b4185a-1105-46ae-8c94-66a538c64bab	NIKE METHOD 003 Putter []	http://placehold.it/350x150	This is a NIKE METHOD 003 Putter [].	Nike	Putters	Shoes	\N	\N	\N	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
95ccf7ae-c654-4473-b0f2-53981d3ef106	Nike HyperFuel Water Bottle	http://placehold.it/350x150	This is a Nike HyperFuel Water Bottle.	Nike	Men	Shoes	\N	24	Photo Blue	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
cf7a1a40-17fe-426b-8b8a-56f86d751b6b	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Medium	Black	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
a14184a5-e8f3-4b19-a104-6da9e78c7130	Nike Sport Strap	http://placehold.it/350x150	This is a Nike Sport Strap.	Nike	Portable Audio & Video	Shoes	\N	\N	Black/Black	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
802a2e89-07ab-4e50-8913-6d1e1802ca4a	Nike Lunch Tote	http://placehold.it/350x150	This is a Nike Lunch Tote.	nike	Kitchen & Dining	Shoes	\N	\N	Yellow	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
4ec20e12-bc8a-46e0-a174-9f3c8e9d76a0	Nike Lean Waist Pack	http://placehold.it/350x150	This is a Nike Lean Waist Pack.	nike	Exercise & Fitness	Shoes	\N	\N	Vlt/Blk	2017-01-11 10:11:16.535+00	2017-01-11 10:11:16.535+00
abe9ccef-9de4-4cad-a6ad-482021d6592b	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	Large	Dgh	2017-01-11 10:11:16.535+00	2017-01-11 10:11:16.535+00
b00ae9f7-6997-4a1d-b6f2-d865ee323277	Nike Vault Henley - Men's	http://placehold.it/350x150	This is a Nike Vault Henley - Men's.	Nike	Tops & Tees	Shoes	\N	XXL	Green	2017-01-11 10:11:16.536+00	2017-01-11 10:11:16.536+00
88b7b75e-c84f-475e-a235-77935f2d2375	Nike Insulated Lunch Tote	http://placehold.it/350x150	This is a Nike Insulated Lunch Tote.	nike	Luggage & Bags	Shoes	\N	\N	Gray	2017-01-11 10:11:16.536+00	2017-01-11 10:11:16.536+00
17811427-a32d-4ba0-9d31-9c2cb78b54d9	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	XXL	Royal/White/White	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
107abda9-df30-4564-8761-d2a6193da5fb	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	M	Scarlet/White/White	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
df312b6f-b5f9-45c6-a329-f354dffe9f8d	Nike Tomboy Tank - Women's	http://placehold.it/350x150	This is a Nike Tomboy Tank - Women's.	Nike	Women	Shoes	\N	M	Black	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
16943f63-965c-467b-816e-5da77d2437a4	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	X-large	White	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
acf52550-231c-41b4-ae96-353618de7246	Nike Heritage Script Cap	http://placehold.it/350x150	This is a Nike Heritage Script Cap.	Nike	Headbands	Shoes	\N	\N	\N	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
2d63b41b-4d58-4fe7-9e78-ae0a2085deff	Nike Mercurial Lite ShinGuards	http://placehold.it/350x150	This is a Nike Mercurial Lite ShinGuards.	Nike	Sporting Equipment	Shoes	\N	XLarge	WHT/RED	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
bd86215b-d49a-4635-81d2-791d16277229	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XS	Obsidian	2017-01-11 10:11:16.539+00	2017-01-11 10:11:16.539+00
6aead4d5-b0c4-44b7-add3-75a16d721354	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Men	Shoes	\N	1SZ 	DARK GRAY	2017-01-11 10:11:16.539+00	2017-01-11 10:11:16.539+00
b2ec2bd9-459c-43bc-818a-82dcf3144cbe	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Sporting Equipment	Shoes	\N	XL	WHT/YEL	2017-01-11 10:11:16.54+00	2017-01-11 10:11:16.54+00
54b2992e-b985-4087-8650-e689b3dc8b2e	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Sporting Equipment	Shoes	\N	L	SIL/BGR	2017-01-11 10:11:16.54+00	2017-01-11 10:11:16.54+00
dbb1109c-8463-4ecf-9ca0-807c2a50476b	Nike Featherlight Adjustable Cap	http://placehold.it/350x150	This is a Nike Featherlight Adjustable Cap.	Nike	Sporting Equipment	Shoes	\N	\N	Black/Black/White	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
ef2a476b-fe95-4002-bb13-594009c4ea20	Nike Tomboy Tank - Women's	http://placehold.it/350x150	This is a Nike Tomboy Tank - Women's.	Nike	Women	Shoes	\N	XS	Black	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
d6b9827b-d954-49b3-a92e-dfaf7f215384	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	M	Lt Crimson	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
60ee73f3-c1b6-4d13-80f6-e8f2883a90e4	Nike Heritage Performance Cap	http://placehold.it/350x150	This is a Nike Heritage Performance Cap.	nike	Women	Shoes	\N	\N	University Red	2017-01-11 10:11:16.542+00	2017-01-11 10:11:16.542+00
2920db87-ef14-4ffe-8f1e-80393e5a1ec4	Nike® Floral Tank Top	http://placehold.it/350x150	This is a Nike® Floral Tank Top.	Nike	Women	Shoes	\N	Large	633 Rio	2017-01-11 10:11:16.542+00	2017-01-11 10:11:16.542+00
0d95949f-6d2e-4ff0-bf8c-02d8ec7cb33a	Nike Elite Versatility Crew	http://placehold.it/350x150	This is a Nike Elite Versatility Crew.	Nike	Boys	Shoes	\N	L	Black/White	2017-01-11 10:11:16.543+00	2017-01-11 10:11:16.543+00
dae65dd3-142d-41eb-9322-76957af1c932	Nike Lanyard	http://placehold.it/350x150	This is a Nike Lanyard.	NIKE	Sporting Equipment	Shoes	\N	\N	Black/White	2017-01-11 10:11:16.543+00	2017-01-11 10:11:16.543+00
29a4ce6c-806b-4e8b-a6ca-ff6da6de135a	Nike Elbow Sleeve	http://placehold.it/350x150	This is a Nike Elbow Sleeve.	Nike	Clothing & Accessories	Shoes	\N	M	Black	2017-01-11 10:11:16.544+00	2017-01-11 10:11:16.544+00
5b697c27-a99d-431c-9e4c-62d1b63e4bc0	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Men	Shoes	\N	1SZ 	RED/WHT/BLUE	2017-01-11 10:11:16.544+00	2017-01-11 10:11:16.544+00
7f80490e-4ede-4c01-a885-4fd126744ce8	Nike Hydrowave Jr. Goggles	http://placehold.it/350x150	This is a Nike Hydrowave Jr. Goggles.	nike	Boys	Shoes	\N	\N	Pink	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
587b0542-615e-4162-99aa-ee3b3bcc5d4c	Nike Elite Versatility Crew	http://placehold.it/350x150	This is a Nike Elite Versatility Crew.	Nike	Boys	Shoes	\N	XL	Black/White	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
a797e6d3-fbce-48ef-946d-ffd9adcbe860	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Team Sports	Shoes	\N	XXLRG 	BLUE	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
49748671-9936-4845-9a54-cf977e4f531b	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Team Sports	Shoes	\N	LRG 	BLUE	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
01f7f25d-8176-4c0f-a3c1-3edc6dad8d31	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Team Sports	Shoes	\N	XLG 	HEATHER GREY	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
6eaa7b3d-8a2e-4dc6-a028-85dea7f45227	Nike Rally Sleeveless Dress	http://placehold.it/350x150	This is a Nike Rally Sleeveless Dress.	Nike	Women	Shoes	\N	S	Black	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
8fe1a244-c8d8-47cf-93ef-89333294f0f0	Nike Kids Legend Tee	http://placehold.it/350x150	This is a Nike Kids Legend Tee.	Nike	Novelty & Special Use	Shoes	\N	LARGE	Black	2017-01-11 10:11:16.547+00	2017-01-11 10:11:16.547+00
8abfacdb-d89c-4218-a062-62b94224d504	Nike Elbow Sleeve	http://placehold.it/350x150	This is a Nike Elbow Sleeve.	nike	Exercise & Fitness	Shoes	\N	S	Black White	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
e4e21259-8ddd-453b-b40a-6ad2d5271984	Toddler Boy Nike Tee	http://placehold.it/350x150	This is a Toddler Boy Nike Tee.	nike	Boys	Shoes	\N	2T	Orange	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
9f8a46ab-897d-400d-899a-a676e738d628	Nike Rally Sleeveless Dress	http://placehold.it/350x150	This is a Nike Rally Sleeveless Dress.	Nike	Women	Shoes	\N	M	Black	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
319f6927-3f70-448c-9893-4ebe5cfad7a1	Nike Essential Yoga Block Grey	http://placehold.it/350x150	This is a Nike Essential Yoga Block Grey.	Nike	Blocks	Shoes	\N	\N	\N	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
8db1659b-d1fe-413b-a712-60da00ee123e	Nike Easter Snapback - Men's	http://placehold.it/350x150	This is a Nike Easter Snapback - Men's.	Nike	Men	Shoes	\N	\N	Black/White	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
62a2220c-f738-4949-8deb-8c64cb12f1c5	Nike Rally Capris - Women's	http://placehold.it/350x150	This is a Nike Rally Capris - Women's.	Nike	Women	Shoes	\N	S	Black/White	2017-01-11 10:11:16.551+00	2017-01-11 10:11:16.551+00
5f9fa28c-6fda-457e-b988-0834d23e0f81	Nike® Wristband	http://placehold.it/350x150	This is a Nike® Wristband.	Nike	Sporting Equipment	Shoes	\N	One  Fits Most	Varsity Red-white	2017-01-11 10:11:16.551+00	2017-01-11 10:11:16.551+00
c1269425-b3f2-466f-8944-9c6ac3721f57	Nike® Wristband	http://placehold.it/350x150	This is a Nike® Wristband.	Nike	Sporting Equipment	Shoes	\N	One  Fits Most	White-black	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
aec39f6c-396d-4084-ab25-82c374438fda	Nike Sport Strap	http://placehold.it/350x150	This is a Nike Sport Strap.	Nike	Portable Audio & Video	Shoes	\N	\N	Volt/Black	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
c1dc3f3b-c5aa-4e68-99ce-c9f454db35a7	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Large	Pinenut	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
4c69c555-58cd-452f-af22-458f4082a418	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Large	Navy	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
9e0dc6e6-a676-47f4-a904-a55454af5324	Nike Insulated Lunch Tote	http://placehold.it/350x150	This is a Nike Insulated Lunch Tote.	nike	Luggage & Bags	Shoes	\N	\N	Black	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
dc30bb0e-6084-4b2a-812b-272b94a2592c	Nike Remora Mirror Goggles	http://placehold.it/350x150	This is a Nike Remora Mirror Goggles.	nike	Swimming	Shoes	\N	\N	Metalic Blue	2017-01-11 10:11:16.534+00	2017-01-11 10:11:16.534+00
3dfd3fbb-ecb9-43d2-ae0c-af8d4fbdf7fa	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	L	Vivid Pink	2017-01-11 10:11:16.535+00	2017-01-11 10:11:16.535+00
d803353e-e4c3-461c-8b0b-8fa20fcc1ac3	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	Small	White	2017-01-11 10:11:16.536+00	2017-01-11 10:11:16.536+00
85d02162-8c3e-41e1-901e-d5344b143663	Nike Lunar Sculpt Sneaker	http://placehold.it/350x150	This is a Nike Lunar Sculpt Sneaker.	Nike	Boys	Shoes	\N	8.5	ORANGE	2017-01-11 10:11:16.536+00	2017-01-11 10:11:16.536+00
a53b68b1-d0b6-4d30-92ee-5359037b47df	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	M	Cardinal/White/White	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
c15dd93f-34ea-435b-9c81-fcd67aa19faf	Nike Elite Shorts - Women's	http://placehold.it/350x150	This is a Nike Elite Shorts - Women's.	Nike	Sporting Equipment	Shoes	\N	XS	Scarlet/White/White	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
fef9e07c-073e-4f34-98cb-f5a33ee9a375	Nike Heritage Gymsack	http://placehold.it/350x150	This is a Nike Heritage Gymsack.	Nike	Sporting Equipment	Shoes	\N	\N	Dark Ash/Dark Ash/White	2017-01-11 10:11:16.537+00	2017-01-11 10:11:16.537+00
7262511f-2364-4015-aa0d-039d472daa5c	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	M	Vivid Pink	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
4ec7c266-f4c3-40c5-a026-20b36e990f65	Nike® Solid Tank Top	http://placehold.it/350x150	This is a Nike® Solid Tank Top.	Nike	Clothing & Accessories	Shoes	\N	Small	Black White	2017-01-11 10:11:16.538+00	2017-01-11 10:11:16.538+00
f29b05ac-273e-4e1d-879c-5d8c56409791	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XL	Lt Crimson	2017-01-11 10:11:16.539+00	2017-01-11 10:11:16.539+00
4f6a2428-c2db-4063-a63f-72da9d81d640	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	S	Lt Crimson	2017-01-11 10:11:16.539+00	2017-01-11 10:11:16.539+00
80c86acb-a342-4b1a-8e08-ec3f11ee20e9	Nike® Avenue Tee	http://placehold.it/350x150	This is a Nike® Avenue Tee.	Nike	Clothing & Accessories	Shoes	\N	Large	White	2017-01-11 10:11:16.539+00	2017-01-11 10:11:16.539+00
1f249e6d-ae3a-4439-8cc4-7ff59595f1c2	Nike Layup Shorts - Men's	http://placehold.it/350x150	This is a Nike Layup Shorts - Men's.	Nike	Clothing	Shoes	\N	S	Black/Volt	2017-01-11 10:11:16.54+00	2017-01-11 10:11:16.54+00
8f82ead3-4be0-41b3-bbf6-623005521e39	Nike® Solid Tank Top	http://placehold.it/350x150	This is a Nike® Solid Tank Top.	Nike	Clothing & Accessories	Shoes	\N	Medium	White Black	2017-01-11 10:11:16.54+00	2017-01-11 10:11:16.54+00
a5210422-eb54-4e10-99c4-9606c464b1cd	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Men	Shoes	\N	1SZ 	BLUE	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
1a045fbd-81f1-4da0-a949-ff27f6c4bbae	Nike Mercurial Lite	http://placehold.it/350x150	This is a Nike Mercurial Lite.	Nike	Sporting Equipment	Shoes	\N	M	SIL/BGR	2017-01-11 10:11:16.541+00	2017-01-11 10:11:16.541+00
54414fca-3006-45e4-8641-45acc794b4e7	Nike Balance Tank - Women's	http://placehold.it/350x150	This is a Nike Balance Tank - Women's.	Nike	Women	Shoes	\N	XS	Lt Crimson	2017-01-11 10:11:16.542+00	2017-01-11 10:11:16.542+00
719490dc-205f-439b-8393-aa775860cf1f	Nike Remora Fem Goggle	http://placehold.it/350x150	This is a Nike Remora Fem Goggle.	Nike	Paintball & Airsoft	Shoes	\N	\N	Neon Turquoise	2017-01-11 10:11:16.542+00	2017-01-11 10:11:16.542+00
c94d4788-e887-49f0-bdd3-fc1bf980f893	Nike Rio Shorts [Large]	http://placehold.it/350x150	This is a Nike Rio Shorts [Large].	Nike	Uncategorized	Shoes	\N	Large	Black	2017-01-11 10:11:16.542+00	2017-01-11 10:11:16.542+00
7a2f9ee5-bc27-4935-b285-0f1a1a2af2e2	Nike® Floral Tank Top	http://placehold.it/350x150	This is a Nike® Floral Tank Top.	Nike	Clothing & Accessories	Shoes	\N	Large	100 White	2017-01-11 10:11:16.543+00	2017-01-11 10:11:16.543+00
34453d0c-8c93-4eb0-89f8-b8b27c4b6d56	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Men	Shoes	\N	1SZ 	GRAY	2017-01-11 10:11:16.543+00	2017-01-11 10:11:16.543+00
0a7b6f95-78c0-4b4e-940f-7deaf7ce7dbf	Nike Elite Versatility Crew	http://placehold.it/350x150	This is a Nike Elite Versatility Crew.	Nike	Boys	Shoes	\N	S	Black/White	2017-01-11 10:11:16.544+00	2017-01-11 10:11:16.544+00
91d915e3-8755-4c4c-91ed-3f535b70a6bd	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Small	Cornsilk	2017-01-11 10:11:16.544+00	2017-01-11 10:11:16.544+00
8247f821-99a4-4f41-b84a-650af78773f6	Nike Remora M Competition Goggles	http://placehold.it/350x150	This is a Nike Remora M Competition Goggles.	Nike	Sporting Equipment	Shoes	\N	\N	\N	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
c99efaa8-ec0f-44fe-8382-bd4b11e624c9	Nike® Floral Tank Top	http://placehold.it/350x150	This is a Nike® Floral Tank Top.	Nike	Clothing & Accessories	Shoes	\N	Large	405 Ltretr	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
bcb37033-8773-4125-98f0-5a62dca51ae6	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Team Sports	Shoes	\N	XLG 	GRAY	2017-01-11 10:11:16.545+00	2017-01-11 10:11:16.545+00
1fba5fb5-163b-4c45-9944-74ca14232437	Nike SB	http://placehold.it/350x150	This is a Nike SB.	nike-sb	Team Sports	Shoes	\N	XLG 	GREEN	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
ed084ac2-c0a7-4e9b-99a3-38dd46427008	Nike Patella Band	http://placehold.it/350x150	This is a Nike Patella Band.	Nike	Exercise & Fitness	Shoes	\N	L	Black	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
450c31fb-70fd-4b3c-9f77-571bc9c9f1a7	Nike Hyper Elite Jersey	http://placehold.it/350x150	This is a Nike Hyper Elite Jersey.	Nike	Team Sports	Shoes	\N	S	White/Purple	2017-01-11 10:11:16.546+00	2017-01-11 10:11:16.546+00
2f1637a7-a512-4848-98a0-a43d2c8fed55	Nike® Heritage Cap	http://placehold.it/350x150	This is a Nike® Heritage Cap.	Nike	Sporting Equipment	Shoes	\N	\N	Blackwhite	2017-01-11 10:11:16.547+00	2017-01-11 10:11:16.547+00
e0884557-62fa-4a2e-ad99-6f52a5c22d44	Nike Pro Leggings	http://placehold.it/350x150	This is a Nike Pro Leggings.	Nike	Active Pants	Shoes	\N	S	Black	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
38916a94-d5e1-4466-818f-d776d8c01d63	Nike® Pom Beanie	http://placehold.it/350x150	This is a Nike® Pom Beanie.	Nike	Clothing & Accessories	Shoes	\N	\N	Obsidian/purple	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
44e6da84-c10f-4e3c-8609-87ea75b7d6c9	Nike Kids []	http://placehold.it/350x150	This is a Nike Kids [].	Nike	Uncategorized	Shoes	\N	9 M US Toddler	LYON BLUE/MIDNIGHT NAVY/BLUE	2017-01-11 10:11:16.549+00	2017-01-11 10:11:16.549+00
f041bffd-6d21-422a-a1c9-b9deb7037a53	Nike Sphere Pants - Men's	http://placehold.it/350x150	This is a Nike Sphere Pants - Men's.	Nike	Clothing & Accessories	Shoes	\N	S	Black	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
6f1fe934-c0aa-4fed-9790-46564e0e9a1d	Nike Black Lunch Tote	http://placehold.it/350x150	This is a Nike Black Lunch Tote.	Nike	Outdoor Recreation	Shoes	\N	\N	Black	2017-01-11 10:11:16.55+00	2017-01-11 10:11:16.55+00
103f98a1-deb2-4174-8ea2-e7483a6f7a72	Nike Layup Shorts - Men's	http://placehold.it/350x150	This is a Nike Layup Shorts - Men's.	Nike	Clothing	Shoes	\N	S	Obsidian/White	2017-01-11 10:11:16.551+00	2017-01-11 10:11:16.551+00
ae1208b3-1d8d-4937-b094-6dbe48fdaca2	Nike Braided Headband - Women's	http://placehold.it/350x150	This is a Nike Braided Headband - Women's.	Nike	Accessories	Shoes	\N	\N	Black	2017-01-11 10:11:16.551+00	2017-01-11 10:11:16.551+00
e0ea3fde-1e2e-4711-b545-ac518dede207	Nike Netherlands Supporter Ball []	http://placehold.it/350x150	This is a Nike Netherlands Supporter Ball [].	Nike	Balls	Shoes	\N	5	\N	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
0b7fd915-9ac3-4bc5-943e-115cf2729a03	Nike Rally Capris - Women's	http://placehold.it/350x150	This is a Nike Rally Capris - Women's.	Nike	Women	Shoes	\N	M	Black/Black/White	2017-01-11 10:11:16.552+00	2017-01-11 10:11:16.552+00
0313dca5-3568-4aa5-9d78-f4890cd4b835	Nike Park IV Socks	http://placehold.it/350x150	This is a Nike Park IV Socks.	Nike	Fan Shop	Shoes	\N	L	Voltage/Black	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
ecb7468f-4347-4082-8c68-99d627949b7e	Nike Park III Sock []	http://placehold.it/350x150	This is a Nike Park III Sock [].	Nike	Clothing	Shoes	\N	Medium	Royal	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
b13392bf-5ddb-497e-98c4-4778ac4b3c9b	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Medium	Cornsilk	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
849a04aa-5200-48ed-bcc5-8a14b845e631	Nike Park Guard [width :]	http://placehold.it/350x150	This is a Nike Park Guard [width :].	Nike	Sporting Equipment	Shoes	\N	L	White/White\\/Black	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
2bd4e3ac-5d77-4206-97af-c786b08e8155	Nike Remora III Goggles	http://placehold.it/350x150	This is a Nike Remora III Goggles.	Nike	Goggles	Shoes	\N	\N	\N	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
7315ee25-72a2-4fd6-b5a4-87c4c6b901c0	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Small	Pinenut	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
d185040d-89ac-4819-8aed-c2555b375cb3	Nike Nike Revolution	http://placehold.it/350x150	This is a Nike Nike Revolution.	Nike	Men	Shoes	\N	\N	\N	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
b6a7444c-ed91-4cbc-b8b0-14f02e484b97	Nike Kids []	http://placehold.it/350x150	This is a Nike Kids [].	Nike	Walking	Shoes	\N	10 M US Toddler	SPARK/WHITE-VOLTAGE CHERRY-BLACK	2017-01-11 10:11:16.555+00	2017-01-11 10:11:16.555+00
8dd0454e-07d1-453f-8b9a-97fb235fbe4d	Nike Vintage Gym Dress	http://placehold.it/350x150	This is a Nike Vintage Gym Dress.	Nike	Women	Shoes	\N	S	Black	2017-01-11 10:11:16.555+00	2017-01-11 10:11:16.555+00
efc5e0cb-fd51-4707-ac60-07e950ed5dd0	NIKE METHOD 005 Putter []	http://placehold.it/350x150	This is a NIKE METHOD 005 Putter [].	Nike	Putters	Shoes	\N	\N	\N	2017-01-11 10:11:16.556+00	2017-01-11 10:11:16.556+00
87fca63c-4488-4d2a-bd5a-432828a73a7b	Nike Pro Capris - Women's	http://placehold.it/350x150	This is a Nike Pro Capris - Women's.	Nike	Women	Shoes	\N	XS	Black/Volt	2017-01-11 10:11:16.556+00	2017-01-11 10:11:16.556+00
7af9ae8f-c173-42bf-9d11-2960ef78acf6	NIKE HydroWave II Goggles []	http://placehold.it/350x150	This is a NIKE HydroWave II Goggles [].	Nike	Goggles	Shoes	\N	AC	Pink	2017-01-11 10:11:16.556+00	2017-01-11 10:11:16.556+00
60c8336d-124a-44d3-8ae8-fedd7dbcbc06	NIKE METHOD 003 Putter []	http://placehold.it/350x150	This is a NIKE METHOD 003 Putter [].	Nike	Putters	Shoes	\N	\N	\N	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
fe9c9709-17cb-48ca-b2de-7d76f7c25d8f	Nike Kids []	http://placehold.it/350x150	This is a Nike Kids [].	Nike	Sandals	Shoes	\N	9 M US Toddler	Multicolor	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
5b17ea67-75ad-4950-ab47-e02cf13d75ae	Nike+ SportBand	http://placehold.it/350x150	This is a Nike+ SportBand.	Nike	Sport Watches	Shoes	\N	\N	Black/Blue Glow	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
9a2a1816-f2be-4372-b08a-a7d5e779306e	Nike Essential Yoga Block	http://placehold.it/350x150	This is a Nike Essential Yoga Block.	Nike	Women	Shoes	\N	\N	Anthracite	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
a4a78f64-dca3-421f-98ac-e9f488cdfd5a	Nike+ SportBand	http://placehold.it/350x150	This is a Nike+ SportBand.	Nike	Sport Watches	Shoes	\N	\N	Black/Varsity Maize	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
d9af8f4b-90ea-4a60-a2b9-75e525db5357	Nike Inflict	http://placehold.it/350x150	This is a Nike Inflict.	Nike	Fashion Sneakers	Shoes	\N	6 D(M) US	Red/black	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
50d26ef8-3f88-4285-a0bf-3308d13ef411	NIKE Mens INDEE II	http://placehold.it/350x150	This is a NIKE Mens INDEE II.	Nike	Men	Shoes	\N	\N	\N	2017-01-11 10:11:16.559+00	2017-01-11 10:11:16.559+00
7aeaa706-664f-483a-bd7d-2ea757c6bbf7	Nike Tempo	http://placehold.it/350x150	This is a Nike Tempo.	Nike	Clothing	Shoes	\N	Small	389	2017-01-11 10:11:16.56+00	2017-01-11 10:11:16.56+00
05df7c71-9414-406d-9141-589fb840401b	Nike Sport Water Bottle	http://placehold.it/350x150	This is a Nike Sport Water Bottle.	Nike	Sporting Equipment	Shoes	\N	\N	Clear	2017-01-11 10:11:16.56+00	2017-01-11 10:11:16.56+00
1da37900-fa4d-4025-88d5-2e6bcbf80305	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	XS	Court Purple/Reflective Silver	2017-01-11 10:11:16.561+00	2017-01-11 10:11:16.561+00
745a95df-c6d7-4921-9b99-b9487a3a0352	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	S	Space Blue/Dusty Cactus/Dusty Cactus/Silver	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
7d3b0282-37b7-4da0-9308-f299345e162a	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Active	Shoes	\N	XS	Space Blue/Dusty Cactus/Dusty Cactus/Matte Silver	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
28b4ee87-5d6b-46a0-a746-02eceb8a9736	Nike Girls' Victory Polo []	http://placehold.it/350x150	This is a Nike Girls' Victory Polo [].	Nike	Boys	Shoes	\N	Large	Game Royal	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
f30195b4-3f0b-41c0-b80c-ad8cb0093920	Nike Lunareclipse+	http://placehold.it/350x150	This is a Nike Lunareclipse+.	Nike	Men	Shoes	\N	\N	\N	2017-01-11 10:11:16.563+00	2017-01-11 10:11:16.563+00
b250c1c3-8db7-4b6c-848c-9870bfa1a40f	Nike Gung	http://placehold.it/350x150	This is a Nike Gung.	Nike	Clothing & Accessories	Shoes	\N	M	Black/White/White	2017-01-11 10:11:16.564+00	2017-01-11 10:11:16.564+00
095d5c25-253c-4a11-a0da-4c79bf374b03	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	M	Black/Heather/Reflective Silver	2017-01-11 10:11:16.564+00	2017-01-11 10:11:16.564+00
5cd7c8fe-2b7e-45e1-ae77-7b3c6b11b638	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	M	Black/Reflective Silver	2017-01-11 10:11:16.564+00	2017-01-11 10:11:16.564+00
f937ae22-a7b8-4f80-bfc6-97ef42a1a512	Nike Isolate []	http://placehold.it/350x150	This is a Nike Isolate [].	Nike	Fashion Sneakers	Shoes	\N	13 D(M) US	Black / White	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
74274a83-ad7a-4bbb-9ae8-f4489ab599e6	Nike Girls' Training Hoodie	http://placehold.it/350x150	This is a Nike Girls' Training Hoodie.	Nike	Baby	Shoes	\N	M	Med Gray	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
f8af8b58-6eb1-44d2-9c4b-d7ddcc7a2ff9	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	M	Team Red/Deep Burgundy/Reflective Silver	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
f87e8257-6553-4d74-95a5-eb55e93f3cc3	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	\N	Royal/White	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
869fc986-3d42-4aa4-a80d-fc086f6f3857	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	XL	Black/Black/Reflective Silver	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
6cbc9c4e-f47c-4eb7-a434-959a50acf4c3	Nike Girls' Victory Polo []	http://placehold.it/350x150	This is a Nike Girls' Victory Polo [].	Nike	Boys	Shoes	\N	Small	Black	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
16dcaa36-d88a-4dac-bb37-8f0a44c8c52c	Nike Girls' Victory Polo []	http://placehold.it/350x150	This is a Nike Girls' Victory Polo [].	Nike	Boys	Shoes	\N	Large	Black	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
ac721598-b7ef-4390-9197-6fb495408746	NIKE Mens 105	http://placehold.it/350x150	This is a NIKE Mens 105.	Nike	Men	Shoes	\N	\N	\N	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
be31b2d7-e1df-4a19-a308-2f5208178a0f	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Sporting Equipment	Shoes	\N	L	Bleached Turquoise/Court Purple/White	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
69855fa2-cd36-448e-801d-82af40780f82	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	S	Light Magenta/Heather/Reflective Silver	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
90237315-f6dc-461c-b79b-74652fad82a7	Nike Hustle	http://placehold.it/350x150	This is a Nike Hustle.	Nike	Skateboarding	Shoes	\N	12 D(M) US	Black / Midnight Fog	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
81f062ba-a927-4eed-9c9e-d75f165291b3	Nike Lunarmax+	http://placehold.it/350x150	This is a Nike Lunarmax+.	Nike	Fashion Sneakers	Shoes	\N	12 D(M) US	Cool Grey / Black-Anthracite-Team Orange	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
13ce2536-6262-4247-8449-7aa04a945096	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	M	Black/Black/Anthracite/Matte Silver	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
ae6d0621-584f-4084-b74a-4cec2862a284	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Running	Shoes	\N	L	Action Red/Deep Burgundy	2017-01-11 10:11:16.57+00	2017-01-11 10:11:16.57+00
e65ff2b2-20c4-4d95-8b76-1e1ffc0096b7	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Large	Cornsilk	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
d74d978f-a8ff-47cf-99ed-414e007117bb	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Medium	Navy	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
bb5aef7e-2058-44cf-a643-2fd2e1a43651	Nike Fury Tapered Headband	http://placehold.it/350x150	This is a Nike Fury Tapered Headband.	NIKE	Sporting Equipment	Shoes	\N	\N	Black/White	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
14a05d47-db12-432a-9fa9-b20327928e8d	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Small	Navy	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
85402d3b-c810-465c-bdc4-cfcad34fd668	Nike Tour Accuracy	http://placehold.it/350x150	This is a Nike Tour Accuracy.	Nike	Spin Balls	Shoes	\N	\N	White	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
7b0709fe-7299-43ef-9329-9e61c6435485	Nike Pro Capris - Women's	http://placehold.it/350x150	This is a Nike Pro Capris - Women's.	Nike	Women	Shoes	\N	XL	White/Black/White	2017-01-11 10:11:16.555+00	2017-01-11 10:11:16.555+00
18ebd349-732b-4f5b-a4f9-ea51af4784f5	Nike Vintage Gym Dress	http://placehold.it/350x150	This is a Nike Vintage Gym Dress.	Nike	Women	Shoes	\N	XS	Black	2017-01-11 10:11:16.555+00	2017-01-11 10:11:16.555+00
5bfc7754-9e1c-4ded-adf5-d362c3230d5d	Nike Guard Lock Sleeve	http://placehold.it/350x150	This is a Nike Guard Lock Sleeve.	Nike	Sporting Equipment	Shoes	\N	S	White/Black	2017-01-11 10:11:16.555+00	2017-01-11 10:11:16.555+00
534cf063-9267-44a4-b993-1d4eefca6c0e	Nike Pro Capris - Women's	http://placehold.it/350x150	This is a Nike Pro Capris - Women's.	Nike	Women	Shoes	\N	M	White/Black/White	2017-01-11 10:11:16.556+00	2017-01-11 10:11:16.556+00
7684520a-e7cd-4460-b8a4-f6e9a6accbe6	Nike Graphic Hoodie - Men's	http://placehold.it/350x150	This is a Nike Graphic Hoodie - Men's.	Nike	Men	Shoes	\N	M	Red/Black	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
16911834-4660-480e-93bd-b843def4bacf	Nike 4128	http://placehold.it/350x150	This is a Nike 4128.	Nike	Reading Glasses	Shoes	\N	54	Black	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
bd696755-5453-4c6b-a0de-62712f10d36f	Nike Scrimmage Vest IIII	http://placehold.it/350x150	This is a Nike Scrimmage Vest IIII.	Nike	Team Sports	Shoes	\N	\N	Pro Gold/Black	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
4ef529f1-4e72-4b47-9ad1-8522cb9b4c5f	Nike J Guard [width :]	http://placehold.it/350x150	This is a Nike J Guard [width :].	Nike	Sporting Equipment	Shoes	\N	L	Black	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
7a31ce80-92a2-4fd2-b05e-301ec4aaf4c3	Nike J Guard [width :]	http://placehold.it/350x150	This is a Nike J Guard [width :].	Nike	Sporting Equipment	Shoes	\N	M	Black	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
d6a4df45-cf37-4e8d-b0a6-d5caf4097221	Nike Guard Stay II	http://placehold.it/350x150	This is a Nike Guard Stay II.	Nike	Sporting Equipment	Shoes	\N	\N	Black/White (001)	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
b882e607-94ed-4eaf-af1b-933d3688641f	Nike Graphic Hoodie - Men's	http://placehold.it/350x150	This is a Nike Graphic Hoodie - Men's.	Nike	Men	Shoes	\N	L	Red/Black	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
90e2dcec-2688-499f-b444-1094dc2b228a	Nike Inflict	http://placehold.it/350x150	This is a Nike Inflict.	Nike	Fashion Sneakers	Shoes	\N	7 D(M) US	Medium Grey/Black	2017-01-11 10:11:16.559+00	2017-01-11 10:11:16.559+00
7b044bf8-6934-4ba8-9c15-eb9e8c35cd31	Nike Chin Shield - Men's	http://placehold.it/350x150	This is a Nike Chin Shield - Men's.	Nike	Sporting Equipment	Shoes	\N	\N	Green/White	2017-01-11 10:11:16.56+00	2017-01-11 10:11:16.56+00
b21771a9-6cd1-463f-9ed1-ecaf27412755	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	S	Team Red/Reflective Silver	2017-01-11 10:11:16.56+00	2017-01-11 10:11:16.56+00
afe68602-2409-4dc6-9f91-cb37179cb872	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Active	Shoes	\N	S	Cool Grey/Black	2017-01-11 10:11:16.561+00	2017-01-11 10:11:16.561+00
df869590-06ca-458c-9159-bef9198a4d16	Nike Racquette	http://placehold.it/350x150	This is a Nike Racquette.	Nike	Racquet Sports	Shoes	\N	8 B(M) US	White	2017-01-11 10:11:16.561+00	2017-01-11 10:11:16.561+00
dcb9e575-c992-4831-957a-4ad55954bbcf	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Sporting Equipment	Shoes	\N	L	Space Blue/Bleached Turquoise/Dusty Cactus/Silver	2017-01-11 10:11:16.561+00	2017-01-11 10:11:16.561+00
162431fa-f4d9-4bc2-bc96-ae1e9ecfa14c	Nike Pro Capris - Women's	http://placehold.it/350x150	This is a Nike Pro Capris - Women's.	Nike	Women	Shoes	\N	XS	Royal/Black	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
71d161c1-01a8-4b8d-a5fa-daeafd6538fb	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Active	Shoes	\N	M	Space Blue/Dusty Cactus/Dusty Cactus/Matte Silver	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
97fadd41-abf6-451c-a823-e8c15501fde0	Nike Tempo	http://placehold.it/350x150	This is a Nike Tempo.	Nike	Clothing	Shoes	\N	Medium	389	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
c2bfb33b-4b0b-43e0-99f4-af4ec0f76311	Nike Brasilia 7 Backpack	http://placehold.it/350x150	This is a Nike Brasilia 7 Backpack.	Nike	Men	Shoes	\N	\N	Game Royal	2017-01-11 10:11:16.563+00	2017-01-11 10:11:16.563+00
89fac9b2-c6af-4160-9894-f10802165448	Nike Brasilia 7 Backpack	http://placehold.it/350x150	This is a Nike Brasilia 7 Backpack.	Nike	Men	Shoes	\N	\N	Omeblu	2017-01-11 10:11:16.563+00	2017-01-11 10:11:16.563+00
4b12514d-a83b-41f8-8d59-fdfd27c00d80	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	L	Black/Reflective Silver	2017-01-11 10:11:16.564+00	2017-01-11 10:11:16.564+00
5ddde941-bec7-4b79-bca0-a5c37edac7d9	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	L	White/Reflective Silver	2017-01-11 10:11:16.564+00	2017-01-11 10:11:16.564+00
77e58bcc-64d2-4b0b-9a3c-355507a2710c	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Sporting Equipment	Shoes	\N	M	Black/Black/Matte Silver	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
58408dba-ba61-485c-98d0-85fc5255139b	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	L	Court Purple/Cave Purple/Reflective Silver	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
b05a3967-f89e-46f4-8df4-bff673c34a24	Nike Girls' Training Hoodie	http://placehold.it/350x150	This is a Nike Girls' Training Hoodie.	Nike	Baby	Shoes	\N	L	Lt/pasblue	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
f58faded-ad27-4661-a107-9208b1cfd925	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	XS	Black/Reflective Silver	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
1f03f2f2-9d8e-4169-a8a2-73ec4014e2b1	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Sporting Equipment	Shoes	\N	XL	Space Blue/Bleached Turquoise/Dusty Cactus/Silver	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
91f0cbac-17d9-46a1-8a38-7ff7dff1b26e	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	M	Deep Burgundy/Reflective Silver	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
f2e17d07-1741-40c0-84d0-2c77bd054e7e	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	L	Team Red/Reflective Silver	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
ddcf792f-9797-4f53-8281-198e843a393c	Nike Men's Revolution Running	http://placehold.it/350x150	This is a Nike Men's Revolution Running.	Nike	Running	Shoes	\N	\N	Blk/Wht-Red	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
667e168c-df33-4b56-b0a3-be402ee01563	NIKE Mens T77	http://placehold.it/350x150	This is a NIKE Mens T77.	Nike	Men	Shoes	\N	\N	\N	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
4c718b88-5df0-4bb4-b057-43fa0f12d3c4	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Active	Shoes	\N	M	Light Magenta/Heather/Cave Purple/Reflect Silver	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
3616c9aa-9363-4966-942b-a5330230ef5f	Nike Anti	http://placehold.it/350x150	This is a Nike Anti.	Nike	Sporting Equipment	Shoes	\N	XL	Catalina/Seaweed/Seaweed	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
e7c6f57c-ae74-4851-8437-36428ed5b10b	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	XL	Court Purple/Cave Purple/Reflective Silver	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
ec955941-08c8-4627-956c-196f512b973d	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	M	Black/Black	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
ec5db05f-755c-41af-b102-0b60781d5314	Nike Park III Sock []	http://placehold.it/350x150	This is a Nike Park III Sock [].	Nike	Clothing	Shoes	\N	Medium	Navy	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
aa415898-7ccb-4f23-b4af-a6d9342b5d73	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Medium	White	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
407bf9b3-8c59-4792-883c-a3b39051a504	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Large	Black	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
3e155a0e-b37c-4ed2-b7fe-4ba9a35f0197	Nike SB Marbled Beanie	http://placehold.it/350x150	This is a Nike SB Marbled Beanie.	Nike	Men	Shoes	\N	\N	Black	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
f2e37888-c581-4c17-b926-f002be91f2dd	Nike CSF Skills Ball	http://placehold.it/350x150	This is a Nike CSF Skills Ball.	Nike	Sporting Equipment	Shoes	\N	\N	White	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
2dc7afd3-a5e1-4e09-8218-3defb1b9378c	Nike Scrimmage Vest IIII	http://placehold.it/350x150	This is a Nike Scrimmage Vest IIII.	Nike	Team Sports	Shoes	\N	\N	Team Orange/Black	2017-01-11 10:11:16.555+00	2017-01-11 10:11:16.555+00
0b616c59-f3e2-4dec-b48b-1a0b83b8b3cb	Nike+ SportBand	http://placehold.it/350x150	This is a Nike+ SportBand.	Nike	Sport Watches	Shoes	\N	\N	White/Black	2017-01-11 10:11:16.555+00	2017-01-11 10:11:16.555+00
0b6232c6-f5b2-4c3c-89d0-6fdba95a8328	Nike Chin Shield - Men's	http://placehold.it/350x150	This is a Nike Chin Shield - Men's.	Nike	Sporting Equipment	Shoes	\N	\N	Purple/White	2017-01-11 10:11:16.556+00	2017-01-11 10:11:16.556+00
7b5b7982-d21d-4c73-b108-37ecf86539e5	Nike Men's Fastbreak Shorts	http://placehold.it/350x150	This is a Nike Men's Fastbreak Shorts.	Nike	Clothing	Shoes	\N	3XL	Black/Volt	2017-01-11 10:11:16.556+00	2017-01-11 10:11:16.556+00
47c8fe85-3511-4d46-86b0-bfab46b6e8b4	Nike Graphic Hoodie - Men's	http://placehold.it/350x150	This is a Nike Graphic Hoodie - Men's.	Nike	Men	Shoes	\N	XL	Red/Black	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
e161169b-4019-441e-96c9-53e677d97862	Nike Men's Tri Suit	http://placehold.it/350x150	This is a Nike Men's Tri Suit.	Nike	Swimwear	Shoes	\N	\N	Black	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
2aa1912d-7efb-4833-87f2-51a7021195f2	Nike Kids []	http://placehold.it/350x150	This is a Nike Kids [].	Nike	Sandals	Shoes	\N	11 M US Little Kid	Black	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
06e09090-e176-427d-9ab7-2d4773b82ee9	Nike Essential Yoga Strap	http://placehold.it/350x150	This is a Nike Essential Yoga Strap.	nike	Women	Shoes	\N	\N	Plum/White	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
489c7894-8de4-4155-a0c8-47ce691c2a7e	Nike+ SportBand	http://placehold.it/350x150	This is a Nike+ SportBand.	Nike	Sport Watches	Shoes	\N	\N	Black/Volt	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
7bb9a58a-f3c7-4c95-b0b7-21a38ede9554	Nike+ SportBand	http://placehold.it/350x150	This is a Nike+ SportBand.	Nike	Sport Watches	Shoes	\N	\N	Sonic Yellow/Imperial Purple	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
7b4698b2-93a6-462d-bb3b-372dbe82358d	Nike Graphic Hoodie - Men's	http://placehold.it/350x150	This is a Nike Graphic Hoodie - Men's.	Nike	Men	Shoes	\N	XXL	Red/Black	2017-01-11 10:11:16.559+00	2017-01-11 10:11:16.559+00
e9652618-75fd-4004-a21e-adc3a17a07bd	Nike J Guard [width :]	http://placehold.it/350x150	This is a Nike J Guard [width :].	Nike	Sporting Equipment	Shoes	\N	S	Black	2017-01-11 10:11:16.56+00	2017-01-11 10:11:16.56+00
71dbea1d-d7d8-4881-af09-778b739ecd3c	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Sporting Equipment	Shoes	\N	XL	Bleached Turquoise/Court Purple/White	2017-01-11 10:11:16.56+00	2017-01-11 10:11:16.56+00
4c9180da-d47a-4510-bc81-60125dbb6ef8	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Sporting Equipment	Shoes	\N	XL	Team Red/Reflective Silver	2017-01-11 10:11:16.561+00	2017-01-11 10:11:16.561+00
7fe7aa13-35ea-4759-a10e-cd3dd002f7c1	Nike Dri-FIT Bands	http://placehold.it/350x150	This is a Nike Dri-FIT Bands.	nike	Boys	Shoes	\N	ONESIZE	Red White	2017-01-11 10:11:16.561+00	2017-01-11 10:11:16.561+00
25ab5952-aed5-4ae9-a988-da1883ab27d3	Nike Men's Bonded Tank	http://placehold.it/350x150	This is a Nike Men's Bonded Tank.	Nike	Men	Shoes	\N	XL	Black	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
25d6c04e-00ad-4fba-b2e5-55aac85cabea	Nike Sport Water Bottle	http://placehold.it/350x150	This is a Nike Sport Water Bottle.	Nike	Sporting Equipment	Shoes	\N	\N	Vivid Pink	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
65b16ffa-5219-4daa-a2c6-be03d12c9dc1	Nike Boys' Club Hoodie	http://placehold.it/350x150	This is a Nike Boys' Club Hoodie.	Nike	Baby	Shoes	\N	M	Gym Red	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
6aa710c9-fac5-4f5b-be6f-e8d921597329	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Active	Shoes	\N	XS	Cave Purple/Light Magenta/Light Magenta/Silver	2017-01-11 10:11:16.563+00	2017-01-11 10:11:16.563+00
31baa2aa-d8d1-4634-b33f-6a0d252bf373	Nike Leg	http://placehold.it/350x150	This is a Nike Leg.	Nike	Clothing & Accessories	Shoes	\N	L	Volt/White	2017-01-11 10:11:16.563+00	2017-01-11 10:11:16.563+00
ba616a09-e453-4f4f-9ec6-238289808ebc	Nike Brasilia 7 Backpack	http://placehold.it/350x150	This is a Nike Brasilia 7 Backpack.	Nike	Men	Shoes	\N	\N	Action Green	2017-01-11 10:11:16.564+00	2017-01-11 10:11:16.564+00
5f6beaac-004f-46e3-bd71-30ef6877d746	Nike Gung	http://placehold.it/350x150	This is a Nike Gung.	Nike	Clothing & Accessories	Shoes	\N	XXL	Dark Maroon/White/White	2017-01-11 10:11:16.564+00	2017-01-11 10:11:16.564+00
b394c0c2-52a9-41ff-8c92-deb2bbe4fd70	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Sporting Equipment	Shoes	\N	XS	Space Blue/Bleached Turquoise/Dusty Cactus/Silver	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
6bfe2cd5-425a-4b55-ab6a-c02dd2e4d590	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	XS	Space Blue/Dusty Cactus/Reflective Silver	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
248ed221-f3e7-4375-a41c-b924078f75e1	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	M	Hyper Grape/Heather/Reflective Silver	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
54928026-2f2e-44e5-a8e0-0e1824caab39	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	S	Deep Burgundy/Reflective Silver	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
d9bd49de-3cff-43a5-98cd-a8da60922723	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	S	Black/Reflective Silver	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
a44b5c61-76ee-4786-91d3-c6076fb35632	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	XS	Deep Burgundy/Reflective Silver	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
6fa02ab7-dc53-4bcd-899a-bb4620c0fb1b	Nike Girls' Victory Polo []	http://placehold.it/350x150	This is a Nike Girls' Victory Polo [].	Nike	Boys	Shoes	\N	Medium	Game Royal	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
19919194-217c-4c21-8a84-431f9b2a0e49	NIKE Mens NIKE ZOOM BO	http://placehold.it/350x150	This is a NIKE Mens NIKE ZOOM BO.	Nike	Men	Shoes	\N	\N	\N	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
feccef70-9c29-41f7-bbbd-3abac2397a0b	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	M	Court Purple/Cave Purple/Reflective Silver	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
24e334be-4e5d-4b04-b9fc-511b529fa5e2	Nike Hyper	http://placehold.it/350x150	This is a Nike Hyper.	Nike	Sporting Equipment	Shoes	\N	M	Wolf Grey/Hyper Punch/Wolf Grey	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
031ad513-80b2-4e99-af6e-58fdb426f096	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	M	Dark Ash/Black/Reflective Silver	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
f5c78d0f-2cde-4b65-a5b7-2d7ac343e0b4	Nike Satire	http://placehold.it/350x150	This is a Nike Satire.	Nike	Fashion Sneakers	Shoes	\N	13 D(M) US	Anthracite/Grey/White/Obsidian	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
48bc2cff-99c8-45d0-ad47-758376bcc13e	Nike Catalyst	http://placehold.it/350x150	This is a Nike Catalyst.	Nike	Soccer Balls	Shoes	\N	\N	\N	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
7e9fe619-4c31-471c-a06c-e82c0d7b86dc	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	S	Hyper Punch/Hyper Punch/Reflective Silver	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
5ca74955-a875-476e-aac0-91aa2a983ba8	NIKE METHOD 005 Putter []	http://placehold.it/350x150	This is a NIKE METHOD 005 Putter [].	Nike	Putters	Shoes	\N	\N	\N	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
6eb707fd-669d-4da3-8132-b2a071167c8c	Nike Park III Sock []	http://placehold.it/350x150	This is a Nike Park III Sock [].	Nike	Clothing	Shoes	\N	Small	White	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
12824870-806b-47cf-86cb-920c4978f029	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Large	White	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
5b91dad7-cdc4-4f53-b3c0-a3939749a03d	Nike Hypervenom Phelon FG - Men's	http://placehold.it/350x150	This is a Nike Hypervenom Phelon FG - Men's.	Nike	Athletic & Outdoor	Shoes	\N	\N	\N	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
7f0e7302-a1d4-4b11-8cfa-310718648ca2	Nike Ankle Sleeve	http://placehold.it/350x150	This is a Nike Ankle Sleeve.	Nike	Clothing & Accessories	Shoes	\N	S	Black	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
4745980f-98db-47b6-87a3-897b5acdd8ae	Nike Scrimmage Vest IIII	http://placehold.it/350x150	This is a Nike Scrimmage Vest IIII.	Nike	Team Sports	Shoes	\N	\N	Blue Reef/Black	2017-01-11 10:11:16.555+00	2017-01-11 10:11:16.555+00
379320e6-c245-4324-b6dd-86eb9809ed71	Nike Park Guard [width :]	http://placehold.it/350x150	This is a Nike Park Guard [width :].	Nike	Sporting Equipment	Shoes	\N	S	White/White\\/Black	2017-01-11 10:11:16.555+00	2017-01-11 10:11:16.555+00
2ba9f5b7-9489-4fa8-8cd9-438150eb02fe	Nike Kids []	http://placehold.it/350x150	This is a Nike Kids [].	Nike	Sandals	Shoes	\N	6 M US Toddler	Black/Gym Red-Brightn Crimson	2017-01-11 10:11:16.556+00	2017-01-11 10:11:16.556+00
50eccfac-479e-44cb-98d0-d304e42183ce	Nike Kids []	http://placehold.it/350x150	This is a Nike Kids [].	Nike	Sandals	Shoes	\N	6 M US Toddler	LYON BLUE/MIDNIGHT NAVY/BLUE	2017-01-11 10:11:16.556+00	2017-01-11 10:11:16.556+00
48e77341-ec23-4c17-bd39-9a08ad4bda19	Nike J Guard	http://placehold.it/350x150	This is a Nike J Guard.	Nike	Sporting Equipment	Shoes	\N	L	Black	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
fdf655c8-b1c2-4529-a092-779c958b3b0e	Nike Men's Fastbreak Shorts	http://placehold.it/350x150	This is a Nike Men's Fastbreak Shorts.	Nike	Clothing	Shoes	\N	M	Black/Volt	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
51616b7a-0dfe-4a79-958d-16d675245455	Nike Lanyard	http://placehold.it/350x150	This is a Nike Lanyard.	Nike	Sporting Equipment	Shoes	\N	Ns	Varsity Royal	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
5eeb537f-328b-4b79-bc0f-f923f0d9e6be	Nike Men's Fastbreak Shorts	http://placehold.it/350x150	This is a Nike Men's Fastbreak Shorts.	Nike	Clothing	Shoes	\N	2XL	Black/Volt	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
608c1b46-9548-465b-b939-212e6d7d5984	Nike Rosherun	http://placehold.it/350x150	This is a Nike Rosherun.	Nike	Running	Shoes	\N	9 D(M) US	Sport Red/Cool Grey-Sail	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
48f94ae1-5e7f-45a1-8698-9a7c64679e70	Nike Guard Lock Sleeve	http://placehold.it/350x150	This is a Nike Guard Lock Sleeve.	Nike	Sporting Equipment	Shoes	\N	L	Black/White	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
e2a9b15a-b2e4-4503-b212-ccd3a996ecde	Nike Men's Fastbreak Shorts	http://placehold.it/350x150	This is a Nike Men's Fastbreak Shorts.	Nike	Clothing	Shoes	\N	3XL	Obsidian	2017-01-11 10:11:16.559+00	2017-01-11 10:11:16.559+00
0e94bf32-dd8a-47c5-b085-136eb873d0b9	Nike Chin Shield - Men's	http://placehold.it/350x150	This is a Nike Chin Shield - Men's.	Nike	Sporting Equipment	Shoes	\N	\N	Maroon/White	2017-01-11 10:11:16.559+00	2017-01-11 10:11:16.559+00
d507a892-4c62-4f40-ab28-cd4205d1a700	Nike Chin Shield - Men's	http://placehold.it/350x150	This is a Nike Chin Shield - Men's.	Nike	Sporting Equipment	Shoes	\N	\N	Grey/White	2017-01-11 10:11:16.56+00	2017-01-11 10:11:16.56+00
01cd8ea0-32e5-4bb2-9cc6-195f9e7fec8e	Nike Youth Perforated Cap []	http://placehold.it/350x150	This is a Nike Youth Perforated Cap [].	Nike	Men	Shoes	\N	\N	White	2017-01-11 10:11:16.56+00	2017-01-11 10:11:16.56+00
3f9a239f-77ce-436c-b8db-ea99d53e54be	Red Nike Lanyard	http://placehold.it/350x150	This is a Red Nike Lanyard.	Nike	Identification Badges & Supplies	Shoes	\N	\N	\N	2017-01-11 10:11:16.56+00	2017-01-11 10:11:16.56+00
8529e999-88a5-4a50-8611-44720a9157e6	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	S	Cave Purple/Reflective Silver	2017-01-11 10:11:16.561+00	2017-01-11 10:11:16.561+00
469ae74f-a5ce-46cf-b836-42e6fa842c5b	Nike Tempo	http://placehold.it/350x150	This is a Nike Tempo.	Nike	Clothing	Shoes	\N	X-Small	390	2017-01-11 10:11:16.561+00	2017-01-11 10:11:16.561+00
5ee3150a-d106-433a-97e3-06d3c3aa314d	Nike Bra	http://placehold.it/350x150	This is a Nike Bra.	Nike	Tights & Leggings	Shoes	\N	X-mall	Blue	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
52c71732-f582-468c-8b84-4955aaee5d81	Nike Tempo	http://placehold.it/350x150	This is a Nike Tempo.	Nike	Clothing	Shoes	\N	Large	390	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
53c8951a-7810-4d5f-8817-220740280f6a	Nike Boys' Club Hoodie	http://placehold.it/350x150	This is a Nike Boys' Club Hoodie.	Nike	Baby	Shoes	\N	XL	Obsidian	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
92ed0b4f-9063-4122-a721-5ebc1cd18bb0	Nike Avid	http://placehold.it/350x150	This is a Nike Avid.	Nike	Fashion Sneakers	Shoes	\N	11.5 D(M) US	DARK GREY/WHITE/DRENCHED BLUE	2017-01-11 10:11:16.563+00	2017-01-11 10:11:16.563+00
80375743-aebf-48f7-b9a0-682df3d29bd3	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Sporting Equipment	Shoes	\N	XL	Black/Black/Matte Silver	2017-01-11 10:11:16.563+00	2017-01-11 10:11:16.563+00
a69d57ef-9231-4de8-9b2a-8b1c1e6a5118	Nike Gung	http://placehold.it/350x150	This is a Nike Gung.	Nike	Clothing & Accessories	Shoes	\N	XL	White/Black/Black	2017-01-11 10:11:16.564+00	2017-01-11 10:11:16.564+00
e01eceaf-3018-42a2-bbde-8c9921088198	Nike Gung	http://placehold.it/350x150	This is a Nike Gung.	Nike	Clothing & Accessories	Shoes	\N	XL	Dark Green/White/White	2017-01-11 10:11:16.564+00	2017-01-11 10:11:16.564+00
4daabbf5-cc21-4239-9360-b4853afb2d5e	Nike Gung	http://placehold.it/350x150	This is a Nike Gung.	Nike	Clothing & Accessories	Shoes	\N	4XL	Dark Maroon/White/White	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
d104457e-3dcc-4fa6-a0a9-00ef1da0dd92	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Active	Shoes	\N	XS	Light Magenta/Heather/Cave Purple/Reflect Silver	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
d72780cd-d2d8-465b-97b5-f9165be12b1d	Nike Elastic Hairband	http://placehold.it/350x150	This is a Nike Elastic Hairband.	Nike	Girls	Shoes	\N	\N	White/University Red	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
9c172745-a01c-4620-982f-0aca1ffc3c43	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	S	Volt/Anthracite/Reflective Silver	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
02bc5133-1422-4eb3-9ffa-621ac253e037	Nike Men's VR_S Covert Hybrid	http://placehold.it/350x150	This is a Nike Men's VR_S Covert Hybrid.	Nike	Sporting Equipment	Shoes	\N	\N	\N	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
2664a614-d0d7-4679-88a5-e784b76748c1	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	L	Deep Burgundy/Reflective Silver	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
9821d7f7-61f8-418c-9474-fd545d3b2947	Nike Girls' Victory Polo []	http://placehold.it/350x150	This is a Nike Girls' Victory Polo [].	Nike	Boys	Shoes	\N	Medium	Stadium Green	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
625cf4cb-3128-4513-bc83-c35ccbe66316	Nike Anti	http://placehold.it/350x150	This is a Nike Anti.	Nike	Sporting Equipment	Shoes	\N	L	White/Action Red/Action Red	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
35c87ca9-999d-422f-a1ed-26e15d6e8bf5	NIKE Mens 105	http://placehold.it/350x150	This is a NIKE Mens 105.	Nike	Men	Shoes	\N	\N	\N	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
a611fc6f-66c4-4b39-918f-654791d77d42	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	XS	Court Purple/Heather/Reflective Silver	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
f6277bbb-f2c1-46c4-992e-795de28f724b	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	XL	Court Purple/Medium Ash/Light Ash/Matte Silver	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
ff4bf3bf-5986-4aff-ace4-563535459fbf	Nike® 3-pk. Quarter Socks	http://placehold.it/350x150	This is a Nike® 3-pk. Quarter Socks.	Nike	Women	Shoes	\N	\N	\N	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
266a152e-631c-4546-be4e-33e6efe20fab	Nike Headband []	http://placehold.it/350x150	This is a Nike Headband [].	Nike	Fan Shop	Shoes	\N	OS	WHITE & BLACK	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
81eee8a3-a27b-4f62-9df9-80f608c3c63b	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Small	Black	2017-01-11 10:11:16.553+00	2017-01-11 10:11:16.553+00
7f801231-a3a1-46dd-a7e9-d21e110ad584	Nike Sport Strap	http://placehold.it/350x150	This is a Nike Sport Strap.	Nike	Portable Audio & Video	Shoes	\N	\N	Pink Force/Black	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
3e9cb7e0-f5c6-4908-b644-8b946d958b18	Nike Air Pegasus 2002 []	http://placehold.it/350x150	This is a Nike Air Pegasus 2002 [].	Nike	Polos	Shoes	\N	Medium	Pinenut	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
492b84b8-5368-46b7-b742-c37de3fe403d	Nike T-Shirt - Men's	http://placehold.it/350x150	This is a Nike T-Shirt - Men's.	Nike	Men	Shoes	\N	S	Grey	2017-01-11 10:11:16.554+00	2017-01-11 10:11:16.554+00
90c4c230-c37f-4b44-a10e-24556345437a	Nike Scrimmage Vest IIII	http://placehold.it/350x150	This is a Nike Scrimmage Vest IIII.	Nike	Team Sports	Shoes	\N	\N	Radiant Green/Black	2017-01-11 10:11:16.555+00	2017-01-11 10:11:16.555+00
464ff08b-aa82-4b6a-b09a-d110a188c223	Nike® Winter Pom Beanie	http://placehold.it/350x150	This is a Nike® Winter Pom Beanie.	Nike	Snow Sports	Shoes	\N	\N	Squad Blue/lorg	2017-01-11 10:11:16.555+00	2017-01-11 10:11:16.555+00
bf1d6de4-2ae4-4232-857e-ef0a25ee4d2f	Nike Kids []	http://placehold.it/350x150	This is a Nike Kids [].	Nike	Sandals	Shoes	\N	7 M US Toddler	Black/Gym Red-Brightn Crimson	2017-01-11 10:11:16.556+00	2017-01-11 10:11:16.556+00
067726c6-c7a3-4a7a-ae18-7cbe23e4cb95	Nike Men's Fastbreak Shorts	http://placehold.it/350x150	This is a Nike Men's Fastbreak Shorts.	Nike	Clothing	Shoes	\N	3XL	Anthracite/White	2017-01-11 10:11:16.556+00	2017-01-11 10:11:16.556+00
5f50ae0f-6510-49c5-bedf-d4779e72b46c	Nike Graphic Hoodie - Men's	http://placehold.it/350x150	This is a Nike Graphic Hoodie - Men's.	Nike	Men	Shoes	\N	3XL	Red/Black	2017-01-11 10:11:16.556+00	2017-01-11 10:11:16.556+00
376ad91d-cb71-4778-84a7-b865be97c40d	Nike Men's Fastbreak Shorts	http://placehold.it/350x150	This is a Nike Men's Fastbreak Shorts.	Nike	Clothing	Shoes	\N	3XL	Black/Red	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
4291dbeb-865f-4399-aa8c-452eff4672a4	Nike Chrome Goggles	http://placehold.it/350x150	This is a Nike Chrome Goggles.	Nike	Goggles	Shoes	\N	\N	\N	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
b9a6bb75-d9f2-4a6a-a3f5-0f42b25ff5c9	Nike Graphic Hoodie - Men's	http://placehold.it/350x150	This is a Nike Graphic Hoodie - Men's.	Nike	Men	Shoes	\N	S	Red/Black	2017-01-11 10:11:16.557+00	2017-01-11 10:11:16.557+00
3112e5c7-7ae4-4782-9fb0-02159b4a1687	Nike Chrome Jr. Goggles	http://placehold.it/350x150	This is a Nike Chrome Jr. Goggles.	nike	Boys	Shoes	\N	\N	Smoke	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
e1f747f9-8736-4dc8-abf4-3e4f0588dad5	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	XS	Black/Reflective Silver	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
10d04ece-d61c-4375-8fc3-f68c931fd2c9	Nike Men's Fastbreak Shorts	http://placehold.it/350x150	This is a Nike Men's Fastbreak Shorts.	Nike	Clothing	Shoes	\N	XL	Black/Volt	2017-01-11 10:11:16.558+00	2017-01-11 10:11:16.558+00
a25ddc00-9935-4095-981d-353151660164	Nike Men's Bonded Tank	http://placehold.it/350x150	This is a Nike Men's Bonded Tank.	Nike	Men	Shoes	\N	M	Black	2017-01-11 10:11:16.559+00	2017-01-11 10:11:16.559+00
07925708-a136-49a7-8748-924478036c39	Nike Pro Capris - Women's	http://placehold.it/350x150	This is a Nike Pro Capris - Women's.	Nike	Women	Shoes	\N	S	Royal/Black	2017-01-11 10:11:16.56+00	2017-01-11 10:11:16.56+00
247d4765-82ad-40fa-ba9e-54d4ae0ee6b2	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Running	Shoes	\N	L	Light Magenta/Court Purple	2017-01-11 10:11:16.56+00	2017-01-11 10:11:16.56+00
6cfa3c26-ca91-4959-905e-f32829ec36ce	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	L	Hyper Punch/Hyper Punch/Reflective Silver	2017-01-11 10:11:16.561+00	2017-01-11 10:11:16.561+00
c1f2291e-077b-4cd4-8da6-ebc76a407167	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	L	Dusty Cactus/Space Blue/Reflective Silver	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
5a5f70b4-9be3-4cdb-884c-63ddcc60b0a0	Nike Terminator []	http://placehold.it/350x150	This is a Nike Terminator [].	Nike	Basketball	Shoes	\N	10.5 B(M) US	White	2017-01-11 10:11:16.562+00	2017-01-11 10:11:16.562+00
1b1ef036-86f7-4805-a46a-059153e11302	Nike® 3-pk. No-Show Socks	http://placehold.it/350x150	This is a Nike® 3-pk. No-Show Socks.	Nike	Women	Shoes	\N	\N	\N	2017-01-11 10:11:16.563+00	2017-01-11 10:11:16.563+00
77ed7c60-d7b6-4731-98ff-600af0308232	Nike Pro Capris - Women's	http://placehold.it/350x150	This is a Nike Pro Capris - Women's.	Nike	Women	Shoes	\N	XL	Royal/Black	2017-01-11 10:11:16.563+00	2017-01-11 10:11:16.563+00
bf1a0d5e-9c9a-4484-b482-4ef03d1ced70	Nike Sport Water Bottle	http://placehold.it/350x150	This is a Nike Sport Water Bottle.	Nike	Sporting Equipment	Shoes	\N	\N	Anthracite	2017-01-11 10:11:16.563+00	2017-01-11 10:11:16.563+00
f9094e6e-da2a-4a6f-82c6-df011eedf5e2	Nike Hyper	http://placehold.it/350x150	This is a Nike Hyper.	Nike	Footwear	Shoes	\N	L	Bleached Turquoise/Hyper Grape	2017-01-11 10:11:16.564+00	2017-01-11 10:11:16.564+00
82f83e63-49da-4cc7-af72-dce462baa25c	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	XL	Black/Black/Reflective Silver	2017-01-11 10:11:16.564+00	2017-01-11 10:11:16.564+00
a4c5f93a-74f5-4fee-8ab9-c1f434d12704	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	M	Court Purple/Cave Purple/Reflective Silver	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
c8381d1b-4d7b-48c5-b615-df9927b2ab9d	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	\N	Red/White	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
2805f57f-3106-4ee2-8eb5-855b63e6d9bb	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Sporting Equipment	Shoes	\N	S	Action Red/Deep Burgundy/Reflective Silver	2017-01-11 10:11:16.565+00	2017-01-11 10:11:16.565+00
e894a2b4-2e2d-4f3a-8bc7-58d6857887fd	Nike Leg	http://placehold.it/350x150	This is a Nike Leg.	Nike	Clothing & Accessories	Shoes	\N	L	Black/White	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
ca784d7e-76c9-4abd-8e4b-fe0e6df71f81	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	S	Space Blue/Dusty Cactus/Dusty Cactus/Matte Silver	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
4ffdf313-be33-4de1-a594-82f941483627	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	L	Space Blue/Reflective Silver	2017-01-11 10:11:16.566+00	2017-01-11 10:11:16.566+00
4da87f10-a005-4e4b-bd29-a07f8187f669	Nike Girls' Victory Polo []	http://placehold.it/350x150	This is a Nike Girls' Victory Polo [].	Nike	Boys	Shoes	\N	Small	Game Royal	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
6f8fdaab-4981-4b91-9186-03d9be9e7350	NIKE Mens NIKE WOODSIDE	http://placehold.it/350x150	This is a NIKE Mens NIKE WOODSIDE.	Nike	Men	Shoes	\N	\N	\N	2017-01-11 10:11:16.567+00	2017-01-11 10:11:16.567+00
e05ef01e-d1ee-44c3-99c5-ca7ec740f5b5	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	XL	Cave Purple/Light Magenta/Light Magenta/Silver	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
d2c91331-c4c7-481d-8c76-29247367af34	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	S	Court Purple/Reflective Silver	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
763679f9-c575-47ab-b9ed-fc656f2d0039	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	S	Court Purple/Heather/Reflective Silver	2017-01-11 10:11:16.568+00	2017-01-11 10:11:16.568+00
16fc2a30-2652-48f0-b695-066d80c0b5e5	Nike Sport Water Bottle	http://placehold.it/350x150	This is a Nike Sport Water Bottle.	Nike	Sporting Equipment	Shoes	\N	\N	Game Royal	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
5dd0b0c1-0eeb-4dd3-9ee5-2430f51d438b	Nike Hyper	http://placehold.it/350x150	This is a Nike Hyper.	Nike	Sporting Equipment	Shoes	\N	S	Wolf Grey/Hyper Punch/Wolf Grey	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
d6016e75-eb08-4e87-8089-6548761dc31e	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Running	Shoes	\N	M	Action Red/Deep Burgundy	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
185212d8-4486-4069-9f57-1d00376b4f4e	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	L	Cave Purple/Reflective Silver	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
35f7ad84-9aa6-4b5b-ad7e-e136862eaff2	Nike Girls' Victory Polo []	http://placehold.it/350x150	This is a Nike Girls' Victory Polo [].	Nike	Boys	Shoes	\N	Small	College Navy	2017-01-11 10:11:16.57+00	2017-01-11 10:11:16.57+00
993d8975-3ac7-482a-b0b6-8ca809c85944	Nike Dri	http://placehold.it/350x150	This is a Nike Dri.	Nike	Clothing & Accessories	Shoes	\N	XL	Deep Burgundy/Reflective Silver	2017-01-11 10:11:16.569+00	2017-01-11 10:11:16.569+00
\.


--
-- Data for Name: store; Type: TABLE DATA; Schema: public; Owner: user
--

COPY store (id, name, street_address, city, state, country, zip_code, email, phone_number, category, longitude, latitude, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY users (id, username, password) FROM stdin;
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


--
-- Name: inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (id);


--
-- Name: product_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: store_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY store
    ADD CONSTRAINT store_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_username_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: inventory_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY inventory
    ADD CONSTRAINT inventory_product_id_fkey FOREIGN KEY (product_id) REFERENCES product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: inventory_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY inventory
    ADD CONSTRAINT inventory_store_id_fkey FOREIGN KEY (store_id) REFERENCES store(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

