--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-08-06 16:14:13

SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 16395)
-- Name: anggota; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.anggota (
    nama_anggota character varying(100) NOT NULL,
    jk_anggota character(1) NOT NULL,
    jurusan_anggota character(5) NOT NULL,
    no_telp_anggota character(13) NOT NULL,
    alamat_anggota character varying(100) NOT NULL,
    id_anggota integer NOT NULL,
    email character varying(60) NOT NULL
);


ALTER TABLE public.anggota OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16398)
-- Name: anggota_id_anggota_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.anggota_id_anggota_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.anggota_id_anggota_seq OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16399)
-- Name: anggota_id_anggota_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.anggota_id_anggota_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anggota_id_anggota_seq1 OWNER TO postgres;

--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 211
-- Name: anggota_id_anggota_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.anggota_id_anggota_seq1 OWNED BY public.anggota.id_anggota;


--
-- TOC entry 212 (class 1259 OID 16400)
-- Name: buku; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.buku (
    id integer NOT NULL,
    kode character varying NOT NULL,
    judul character varying NOT NULL,
    penulis character varying NOT NULL,
    penerbit character varying NOT NULL,
    tahun_terbit character varying NOT NULL
);


ALTER TABLE public.buku OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16405)
-- Name: buku_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.buku_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.buku_id_seq OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16406)
-- Name: buku_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.buku_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buku_id_seq1 OWNER TO postgres;

--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 214
-- Name: buku_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.buku_id_seq1 OWNED BY public.buku.id;


--
-- TOC entry 215 (class 1259 OID 16407)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    image character varying NOT NULL,
    password character varying NOT NULL,
    role_id integer NOT NULL,
    is_active integer NOT NULL,
    date_created integer NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16412)
-- Name: user_access_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_access_menu (
    id integer NOT NULL,
    role_id integer NOT NULL,
    menu_id integer NOT NULL
);


ALTER TABLE public.user_access_menu OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16415)
-- Name: user_access_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_access_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_access_menu_id_seq OWNER TO postgres;

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 217
-- Name: user_access_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_access_menu_id_seq OWNED BY public.user_access_menu.id;


--
-- TOC entry 218 (class 1259 OID 16416)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 218
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- TOC entry 219 (class 1259 OID 16417)
-- Name: user_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_menu (
    id integer NOT NULL,
    menu character varying NOT NULL,
    urut integer
);


ALTER TABLE public.user_menu OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16422)
-- Name: user_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_menu_id_seq OWNER TO postgres;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 220
-- Name: user_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_menu_id_seq OWNED BY public.user_menu.id;


--
-- TOC entry 221 (class 1259 OID 16423)
-- Name: user_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_role (
    id integer NOT NULL,
    role character varying NOT NULL
);


ALTER TABLE public.user_role OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16428)
-- Name: user_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_role_id_seq OWNER TO postgres;

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 222
-- Name: user_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_role_id_seq OWNED BY public.user_role.id;


--
-- TOC entry 223 (class 1259 OID 16429)
-- Name: user_sub_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_sub_menu (
    id integer NOT NULL,
    menu_id integer NOT NULL,
    title character varying NOT NULL,
    url character varying NOT NULL,
    icon character varying NOT NULL,
    is_active integer NOT NULL
);


ALTER TABLE public.user_sub_menu OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16434)
-- Name: user_sub_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_sub_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_sub_menu_id_seq OWNER TO postgres;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 224
-- Name: user_sub_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_sub_menu_id_seq OWNED BY public.user_sub_menu.id;


--
-- TOC entry 3196 (class 2604 OID 16435)
-- Name: anggota id_anggota; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anggota ALTER COLUMN id_anggota SET DEFAULT nextval('public.anggota_id_anggota_seq1'::regclass);


--
-- TOC entry 3197 (class 2604 OID 16436)
-- Name: buku id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buku ALTER COLUMN id SET DEFAULT nextval('public.buku_id_seq1'::regclass);


--
-- TOC entry 3198 (class 2604 OID 16437)
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- TOC entry 3199 (class 2604 OID 16438)
-- Name: user_access_menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_access_menu ALTER COLUMN id SET DEFAULT nextval('public.user_access_menu_id_seq'::regclass);


--
-- TOC entry 3200 (class 2604 OID 16439)
-- Name: user_menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_menu ALTER COLUMN id SET DEFAULT nextval('public.user_menu_id_seq'::regclass);


