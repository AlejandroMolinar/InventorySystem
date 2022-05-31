--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.25
-- Dumped by pg_dump version 9.5.25

-- Started on 2022-05-31 17:16:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 24811)
-- Name: uni_adm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uni_adm (
    id_uni_adm integer NOT NULL,
    desc_uni_adm character varying(80) NOT NULL,
    fec_cre date DEFAULT now(),
    hor_cre time without time zone DEFAULT now(),
    status smallint DEFAULT 1
);


ALTER TABLE public.uni_adm OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 24809)
-- Name: uni_adm_id_uni_adm_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.uni_adm_id_uni_adm_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.uni_adm_id_uni_adm_seq OWNER TO postgres;

--
-- TOC entry 2167 (class 0 OID 0)
-- Dependencies: 181
-- Name: uni_adm_id_uni_adm_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.uni_adm_id_uni_adm_seq OWNED BY public.uni_adm.id_uni_adm;


--
-- TOC entry 2040 (class 2604 OID 24814)
-- Name: id_uni_adm; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uni_adm ALTER COLUMN id_uni_adm SET DEFAULT nextval('public.uni_adm_id_uni_adm_seq'::regclass);


--
-- TOC entry 2161 (class 0 OID 24811)
-- Dependencies: 182
-- Data for Name: uni_adm; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (1, 'ÁREA DE DESARROLLO DE SISTEMAS', '2022-05-31', '17:09:51.89132', 1);
INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (2, 'ÁREA DE REDES Y TELECOMUNICACIONES', '2022-05-31', '17:09:57.509462', 1);
INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (3, 'ÁREA DE ADMINISTRACIÓN DE SERVIDORES', '2022-05-31', '17:14:20.01113', 1);
INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (4, 'ÁREA DE SOPORTE TÉCNICO A USUARIOS', '2022-05-31', '17:14:31.976051', 1);
INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (5, 'ÁREA DE SEGURIDAD DE LA INFORMACION Y GESTION TECNOLOGICA', '2022-05-31', '17:14:53.922568', 1);
INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (6, 'ÁREA COBRO DE PASAJE', '2022-05-31', '17:15:33.750627', 1);
INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (7, 'ÁREA DE TECNOLOGIA DE INFORMACIÓN Y COMUNICACIÓN', '2022-05-31', '17:15:41.211713', 1);


--
-- TOC entry 2168 (class 0 OID 0)
-- Dependencies: 181
-- Name: uni_adm_id_uni_adm_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.uni_adm_id_uni_adm_seq', 9, true);


--
-- TOC entry 2045 (class 2606 OID 24940)
-- Name: pk_id_undadm; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uni_adm
    ADD CONSTRAINT pk_id_undadm PRIMARY KEY (id_uni_adm);


-- Completed on 2022-05-31 17:16:33

--
-- PostgreSQL database dump complete
--