--
-- TOC entry 3201 (class 2604 OID 16440)
-- Name: user_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_role ALTER COLUMN id SET DEFAULT nextval('public.user_role_id_seq'::regclass);


--
-- TOC entry 3202 (class 2604 OID 16441)
-- Name: user_sub_menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_sub_menu ALTER COLUMN id SET DEFAULT nextval('public.user_sub_menu_id_seq'::regclass);


--
-- TOC entry 3342 (class 0 OID 16395)
-- Dependencies: 209
-- Data for Name: anggota; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.anggota (nama_anggota, jk_anggota, jurusan_anggota, no_telp_anggota, alamat_anggota, id_anggota, email) FROM stdin;
Zeus	L	RPL  	085710203042 	Padang	3	zeus@gmail.com
Hera	P	TKJ  	085710203043 	Jatim	4	hera@gmail.com
Apollo	L	RPL  	085710203044 	Solo	5	apollo@gmail.com
Medeia	P	TAV  	085710203040 	Tangerang	1	medeia@gmail.com
Athe	L	TP   	085710203041 	Batam	2	athena@gmail.com
\.


--
-- TOC entry 3345 (class 0 OID 16400)
-- Dependencies: 212
-- Data for Name: buku; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.buku (id, kode, judul, penulis, penerbit, tahun_terbit) FROM stdin;
2	A202	Bumi	Tere Liye	Gramedia Pustaka Utama	2014
3	A203	Bulan	Tere Liye	Gramedia Pustaka Utama	2015
4	A204	Matahari	Tere Liye	Gramedia Pustaka Utama	2016
5	A205	The Little Hat	Mi Casa	Insan Paripurna	2021
6	A206	Fate Strange Fake 1	Ryohgo Narita	Gramedia Pustaka Utama	2021
1	A201	Sang Pemimpi	Andrea Hirata	Bentang Pustaka	2006
\.


--
-- TOC entry 3348 (class 0 OID 16407)
-- Dependencies: 215
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, name, email, image, password, role_id, is_active, date_created) FROM stdin;
7	Gita	gita@gmail.com	default.jpg	$2y$10$XQU5txFUhkKRLQywKp5kqeyLa/9tjUDRCwQShYsq3YlZklHQmIx..	2	1	1658381878
3	Anggita Dewi	anggitadewianggita812@gmail.com	default.jpg	$2y$10$wuftzM5XvQjC0L0BNAUuuOEdI608Xtkskd/8LnmrQ5usieecQmCSS	1	1	1657181508
\.


--
-- TOC entry 3349 (class 0 OID 16412)
-- Dependencies: 216
-- Data for Name: user_access_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_access_menu (id, role_id, menu_id) FROM stdin;
1	1	1
2	1	2
3	2	2
4	1	3
\.


--
-- TOC entry 3352 (class 0 OID 16417)
-- Dependencies: 219
-- Data for Name: user_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_menu (id, menu, urut) FROM stdin;
3	Transaksi	3
1	Master	1
2	Setting	2
\.


--
-- TOC entry 3354 (class 0 OID 16423)
-- Dependencies: 221
-- Data for Name: user_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_role (id, role) FROM stdin;
1	Administrator
2	Member
\.


--
-- TOC entry 3356 (class 0 OID 16429)
-- Dependencies: 223
-- Data for Name: user_sub_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_sub_menu (id, menu_id, title, url, icon, is_active) FROM stdin;
1	1	Dashboard	admin	fas fa-fw fa-tachometer-alt	1
2	2	My Profile	user	fas fa-fw fa-user	1
3	3	Peminjaman	peminjaman	fas fa-fw fa-user	1
4	1	Buku	buku	fas fa-fw fa-user	1
5	1	Anggota	anggota	fas fa-fw fa-user	1
\.


--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 210
-- Name: anggota_id_anggota_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.anggota_id_anggota_seq', 1, false);


--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 211
-- Name: anggota_id_anggota_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.anggota_id_anggota_seq1', 12, true);


--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 213
-- Name: buku_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.buku_id_seq', 1, false);


--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 214
-- Name: buku_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.buku_id_seq1', 7, true);


--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 217
-- Name: user_access_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_access_menu_id_seq', 4, true);


--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 218
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 7, true);


--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 220
-- Name: user_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_menu_id_seq', 3, true);


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 222
-- Name: user_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_role_id_seq', 2, true);


--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 224
-- Name: user_sub_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_sub_menu_id_seq', 5, true);


-- Completed on 2022-08-06 16:14:14

--
-- PostgreSQL database dump complete
--

