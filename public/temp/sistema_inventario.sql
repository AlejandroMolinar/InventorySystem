CREATE TABLE public.uni_adm (
    id_uni_adm serial,
    desc_uni_adm character varying(80) NOT NULL,
    fec_cre date DEFAULT now(),
    hor_cre time without time zone DEFAULT now(),
    status smallint DEFAULT 1,
    cod_uni_adm character varying(10) NOT NULL
);

CREATE TABLE public.tp_comp (
    id_tp_comp serial,
    mat_tp_comp character varying,
    fec_crt_comp date DEFAULT now(),
    hor_crt_comp time without time zone DEFAULT now(),
    status smallint DEFAULT 0
);

CREATE TABLE public.parroquia (
    id_parr serial,
    id_mun integer NOT NULL,
    cod_parr character varying(25) NOT NULL,
    desc_parr character varying(70) NOT NULL,
    fec_crt_parr date DEFAULT now(),
    hor_crt_parr time without time zone DEFAULT now(),
    status smallint DEFAULT 1
);


CREATE TABLE public.municipio (
    id_mun serial,
    cod_mun character varying(25) NOT NULL,
    desc_mun character varying(70) NOT NULL,
    fec_crt_mun date DEFAULT now(),
    hor_crt_mun time without time zone DEFAULT now(),
    status smallint DEFAULT 1
);


CREATE TABLE public.modelo (
    id_mod serial,
    cod_marc_mod character varying(10) NOT NULL,
    id_cat_esp integer NOT NULL,
    cod_mod character varying(10) NOT NULL,
    den_mod character varying(100) NOT NULL,
    fec_crt_mod date DEFAULT now() NOT NULL,
    hor_crt_mod time without time zone DEFAULT now() NOT NULL,
    status smallint DEFAULT 1
);


CREATE TABLE public.marca (
    id_marc serial,
    cod_marc character varying(10) NOT NULL,
    den_com_marc character varying(100) NOT NULL,
    nom_fab character varying(100) NOT NULL,
    fec_crt_marc date DEFAULT now() NOT NULL,
    hor_crt_marc time without time zone DEFAULT now() NOT NULL,
    status smallint DEFAULT 1
);

CREATE TABLE public.inventario (
    id_bien serial,
    id_bien_bien integer,
    id_clr_bien integer,
    id_mod_bien integer,
    id_tpc_bien integer,
    id_adm_bien integer,
    id_trb_bien integer,
    id_est_bien integer,
    id_ciu_bien integer,
    id_mun_bien integer,
    id_parr_bien integer,
    cod_marc character varying,
    fec_crt_inv date DEFAULT now(),
    hor_crt_inv time without time zone DEFAULT now(),
    status smallint DEFAULT 0
);
CREATE TABLE public.colores (
    id_col serial,
    cod_col integer NOT NULL,
    desc_col character varying(50) NOT NULL,
    fec_crt_col date DEFAULT now(),
    hor_crt_col time without time zone DEFAULT now(),
    status smallint DEFAULT 1
);
CREATE TABLE public.ciudad (
    id_ciu serial,
    id_mun integer NOT NULL,
    cod_ciu character varying(25) NOT NULL,
    desc_ciu character varying(70) NOT NULL,
    fec_crt_ciu date DEFAULT now(),
    hor_crt_ciu time without time zone DEFAULT now(),
    status smallint DEFAULT 1
);

CREATE TABLE public.bien_mue (
    id_bien_mue serial,
    num_bien_mue character varying,
    fec_crt_mue date DEFAULT now(),
    hor_crt_mue time without time zone DEFAULT now(),
    status smallint DEFAULT 0
);

CREATE TABLE public.tipo_trb (
    id_tp_trb serial,
    tp_trb character varying,
    fec_crt_tp date DEFAULT now(),
    hor_crt_tp time without time zone DEFAULT now(),
    status smallint DEFAULT 0
);

CREATE TABLE public.trabajador (
    id_trb serial,
    id_tp_trb integer,
    id_adm_trb integer,
    email_trb character varying,
    nombre_trb character varying,
    apellido_trb character varying,
    cedula_trb character varying,
    password_trb character varying,
    fecha_crt_trb date DEFAULT now(),
    hora_crt_trb time with time zone DEFAULT now(),
    status smallint DEFAULT 0
);



INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (1, 1, '0001', 'Caracas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (2, 2, '0001', 'La Esmeralda', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (3, 3, '0001', 'San Fernando de Atabapo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (4, 4, '0001', 'Puerto Ayacucho', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (5, 5, '0001', 'Isla Ratón', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (6, 6, '0001', 'Maroa', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (7, 7, '0001', 'San Juan de Manapiare', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (8, 8, '0001', 'San Carlos de Río Negro', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (9, 9, '0001', 'Anaco', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (10, 10, '0001', 'Aragua de Barcelona', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (11, 11, '0001', 'Puerto Píritu', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (12, 12, '0001', 'Valle de Guanape', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (13, 13, '0001', 'Pariaguán', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (14, 14, '0001', 'Guanta', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (15, 15, '0001', 'Soledad', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (16, 16, '0001', 'Puerto La Cruz', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (17, 17, '0001', 'Onoto', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (18, 18, '0001', 'Mapire', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (19, 19, '0001', 'San Mateo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (20, 20, '0001', 'Clarines', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (21, 21, '0001', 'Cantaura', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (22, 22, '0001', 'Píritu', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (23, 23, '0001', 'San Jose de Guanipa', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (24, 24, '0001', 'Boca de Uchire', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (25, 25, '0001', 'Santa Ana', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (26, 26, '0001', 'Barcelona', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (27, 27, '0001', 'El Tigre', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (28, 28, '0001', 'El Chaparro', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (29, 29, '0001', 'Lecherías', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (30, 30, '0001', 'Achaguas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (31, 31, '0001', 'Biruaca', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (32, 32, '0001', 'Bruzual', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (33, 33, '0001', 'Guasdualito', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (34, 34, '0001', 'San Juan de Payara', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (35, 35, '0001', 'Elorza', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (36, 36, '0001', 'San Fernando de Apure', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (37, 37, '0001', 'San Mateo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (38, 38, '0001', 'Camatagua', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (39, 39, '0001', 'Maracay', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (40, 40, '0001', 'José Ánge Lamas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (41, 41, '0001', 'La Victoria', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (42, 42, '0001', 'El Consejo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (43, 43, '0001', 'Palo Negro', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (44, 44, '0001', 'EL Limón', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (45, 45, '0001', 'San Casimiro', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (46, 46, '0001', 'San Sebastián', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (47, 47, '0001', 'Turmero', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (48, 48, '0001', 'Las Tejerías', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (49, 49, '0001', 'Cagua', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (50, 50, '0001', 'Colonia Tovar', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (51, 51, '0001', 'Barbacoas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (52, 52, '0001', 'Villa de Cura', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (53, 53, '0001', 'Santa Rita', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (54, 54, '0001', 'Ocumare de la Costa', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (55, 55, '0001', 'Sabaneta', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (56, 56, '0001', 'Socopó', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (57, 57, '0001', 'Arismendi', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (58, 58, '0001', 'Barinas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (59, 59, '0001', 'Barinitas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (60, 60, '0001', 'Barrancas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (61, 61, '0001', 'Santa Bárbara', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (62, 62, '0001', 'Obispos', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (63, 63, '0001', 'Ciudad Bolivia', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (64, 64, '0001', 'Libertad', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (65, 65, '0001', 'Ciudad de Nutrias', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (66, 66, '0001', 'EL Cantón', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (67, 67, '0001', 'Ciudad Guayana', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (68, 68, '0001', 'Caicara del Orinoco', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (69, 69, '0001', 'El Callao', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (70, 70, '0001', 'Santa Elena de Uairén', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (71, 71, '0001', 'Ciudad Bolívar', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (72, 72, '0001', 'Upata', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (73, 73, '0001', 'Ciudad Piar', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (74, 74, '0001', 'Guasipati', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (75, 75, '0001', 'Tumeremo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (76, 76, '0001', 'Maripa', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (77, 77, '0001', 'El Palmar', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (78, 78, '0001', 'Bejuma', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (79, 79, '0001', 'Güiegüie', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (80, 80, '0001', 'Mariara', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (81, 81, '0001', 'Guacara', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (82, 82, '0001', 'Morón', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (83, 83, '0001', 'Tocuyito', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (84, 84, '0001', 'Los Guayos', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (85, 85, '0001', 'Miranda', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (86, 86, '0001', 'Montalbán', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (87, 87, '0001', 'Naguanagua', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (88, 88, '0001', 'Puerto Cabello', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (89, 89, '0001', 'San Diego', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (90, 90, '0001', 'San Joaquín', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (91, 91, '0001', 'Valencia', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (92, 92, '0001', 'Cojedes', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (93, 93, '0001', 'Tranquilo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (94, 94, '0001', 'El baúl', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (95, 95, '0001', 'Macapo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (96, 96, '0001', 'El Pao', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (97, 97, '0001', 'Libertad', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (98, 98, '0001', 'Las Vegas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (99, 99, '0001', 'San Carlos de Río Negro', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (100, 100, '0001', 'Tinaco', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (101, 101, '0001', 'Cuariapo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (102, 102, '0001', 'Sierra Imataca', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (103, 103, '0001', 'Pedernales', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (104, 104, '0001', 'Tucupita', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (105, 105, '0001', 'San Juán de Los Cayos', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (106, 106, '0001', 'San Luis', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (107, 107, '0001', 'Catapárida', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (108, 108, '0001', 'Yaracal', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (109, 109, '0001', 'Punto Fijo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (110, 110, '0001', 'La Vela de Coro', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (111, 111, '0001', 'Dabajuro', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (112, 112, '0001', 'Pedregal', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (113, 113, '0001', 'Pueblo Nuevo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (114, 114, '0001', 'Churuguara', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (115, 115, '0001', 'Jacura', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (116, 116, '0001', 'Santa Cruz de los Taques', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (117, 117, '0001', 'Mene de Mauroa', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (118, 118, '0001', 'Santa Ana de Coro', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (119, 119, '0001', 'Chichiriviche', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (120, 120, '0001', 'Palmasola', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (121, 121, '0001', 'Cabure', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (122, 122, '0001', 'Píritu', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (123, 123, '0001', 'Mirimire', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (124, 124, '0001', 'Tucacas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (125, 125, '0001', 'La Cruz de Taratara', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (126, 126, '0001', 'Tocópero', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (127, 127, '0001', 'Santa Cruz de Buracal', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (128, 128, '0001', 'Urumaco', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (129, 129, '0001', 'Puerto Cumarebo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (130, 130, '0001', 'Camaguán', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (131, 131, '0001', 'Chaguaramas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (132, 132, '0001', 'El Socorro', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (133, 133, '0001', 'Guayabal', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (134, 134, '0001', 'Valle de la Pascua', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (135, 135, '0001', 'Las Mercedes', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (136, 136, '0001', 'El Sombrero', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (137, 137, '0001', 'Calabozo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (138, 138, '0001', 'Altagracia de Orituco', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (139, 139, '0001', 'Ortiz', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (140, 140, '0001', 'Tucupido', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (141, 141, '0001', 'San Juan de Los Morros', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (142, 142, '0001', 'San José de Guaribe', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (143, 143, '0001', 'Santa María de Ipire', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (144, 144, '0001', 'Zaraza', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (145, 145, '0001', 'Sanare', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (146, 146, '0001', 'Duaca', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (147, 147, '0001', 'Barquisimeto', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (148, 148, '0001', 'Quíbor', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (149, 149, '0001', 'El Tocuyo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (150, 150, '0001', 'Cabudare', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (151, 151, '0001', 'Sarare', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (152, 152, '0001', 'Carora', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (153, 153, '0001', 'Siquisque', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (154, 154, '0001', 'El Vigía', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (155, 155, '0001', 'La Azulita', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (156, 156, '0001', 'Santa Cruz de Mora', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (157, 157, '0001', 'Aricagua', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (158, 158, '0001', 'Canagua', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (159, 159, '0001', 'Ejido', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (160, 160, '0001', 'Tucani', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (161, 161, '0001', 'Santo Domingo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (162, 162, '0001', 'Guaraque', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (163, 163, '0001', 'Arapuey', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (164, 164, '0001', 'Torondoy', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (165, 165, '0001', 'Mérida', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (166, 166, '0001', 'Timotes', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (167, 167, '0001', 'Santa Elena de Arenales', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (168, 168, '0001', 'Santa María de Caparo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (169, 169, '0001', 'Pueblo Llano', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (170, 170, '0001', 'Muchuchíes', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (171, 171, '0001', 'Bailadores', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (172, 172, '0001', 'Tabay', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (173, 173, '0001', 'Lagunillas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (174, 174, '0001', 'Tovar', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (175, 175, '0001', 'Nueva Bolivia', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (176, 176, '0001', 'Zea', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (177, 177, '0001', 'Caucagua', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (178, 178, '0001', 'San José de Barlovento', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (179, 179, '0001', 'Nuestra Señora del Rosario de Baruta', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (180, 180, '0001', 'Higuerote', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (181, 181, '0001', 'Mamporal', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (182, 182, '0001', 'Carrizal', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (183, 183, '0001', 'Chacao', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (184, 184, '0001', 'Charallave', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (185, 185, '0001', 'El Hatillo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (186, 186, '0001', 'Los Teques', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (187, 187, '0001', 'Santa Teresa del Tuy', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (188, 188, '0001', 'Ocumare del Tuy', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (189, 189, '0001', 'San Antonio de Los Altos', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (190, 190, '0001', 'Río Chico', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (191, 191, '0001', 'Santa Lucía', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (192, 192, '0001', 'Cúpira', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (193, 193, '0001', 'Guarenas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (194, 194, '0001', 'San Francisco de Yare', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (195, 195, '0001', 'Petare', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (196, 196, '0001', 'Cúa', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (197, 197, '0001', 'Guatire', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (198, 198, '0001', 'San Antonio de Los Altos', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (199, 199, '0001', 'Aguasay', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (200, 200, '0001', 'Caripito', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (201, 201, '0001', 'Caripe', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (202, 202, '0001', 'Caicara', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (203, 203, '0001', 'Punta de Mata', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (204, 204, '0001', 'Temblador', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (205, 205, '0001', 'Maturín', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (206, 206, '0001', 'Aragua de Maturín', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (207, 207, '0001', 'Punceres', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (208, 208, '0001', 'Santa Bárbara', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (209, 209, '0001', 'Barrancas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (210, 210, '0001', 'Uracoa', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (211, 211, '0001', 'Plaza Paraguachi', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (212, 212, '0001', 'La Asunción', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (213, 213, '0001', 'San Juan Bautista', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (214, 214, '0001', 'El Valle del Espíritu Santo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (215, 215, '0001', 'Santa Ana', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (216, 216, '0001', 'Pampatar', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (217, 217, '0001', 'Juan Griego', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (218, 218, '0001', 'Porlamar', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (219, 219, '0001', 'Boca del Río', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (220, 220, '0001', 'Punta de Piedra', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (221, 221, '0001', 'San Pedro de Coche', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (222, 222, '0001', 'Agua Blanca', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (223, 223, '0001', 'Araure', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (224, 224, '0001', 'Píritu', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (225, 225, '0001', 'Guanare', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (226, 226, '0001', 'Guanarito', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (227, 227, '0001', 'Paraíso de Chabasquén', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (228, 228, '0001', 'Ospino', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (229, 229, '0001', 'Acarigua', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (230, 230, '0001', 'Papelón', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (231, 231, '0001', 'Boconoito', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (232, 232, '0001', 'San Rafael de Onoto', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (233, 233, '0001', 'EL Playón', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (234, 234, '0001', 'Municipio Sucre Biscucuy', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (235, 235, '0001', 'Villa Bruzual', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (236, 236, '0001', 'Casanay', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (237, 237, '0001', 'San José de Aerocuar', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (238, 238, '0001', 'Río Caribe', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (239, 239, '0001', 'El Pilar', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (240, 240, '0001', 'Carúpano', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (241, 241, '0001', 'Marigüitar', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (242, 242, '0001', 'Yaguaraparo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (243, 243, '0001', 'Araya', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (244, 244, '0001', 'Tunapuy', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (245, 245, '0001', 'Irapa', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (246, 246, '0001', 'San Antonio del Golfo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (247, 247, '0001', 'Cumanacoa', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (248, 248, '0001', 'Cariaco', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (249, 249, '0001', 'Cumaná', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (250, 250, '0001', 'Güiria', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (251, 251, '0001', 'Cordero', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (252, 252, '0001', 'Las Mesas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (253, 253, '0001', 'Colón', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (254, 254, '0001', 'San Antonio del Táchira', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (255, 255, '0001', 'Táriba', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (256, 256, '0001', 'Santa Ana del Táchira', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (257, 257, '0001', 'San Rafael del Piñal', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (258, 258, '0001', 'San José De Bolívar', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (259, 259, '0001', 'La Fría', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (260, 260, '0001', 'Palmira', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (261, 261, '0001', 'Capacho Nuevo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (262, 262, '0001', 'La Grita', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (263, 263, '0001', 'El Cobre', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (264, 264, '0001', 'Rubio', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (265, 265, '0001', 'Capacho Viejo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (266, 266, '0001', 'Abejales', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (267, 267, '0001', 'Lobatera', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (268, 268, '0001', 'Michelena', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (269, 269, '0001', 'Coloncito', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (270, 270, '0001', 'Ureña', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (271, 271, '0001', 'Delicias', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (272, 272, '0001', 'La Tendida', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (273, 273, '0001', 'San Cristóbal', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (274, 274, '0001', 'Seboruco', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (275, 275, '0001', 'San Simón', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (276, 276, '0001', 'Queniquea', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (277, 277, '0001', 'San Josecito', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (278, 278, '0001', 'Pregonero', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (279, 279, '0001', 'Umuquena', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (280, 280, '0001', 'Santa Isabel', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (281, 281, '0001', 'Boconó', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (282, 282, '0001', 'Sabana Grande', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (283, 283, '0001', 'Chejendé', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (284, 284, '0001', 'Carache', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (285, 285, '0001', 'Escuque', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (286, 286, '0001', 'EL Paradero', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (287, 287, '0001', 'Campo Elías', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (288, 288, '0001', 'Santa Apolonia', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (289, 289, '0001', 'EL Dividive', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (290, 290, '0001', 'Monte Carmelo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (291, 291, '0001', 'Motatán', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (292, 292, '0001', 'Pampán', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (293, 293, '0001', 'Pampanito', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (294, 294, '0001', 'Betijoque', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (295, 295, '0001', 'Carvajal', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (296, 296, '0001', 'Sabana de Mendoza', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (297, 297, '0001', 'Trujillo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (298, 298, '0001', 'La Quebrada', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (299, 299, '0001', 'Valera', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (300, 300, '0001', 'San Pablo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (301, 301, '0001', 'Aroa', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (302, 302, '0001', 'Chivacoa', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (303, 303, '0001', 'Cocorote', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (304, 304, '0001', 'independencia', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (305, 305, '0001', 'Saban de Parra', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (306, 306, '0001', 'Boraure', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (307, 307, '0001', 'Yumare', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (308, 308, '0001', 'Nirgua', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (309, 309, '0001', 'Yaritagua', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (310, 310, '0001', 'San Felipe', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (311, 311, '0001', 'Guama', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (312, 312, '0001', 'Urachiche', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (313, 313, '0001', 'Farriar', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (314, 314, '0001', 'El Toro', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (315, 315, '0001', 'San Timoteo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (316, 316, '0001', 'Cabimas', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (317, 317, '0001', 'Encontrados', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (318, 318, '0001', 'San Carlos del Zulia', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (319, 319, '0001', 'Pueblo Nuevo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (320, 320, '0001', 'La Concepción', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (321, 321, '0001', 'Casigua el Cubo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (322, 322, '0001', 'Concepción', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (323, 323, '0001', 'Ciudad Ojeda', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (324, 324, '0001', 'Machiques', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (325, 325, '0001', 'San Rafael de Moján', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (326, 326, '0001', 'Maracaibo', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (327, 327, '0001', 'Los Puertos de Altagracia', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (328, 328, '0001', 'Sinamaica', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (329, 329, '0001', 'La Villla del Rosario', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (330, 330, '0001', 'San Francisco', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (331, 331, '0001', 'Santa Rita', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (332, 332, '0001', 'Tía Juana', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (333, 333, '0001', 'Bobures', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (334, 334, '0001', 'Bachaquero', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (335, 335, '0001', 'La Guaira', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (336, 336, '0001', 'Los Roques', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (337, 337, '0001', 'Las Aves', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (338, 338, '0001', 'La Orchila', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (339, 339, '0001', 'Otra Localidad (Dependencia Federal)', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (340, 340, '0001', 'Otra ciudad o localidad', '2017-03-29', '11:45:31.585866', 1);
INSERT INTO public.ciudad (id_ciu, id_mun, cod_ciu, desc_ciu, fec_crt_ciu, hor_crt_ciu, status) VALUES (341, 341, '99', 'NO APLICA', '2017-10-14', '15:57:25.88067', 1);


--
-- TOC entry 2246 (class 0 OID 16671)
-- Dependencies: 194
-- Data for Name: colores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (1, 1, 'NEGRO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (2, 2, 'AZUL', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (3, 3, 'PALO ROSA', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (4, 4, 'NARANJA', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (5, 5, 'VERDE', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (6, 6, 'BEIGE', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (7, 7, 'CROMÁTICO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (8, 8, 'VINOTINTO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (9, 9, 'GRIS / NEGRO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (10, 10, 'PLATEADO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (11, 11, 'BEIGE AUSTRALIA', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (12, 12, 'PLATEADO FERROSO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (13, 13, 'PERLA', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (14, 14, 'BEIGE OLIMPICO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (15, 15, 'ARENA METALIZADO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (16, 16, 'PLATA', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (17, 17, 'ROJO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (18, 18, 'AMARILLO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (19, 19, 'BEIGE DUNA', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (20, 20, 'MARRÓN / NEGRO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (21, 21, 'AZUL / BEIGE', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (22, 22, 'MARRÓN / BEIGE', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (23, 23, 'VERDE ESMERALDA', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (24, 24, 'PLATA CLARO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (25, 25, 'PLATEADO BRILLANTE', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (26, 26, 'MARRÓN PARDILLO BICAPA', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (27, 27, 'GRIS PALMERA', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (28, 28, 'DORADO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (29, 29, 'MADERA NATURAL', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (30, 30, 'NEGRO/AMARILLO MOSTAZA', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (31, 31, 'MARRON', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (32, 32, 'BLANCO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (33, 33, 'GRIS', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (34, 34, 'AZUL / GRIS', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (35, 35, 'AZUL / NEGRO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (36, 36, 'ACERO', '2017-07-03', '14:15:06.854029', 1);
INSERT INTO public.colores (id_col, cod_col, desc_col, fec_crt_col, hor_crt_col, status) VALUES (37, 37, 'OTRO COLOR', '2017-07-03', '14:15:06.854029', 1);


--
-- TOC entry 2242 (class 0 OID 16591)
-- Dependencies: 190
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2279 (class 0 OID 0)
-- Dependencies: 189
-- Name: inventario_id_eqp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventario_id_eqp_seq', 1, false);


--
-- TOC entry 2247 (class 0 OID 16678)
-- Dependencies: 195
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (1, 'XXX', 'NO APLICA', 'NO APLICA', '2017-10-10', '12:55:46.364448', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (2, '1', 'H P COMPAQ', 'H P COMPAQ', '2017-10-27', '10:54:11.506407', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (3, '2', 'COMPAQ', 'COMPAQ', '2017-10-27', '10:54:38.616178', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (4, '3', 'LENOVO', 'LENOVO', '2017-10-27', '10:57:13.337126', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (5, '4', 'H P', 'H P', '2017-10-27', '10:57:54.809801', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (6, '5', 'SONY', 'SONY', '2017-10-27', '11:01:25.89737', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (7, '6', 'DAEWOO', 'DAEWOO', '2017-10-27', '11:04:11.049083', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (8, '7', 'TAURUS', 'TAURUS', '2017-10-27', '11:04:43.844937', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (10, '9', 'NEC', 'NEC', '2017-10-27', '11:05:22.696226', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (11, '10', 'TOSHIBA', 'TOSHIBA', '2017-10-27', '11:05:39.190756', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (12, '11', 'GENERAL ELECTRIC', 'GENERAL ELECTRIC', '2017-10-27', '11:05:57.285076', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (13, '12', 'MANAPLAST', 'MANAPLAST', '2017-10-27', '11:06:17.46592', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (14, '13', 'GENERAL PLUS', 'GENERAL PLUS', '2017-10-27', '11:06:43.387077', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (15, '14', 'POWER BEAT', 'POWER BEAT', '2017-10-27', '11:07:01.311691', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (16, '15', 'IBM', 'IBM', '2017-10-27', '11:07:24.256909', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (17, '16', 'VIT', 'VIT', '2017-10-27', '11:07:39.874224', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (18, '17', 'CDP', 'CDP', '2017-10-27', '11:08:38.237205', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (19, '18', 'EMERALD', 'EMERALD', '2017-10-27', '11:08:59.328058', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (20, '19', 'SMART SERIES', 'SMART SERIES', '2017-10-27', '11:10:49.438353', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (22, '21', 'JVG', 'JVG', '2017-10-27', '11:12:04.938403', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (23, '22', 'IKEGAME', 'IKEGAME', '2017-10-27', '11:12:28.640845', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (24, '23', 'LG', 'LG', '2017-10-27', '11:12:48.263041', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (25, '24', 'KOLL-OPERETOR', 'KOLL-OPERETOR', '2017-10-27', '11:13:05.717933', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (26, '25', 'MICROSOFT', 'MICROSOFT', '2017-10-27', '11:13:25.455874', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (28, '27', 'KW-TRIO', 'KW-TRIO', '2017-10-27', '11:14:12.177246', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (29, '28', 'PHILIP', 'PHILIP', '2017-10-27', '11:14:32.910941', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (30, '30', 'X-APTO', 'X-APTO', '2017-10-27', '11:15:19.005177', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (31, '31', 'SAMSUNG', 'SAMSUNG', '2017-10-27', '11:16:24.798712', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (32, '32', 'VELOVEN', 'VELOVEN', '2017-10-27', '11:16:41.21563', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (33, '33', 'FELLOWES', 'FELLOWES', '2017-10-27', '11:17:08.692231', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (34, '34', 'APPLE', 'APPLE', '2017-10-27', '11:18:06.880392', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (36, '36', 'CASIO', 'CASIO', '2017-10-27', '11:20:25.436733', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (37, '37', 'FANNDEC', 'FANNDEC', '2017-10-27', '11:20:39.167062', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (38, '38', 'POWER BEAT', 'POWER BEAT', '2017-10-27', '11:20:54.370562', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (39, '39', 'NAC', 'NAC', '2017-10-27', '11:21:18.818348', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (40, '40', 'GENIUS', 'GENIUS', '2017-10-27', '11:21:43.987596', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (41, '41', 'INTEM', 'INTEM', '2017-10-27', '11:22:22.823032', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (42, '42', 'DENON', 'DENON', '2017-10-27', '11:22:44.696218', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (43, '43', 'SOUNDCRAFT', 'SOUNDCRAFT', '2017-10-27', '11:23:10.086803', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (44, '44', 'DAINAME', 'DAINAME', '2017-10-27', '11:24:02.795224', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (45, '45', 'YAMAHA', 'YAMAHA', '2017-10-27', '11:24:22.524453', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (46, '46', 'SENHEISER', 'SENHEISER', '2017-10-27', '11:24:39.426427', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (47, '48', 'JBL', 'JBL', '2017-10-27', '11:24:52.680472', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (48, '49', 'PHILIP', 'PHILIP', '2017-10-27', '11:25:22.257563', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (49, '50', 'CANON', 'CANON', '2017-10-27', '13:30:15.524906', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (50, '51', 'PANASONIC', 'PANASONIC', '2017-10-27', '13:30:50.879364', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (51, '52', 'ENERGIZAR', 'ENERGIZAR', '2017-10-27', '13:31:42.177034', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (52, '53', 'INTEGRA', 'INTEGRA', '2017-10-27', '13:33:18.629911', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (53, '54', 'OFITECH', 'OFITECH', '2017-10-27', '13:33:48.752365', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (54, '55', 'NACIONAL', 'NACIONAL', '2017-10-27', '13:34:45.775557', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (55, '56', 'OLYMPUS', 'OLYMPUS', '2017-10-27', '13:35:08.19043', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (56, '57', 'CHEVROLET', 'CHEVROLET', '2017-10-27', '13:35:22.085879', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (57, '58', 'HUAWEI', 'HUAWEI', '2017-10-27', '13:35:36.035243', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (58, '59', 'DELL', 'DELL', '2017-10-27', '13:36:15.452045', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (59, '60', 'ORINOQUIA', 'VETELCA', '2017-10-27', '13:36:56.83797', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (61, '62', 'KODE', 'KODE', '2017-11-01', '14:43:27.461114', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (63, '64', 'APC', 'APC', '2017-11-01', '14:48:16.543918', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (64, '65', 'AOC', 'AOC', '2017-11-01', '14:49:37.421204', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (65, '66', 'SONEVIEW', 'SONEVIEW', '2017-11-01', '14:52:17.518961', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (66, '67', 'EAGLE', 'EAGLE', '2017-11-01', '14:53:44.425946', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (67, '68', 'MITSUBICHI', 'MITSUBICHI', '2017-11-01', '14:54:57.996387', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (68, '69', 'MAKITA', 'MAKITA', '2017-11-01', '14:55:29.056417', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (69, '70', 'HOOVER', 'HOOVER', '2017-11-01', '14:56:10.508963', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (70, '71', 'PREMIUM', 'PREMIUM', '2017-11-01', '14:56:33.705616', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (71, '72', 'GPLUS', 'GPLUS', '2017-11-01', '14:56:55.208391', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (72, '73', 'TOYOTA', 'TOYOTA', '2017-11-01', '14:57:29.626227', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (73, '74', 'YBT', 'YBT', '2017-11-01', '14:58:17.002643', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (74, '75', 'OSTER', 'OSTER', '2017-11-01', '15:14:07.540764', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (75, '76', 'PREMIER', 'PREMIER', '2017-11-01', '15:14:48.589149', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (76, '77', 'AMCOR', 'AMCOR', '2017-11-01', '15:15:18.666798', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (77, '78', 'DRY CHEMICAL', 'DRY CHEMICAL', '2017-11-01', '15:17:07.908817', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (79, '80', 'STANLEY', 'STANLEY', '2017-11-07', '11:06:17.097413', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (9, '8', 'AITEG', 'AITEG', '2017-10-27', '11:05:03.033193', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (21, '20', 'ATEC', 'ATEC', '2017-10-27', '11:11:35.930328', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (27, '26', 'BLU', 'BLU', '2017-10-27', '11:13:43.348499', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (35, '35', 'AEROFLEX', 'AEROFLEX', '2017-10-27', '11:19:01.967425', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (60, '61', 'VELOVEN', 'VELOVEN', '2017-10-27', '13:37:18.129351', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (62, '63', 'BOSTON', 'BOSTON', '2017-11-01', '14:46:44.360459', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (78, '79', 'MAKITA', 'MAKITA', '2017-11-07', '10:34:16.875556', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (80, '81', 'ALL-IN-ONE PSC-1600', 'ALL-IN-ONE PSC-1600', '2018-02-15', '09:19:55.936383', 1);
INSERT INTO public.marca (id_marc, cod_marc, den_com_marc, nom_fab, fec_crt_marc, hor_crt_marc, status) VALUES (81, '82', 'PAPER MOSTER', 'PAPER MOSTER', '2019-08-13', '09:28:33.597772', 1);


--
-- TOC entry 2248 (class 0 OID 16688)
-- Dependencies: 196
-- Data for Name: modelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (1, 'XXX', 1554, 'XXX', 'NO APLICA', '2017-10-10', '13:52:07.949118', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (2, '25', 1402, '1', '1576', '2017-10-31', '10:14:36.26401', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (3, '2', 1402, '2', 'M-UAE96', '2017-10-31', '10:35:35.247219', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (4, '2', 1402, '3', 'SO10-1004LA', '2017-10-31', '10:36:37.207612', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (5, '16', 1407, '4', 'VIT2006', '2017-10-31', '10:37:28.11837', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (6, '18', 1554, '5', 'E-1000', '2017-10-31', '10:38:21.958731', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (12, '2', 1402, '11', 'W17Q', '2017-10-31', '13:21:03.014678', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (13, '15', 1402, '12', '6331-47N/C', '2017-11-01', '13:46:05.324524', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (14, '15', 1407, '13', '8188-33S', '2017-11-01', '14:35:34.535162', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (15, '15', 1402, '14', 'KB-29711', '2017-11-01', '14:37:00.307483', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (16, '4', 1402, '16', 'SK-2880', '2017-11-01', '15:20:02.783235', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (17, '4', 1402, '17', 'MNM-SBF96', '2017-11-01', '15:20:59.457131', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (18, '16', 1402, '18', 'TFT19N80PS', '2017-11-01', '15:21:52.581467', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (19, '1', 1407, '19', 'DC5700', '2017-11-01', '15:22:38.303426', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (20, '62', 1554, '20', 'K-AVR100612O VAC', '2017-11-01', '15:23:33.622306', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (21, '16', 1402, '21', 'MSU0718T', '2017-11-01', '15:27:23.037619', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (22, '2', 1407, '22', 'PC-SG3505LA', '2017-11-01', '15:28:43.110132', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (23, '2', 1402, '23', 'SK-2085', '2017-11-01', '15:30:12.322023', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (24, '3', 1402, '24', 'MO28VOL', '2017-11-01', '15:31:03.487126', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (25, '4', 1402, '25', 'L1710', '2017-11-01', '15:31:54.540556', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (26, '4', 1407, '26', 'CHCOMPAQ', '2017-11-01', '15:32:32.096866', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (27, '3', 1402, '27', 'KU-0225', '2017-11-01', '15:33:51.115998', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (28, '3', 1402, '28', 'L197WA', '2017-11-01', '15:35:04.17504', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (29, '3', 1407, '29', 'NUMBAR-A16', '2017-11-01', '15:35:56.986646', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (30, '2', 1402, '30', 'C01-1004LA', '2017-11-01', '15:37:04.979116', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (31, '50', 1388, '31', 'MP41DHLL', '2017-11-01', '15:38:17.067504', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (32, '65', 1402, '32', 'T782K52NKKACM', '2017-11-01', '15:39:04.388158', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (33, '4', 1402, '33', 'MSBJ96', '2017-11-01', '15:39:46.318713', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (34, '15', 1402, '34', '6332-4HE', '2017-11-01', '15:40:35.345703', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (35, '15', 1407, '35', '215', '2017-11-01', '15:41:28.368362', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (36, '66', 1554, '36', 'AVR-600M', '2017-11-01', '15:42:59.485342', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (37, '69', 182, '37', 'BDF-452', '2017-11-07', '10:33:30.479565', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (38, '69', 182, '38', 'DC18RAT', '2017-11-07', '10:35:13.451617', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (39, '80', 164, '39', '69-646', '2017-11-07', '11:07:24.725576', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (40, '25', 1402, '40', 'WIREDKEYBOARD600', '2017-11-07', '13:43:56.538381', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (41, '2', 1402, '41', 'CTFAUPQ', '2017-11-07', '13:53:35.679575', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (42, '63', 1383, '44', 'NO APLICA', '2017-11-08', '10:40:31.425526', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (43, '67', 1383, '45', 'TY838', '2017-11-08', '15:01:58.08359', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (44, '9', 1391, '46', 'DTR-1HM-1WHTL', '2017-11-08', '15:08:55.534064', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (45, '27', 1340, '47', '3921', '2017-11-09', '10:51:23.785265', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (46, '15', 1402, '48', '6332PHE', '2017-11-09', '13:40:56.98702', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (47, '4', 1338, '49', 'ALL-IN-ONE', '2017-11-14', '14:36:30.608232', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (48, '68', 1554, '50', 'DD-14020', '2017-11-14', '15:04:06.688205', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (49, '68', 1554, '51', 'HS-0590', '2017-11-14', '15:11:25.036247', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (50, '3', 1402, '52', 'THINKPAD', '2017-11-20', '14:17:29.928653', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (51, '53', 1554, '53', '600VA', '2017-11-20', '14:40:27.049055', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (7, '4', 1407, '55', 'XXXXX', '2019-07-25', '11:34:45.545273', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (8, '16', 1402, '56', 'KB2971', '2019-07-26', '10:00:52.532686', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (9, '8', 1554, '57', 'AL1000', '2019-07-29', '10:18:18.554006', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (52, '82', 1554, '58', '687-6S', '2019-08-13', '09:29:58.38635', 1);
INSERT INTO public.modelo (id_mod, cod_marc_mod, id_cat_esp, cod_mod, den_mod, fec_crt_mod, hor_crt_mod, status) VALUES (53, '11', 1517, '59', 'TAB4807EX', '2019-08-13', '09:45:43.859821', 1);


--
-- TOC entry 2244 (class 0 OID 16644)
-- Dependencies: 192
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (3, '0200', 'Municipio Autónomo Atabapo               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (5, '0400', 'Municipio Autonomo Autana                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (6, '0500', 'Municipio Autónomo Maroa                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (7, '0600', 'Municipio Autónomo Manapiare             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (8, '0700', 'Municipio Autónomo Río Negro             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (9, '0100', 'Municipio Anaco                          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (10, '0200', 'Municipio Aragua                         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (11, '0300', 'Municipio Fernando de Peñalver           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (12, '0400', 'Municipio Francisco del Carmen Carvajal  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (13, '0500', 'Municipio Francisco de Miranda           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (14, '0600', 'Municipio Guanta                         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (15, '0700', 'Municipio Independencia                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (16, '0800', 'Municipio Juan Antonio Sotillo           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (17, '0900', 'Municipio Juan Manuel Cajigal            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (18, '1000', 'Municipio José Gregorio Monagas          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (19, '1100', 'Municipio Libertad                       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (28, '2000', 'Municipio Sir Arthur Mc Gregor		   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (29, '2100', 'Municipio Turístico Diego Bautista Urbaneja ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (30, '0100', 'Municipio Achaguas                          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (31, '0200', 'Municipio Biruaca                           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (32, '0300', 'Municipio Muñoz                             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (33, '0400', 'Municipio Páez                              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (34, '0500', 'Municipio Pedro Camejo                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (35, '0600', 'Municipio Rómulo Gallegos                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (36, '0700', 'Municipio San Fernando                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (37, '0100', 'Municipio Bolívar                           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (38, '0200', 'Municipio Camatagua                         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (39, '0300', 'Municipio Girardot                          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (40, '0400', 'Municipio José Ángel Lamas                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (41, '0500', 'Municipio José Félix Ribas                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (42, '0600', 'Municipio José Rafael Revenga               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (43, '0700', 'Municipio Libertador                        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (44, '0800', 'Municipio Mario Briceño Iragorry            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (45, '0900', 'Municipio San Casimiro                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (46, '1000', 'Municipio San Sebastián                     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (47, '1100', 'Municipio Santiago Mariño                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (48, '1200', 'Municipio Santos Michelena                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (49, '1300', 'Municipio Sucre                             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (50, '1400', 'Municipio Tovar                             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (51, '1500', 'Municipio Urdaneta                          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (52, '1600', 'Municipio Zamora                            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (53, '1700', 'Municipio Francisco Linares Alcantara       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (54, '1800', 'Municipio Ocumare de La Costa de Oro', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (55, '0100', 'Municipio Alberto Arvelo Torrealba  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (56, '0200', 'Municipio Antonio José de Sucre     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (57, '0300', 'Municipio Arismendi                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (58, '0400', 'Municipio Barinas                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (59, '0500', 'Municipio Bolívar                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (60, '0600', 'Municipio Cruz Paredes              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (61, '0700', 'Municipio Ezequiel Zamora           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (62, '0800', 'Municipio Obispos                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (63, '0900', 'Municipio Pedraza                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (64, '1000', 'Municipio Rojas                     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (65, '1100', 'Municipio Sosa                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (66, '1200', 'Municipio Andrés Eloy Blanco        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (67, '0100', 'Municipio Caroní                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (68, '0200', 'Municipio Cedeño                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (69, '0300', 'Municipio El Callao                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (70, '0400', 'Municipio Gran Sabana               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (71, '0500', 'Municipio Heres                     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (72, '0600', 'Municipio Piar                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (73, '0700', 'Municipio Raúl Leoni                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (74, '0800', 'Municipio Roscio                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (75, '0900', 'Municipio Sifontes                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (76, '1000', 'Municipio Sucre                     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (77, '1100', 'Municipio Padre Pedro Chien         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (78, '0100', 'Municipio Bejuma                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (79, '0200', 'Municipio Carlos Arvelo             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (80, '0300', 'Municipio Diego Ibarra		   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (81, '0400', 'Municipio Guacara                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (21, '1300', 'Municipio Pedro María Freites            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (22, '1400', 'Municipio Píritu                         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (24, '1600', 'Municipio San Juan de Capistrano         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (23, '1500', 'Municipio San José de Guanipa            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (25, '1700', 'Municipio Santa Ana                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (27, '1900', 'Municipio Simón Rodríguez                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (26, '1800', 'Municipio Simón Bolívar                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (1, '0100', 'Municipio Libertador', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (2, '0100', 'Municipio Autónomo Alto Orinoco', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (4, '0300', 'Municipio Autónomo Atures', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (82, '0500', 'Municipio Juan José Mora            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (83, '0600', 'Municipio Libertador                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (84, '0700', 'Municipio Los Guayos                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (85, '0800', 'Municipio Miranda                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (86, '0900', 'Municipio Montalbán                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (87, '1000', 'Municipio Naguanagua                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (88, '1100', 'Municipio Puerto Cabello            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (89, '1200', 'Municipio San Diego                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (90, '1300', 'Municipio San Joaquín               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (91, '1400', 'Municipio Valencia                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (92, '0100', 'Municipio Anzoátegui                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (93, '0200', 'Municipio Falcón                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (94, '0300', 'Municipio Girardot                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (95, '0400', 'Municipio Lima Blanco               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (96, '0500', 'Municipio Pao de San Juan Bautista  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (97, '0600', 'Municipio Ricaurte                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (98, '0700', 'Municipio Rómulo Gallegos           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (99, '0800', 'Municipio San Carlos                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (100, '0900', 'Municipio Tinaco                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (101, '0100', 'Municipio Antonio Díaz             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (102, '0200', 'Municipio Casacoima                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (103, '0300', 'Municipio Pedernales               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (104, '0400', 'Municipio Tucupita                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (105, '0100', 'Municipio Acosta                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (106, '0200', 'Municipio Bolívar                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (107, '0300', 'Municipio Buchivacoa		  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (108, '0400', 'Municipio Cacique Manaure          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (109, '0500', 'Municipio Carirubana               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (110, '0600', 'Municipio Colina                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (111, '0700', 'Municipio Dabajuro                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (112, '0800', 'Municipio Democracia               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (113, '0900', 'Municipio Falcón                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (114, '1000', 'Municipio Federación               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (115, '1100', 'Municipio Jacura                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (116, '1200', 'Municipio Los Taques               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (117, '1300', 'Municipio Mauroa                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (118, '1400', 'Municipio Miranda                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (119, '1500', 'Municipio Monseñor Iturriza        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (120, '1600', 'Municipio Palmasola                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (121, '1700', 'Municipio Petit                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (122, '1800', 'Municipio Piritu                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (123, '1900', 'Municipio San Francisco            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (124, '2000', 'Municipio Silva                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (125, '2100', 'Municipio Sucre                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (126, '2200', 'Municipio Tocopero                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (127, '2300', 'Municipio Unión                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (128, '2400', 'Municipio Urumaco                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (129, '2500', 'Municipio Zamora                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (130, '0100', 'Municipio Camaguan                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (131, '0200', 'Municipio Chaguaramas              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (132, '0300', 'Municipio El Socorro               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (133, '0400', 'Municipio San Gerónimo de Guayabal ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (134, '0500', 'Municipio Leonardo Infante	  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (135, '0600', 'Municipio Las Mercedes		  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (136, '0700', 'Municipio Julián Mellado           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (137, '0800', 'Municipio Francisco de Miranda     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (138, '0900', 'Municipio José Tadeo Monagas       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (139, '1000', 'Municipio Ortiz                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (140, '1100', 'Municipio José Félix Ribas         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (141, '1200', 'Municipio Juan German Roscio       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (142, '1300', 'Municipio San José de Guaribe      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (143, '1400', 'Municipio Santa María de Ipire     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (144, '1500', 'Municipio Pedro Zaraza             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (145, '0100', 'Municipio Andrés Eloy Blanco       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (146, '0200', 'Municipio Crespo                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (147, '0300', 'Municipio Iribarren                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (148, '0400', 'Municipio Jiménez                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (149, '0500', 'Municipio Morón                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (150, '0600', 'Municipio Palavecino               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (151, '0700', 'Municipio Simón Planas             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (152, '0800', 'Municipio Torres                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (153, '0900', 'Municipio Urdaneta                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (154, '0100', 'Municipio Alberto Adriani          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (155, '0200', 'Municipio Andrés Bello             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (156, '0300', 'Municipio Antonio Pinto Salinas    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (157, '0400', 'Municipio Aricagua                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (158, '0500', 'Municipio Arzobispo Chacón         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (159, '0600', 'Municipio Campo Elías              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (160, '0700', 'Municipio Caracciolo Parra Olmedo  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (161, '0800', 'Municipio Cardenal Quintero        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (162, '0900', 'Municipio Guaraque   	      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (163, '1000', 'Municipio Julio Cesar Salas    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (164, '1100', 'Municipio Justo Briceño        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (165, '1200', 'Municipio Libertador           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (166, '1300', 'Municipio Miranda              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (167, '1400', 'Municipio Obispo Ramos de Lora ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (168, '1500', 'Municipio Padre Noguera        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (169, '1600', 'Municipio Pueblo Llano         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (170, '1700', 'Municipio Rangel               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (171, '1800', 'Municipio Rivas Dávila         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (172, '1900', 'Municipio Santos Marquina      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (173, '2000', 'Municipio Sucre                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (174, '2100', 'Municipio Tovar                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (175, '2200', 'Municipio Tulio Febres Cordero ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (176, '2300', 'Municipio Zea                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (177, '0100', 'Municipio Acevedo              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (178, '0200', 'Municipio Andrés Bello         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (179, '0300', 'Municipio Baruta               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (180, '0400', 'Municipio Brion                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (181, '0500', 'Municipio Buroz                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (182, '0600', 'Municipio Carrizal             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (183, '0700', 'Municipio Chacao               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (184, '0800', 'Municipio Cristóbal Rojas      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (185, '0900', 'Municipio El Hatillo           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (186, '1000', 'Municipio Guaicaipuro          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (187, '1100', 'Municipio Independencia        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (188, '1200', 'Municipio Lander               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (189, '1300', 'Municipio Los Salías	  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (190, '1400', 'Municipio Páez             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (191, '1500', 'Municipio Paz Castillo     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (192, '1600', 'Municipio Pedro Gual       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (193, '1700', 'Municipio Plaza            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (194, '1800', 'Municipio Simón Bolívar    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (195, '1900', 'Municipio Sucre            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (196, '2000', 'Municipio Urdaneta         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (197, '2100', 'Municipio Zamora           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (198, '0100', 'Municipio Acosta           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (199, '0200', 'Municipio Aguasay          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (200, '0300', 'Municipio Bolívar          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (201, '0400', 'Municipio Caripe           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (202, '0500', 'Municipio Cedeño           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (203, '0600', 'Municipio Ezequiel Zamora  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (204, '0700', 'Municipio Libertador       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (205, '0800', 'Municipio Maturín          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (206, '0900', 'Municipio Piar             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (207, '1000', 'Municipio Punceres         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (208, '1100', 'Municipio Santa Bárbara    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (209, '1200', 'Municipio Sotillo          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (210, '1300', 'Municipio Uracoa           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (211, '0100', 'Municipio Antolon del Campo', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (212, '0200', 'Municipio Arismendi        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (213, '0300', 'Municipio Díaz             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (214, '0400', 'Municipio García           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (215, '0500', 'Municipio Gómez            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (216, '0600', 'Municipio Maneiro		      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (217, '0700', 'Municipio Marcano                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (218, '0800', 'Municipio Mariño                       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (219, '0900', 'Municipio Península de Macanao         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (220, '1000', 'Municipio Tubores                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (221, '1100', 'Municipio Villalba                     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (222, '0100', 'Municipio Agua Blanca                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (223, '0200', 'Municipio Araure                       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (224, '0300', 'Municipio Esteller                     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (225, '0400', 'Municipio Guanare                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (226, '0500', 'Municipio Guanarito                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (227, '0600', 'Municipio Monseñor José Vicente de Unda', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (228, '0700', 'Municipio Ospino                       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (229, '0800', 'Municipio Páez                         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (230, '0900', 'Municipio Papelon                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (231, '1000', 'Municipio San Genaro de Boconoito      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (232, '1100', 'Municipio San Rafael de Onoto          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (233, '1200', 'Municipio Santa Rosalía                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (234, '1300', 'Municipio Sucre                        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (235, '1400', 'Municipio Turín                        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (236, '0100', 'Municipio Andrés Eloy Blanco           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (237, '0200', 'Municipio Andrés Mata                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (238, '0300', 'Municipio Arismendi                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (239, '0400', 'Municipio Benítez                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (240, '0500', 'Municipio Bermúdez                     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (241, '0600', 'Municipio Bolívar                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (242, '0700', 'Municipio Cajigal                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (243, '0800', 'Municipio Cruz Salmerón Acosta', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (244, '0900', 'Municipio Libertador          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (245, '1000', 'Municipio Mariño              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (246, '1100', 'Municipio Mejías              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (247, '1200', 'Municipio Montes              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (248, '1300', 'Municipio Ribero              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (249, '1400', 'Municipio Sucre               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (250, '1500', 'Municipio Valdez              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (251, '0100', 'Municipio Andrés Bello        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (252, '0200', 'Municipio Antonio Rómulo Costa', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (253, '0300', 'Municipio Ayacucho            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (254, '0400', 'Municipio Bolívar             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (255, '0500', 'Municipio Cárdenas            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (256, '0600', 'Municipio Córdoba             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (257, '0700', 'Municipio Fernández Feo       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (258, '0800', 'Municipio Francisco de Miranda', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (259, '0900', 'Municipio García de Hevia     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (260, '1000', 'Municipio Guasimos            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (261, '1100', 'Municipio Independencia       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (262, '1200', 'Municipio Jáuregui            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (263, '1300', 'Municipio José María Vargas   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (264, '1400', 'Municipio Junín               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (265, '1500', 'Municipio Libertad            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (266, '1600', 'Municipio Libertador          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (267, '1700', 'Municipio Lobatera            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (268, '1800', 'Municipio Michelena           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (269, '1900', 'Municipio Panamericano        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (270, '2000', 'Municipio Pedro María Ureña		  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (271, '2100', 'Municipio Rafael Urdaneta                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (272, '2200', 'Municipio Samuel Darío Maldonado           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (273, '2300', 'Municipio San Cristóbal                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (274, '2400', 'Municipio Seboruco                         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (275, '2500', 'Municipio Simón Rodríguez                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (276, '2600', 'Municipio Sucre                            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (277, '2700', 'Municipio Torbes                           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (278, '2800', 'Municipio Uribante                         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (279, '2900', 'Municipio San Judas Tadeo                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (280, '0100', 'Municipio Andrés Bello                     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (281, '0200', 'Municipio Bocono                           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (282, '0300', 'Municipio Bolívar                          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (283, '0400', 'Municipio Candelaria                       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (284, '0500', 'Municipio Carache                          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (285, '0600', 'Municipio Escuque                          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (286, '0700', 'Municipio José Felipe Márquez Carrizales   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (287, '0800', 'Municipio Juan Vicente Campo Elías         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (288, '0900', 'Municipio La Ceiba                         ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (289, '1000', 'Municipio Miranda                          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (290, '1100', 'Municipio Monte Carmelo                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (291, '1200', 'Municipio Motatan                          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (292, '1300', 'Municipio Pampan                           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (293, '1400', 'Municipio Pampanito                        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (294, '1500', 'Municipio Rafael Rangel                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (295, '1600', 'Municipio San Rafael de Carvajal           ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (296, '1700', 'Municipio Sucre                            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (297, '1800', 'Municipio Trujillo		  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (298, '1900', 'Municipio Urdaneta                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (299, '2000', 'Municipio Valera                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (300, '0100', 'Municipio Arístides Bastidas       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (301, '0200', 'Municipio Bolívar                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (302, '0300', 'Municipio Bruzual                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (303, '0400', 'Municipio Cocorote                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (304, '0500', 'Municipio Independencia            ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (305, '0600', 'Municipio José Antonio Páez        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (306, '0700', 'Municipio La Trinidad              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (307, '0800', 'Municipio Manuel Monge             ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (308, '0900', 'Municipio Nirgua                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (309, '1000', 'Municipio Peña                     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (310, '1100', 'Municipio San Felipe               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (311, '1200', 'Municipio Sucre                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (312, '1300', 'Municipio Urachiche                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (313, '1400', 'Municipio Veroes                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (314, '0100', 'Municipio Almirante Padilla        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (315, '0200', 'Municipio Baralt                   ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (316, '0300', 'Municipio Cabimas                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (317, '0400', 'Municipio Catatumbo                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (318, '0500', 'Municipio Colon                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (319, '0600', 'Municipio Francisco Javier Pulgar  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (320, '0700', 'Municipio Jesús Enrique Lossada    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (321, '0800', 'Municipio Jesús María Sempron      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (322, '0900', 'Municipio La Cañada de Urdaneta    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (323, '1000', 'Municipio Lagunillas               ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (324, '1100', 'Municipio Machiques de Perijá	    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (325, '1200', 'Municipio Mara                       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (326, '1300', 'Municipio Maracaibo                  ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (327, '1400', 'Municipio Miranda                    ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (328, '1500', 'Municipio Páez                       ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (329, '1600', 'Municipio Rosario de Perijá          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (330, '1700', 'Municipio San Francisco              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (331, '1800', 'Municipio Santa Rita                 ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (332, '1900', 'Municipio Simón Bolívar              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (333, '2000', 'Municipio Sucre                      ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (334, '2100', 'Municipio Valmore Rodríguez          ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (335, '0100', 'Municipio Vargas                     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (336, '0100', 'Archipiélago Los Roques              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (337, '0200', 'Archipiélago Las Aves                ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (338, '0300', 'Archipiélago La Orchila              ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (339, '0100', 'Otras Dependencias Federales (M)     ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (340, '0100', 'Registro de Normalización (Municipio)', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (20, '1200', 'Municipio Manuel Ezequiel Bruzual        ', '2017-03-29', '11:43:37.371799', 1);
INSERT INTO public.municipio (id_mun, cod_mun, desc_mun, fec_crt_mun, hor_crt_mun, status) VALUES (341, '99', 'NO APLICA', '2017-10-14', '15:56:58.84549', 1);


--
-- TOC entry 2245 (class 0 OID 16652)
-- Dependencies: 193
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1, 1, '1', 'Parroquia Altagracia    ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (2, 1, '2', 'Parroquia Antímano      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (3, 1, '3', 'Parroquia Candelaria    ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (4, 1, '4', 'Parroquia Caricuao      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (5, 1, '5', 'Parroquia Catedral      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (6, 1, '6', 'Parroquia Coche         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (7, 1, '7', 'Parroquia El Junquito   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (8, 1, '8', 'Parroquia EL Paraíso    ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (9, 1, '9', 'Parroquia El Recreo     ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (10, 1, '10', 'Parroquia El Valle      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (11, 1, '11', 'Parroquia La Pastora    ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (12, 1, '12', 'Parroquia La Vega       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (13, 1, '13', 'Parroquia Macarao       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (14, 1, '14', 'Parroquia San Agustín   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (15, 1, '15', 'Parroquia San Bernardino', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (16, 1, '16', 'Parroquia San José      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (17, 1, '17', 'Parroquia San Juan      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (18, 1, '18', 'Parroquia San Pedro     ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (19, 1, '19', 'Parroquia Santa Rosalía ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (20, 1, '20', 'Parroquia Santa Teresa  ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (21, 1, '21', 'Parroquia Sucre         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (22, 1, '22', 'Parroquia 23 de Enero   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (23, 2, '1', 'Parroquia Huachamacare  ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (24, 2, '2', 'Parroquia Marawaka      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (25, 2, '3', 'Parroquia Mavaca        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (26, 2, '4', 'Parroquia Sierra Parima ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (27, 3, '1', 'Parroquia Ucata         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (28, 3, '2', 'Parroquia Yapacana      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (29, 3, '3', 'Parroquia Caname        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (30, 4, '1', 'Parroquia Fernando Girón Tovar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (31, 4, '2', 'Parroquia Luis Alberto Gómez                   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (32, 4, '3', 'Parroquia Parhueña                             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (33, 4, '4', 'Parroquia Platanilla                           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (34, 5, '1', 'Parroquia Samariapo                            ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (35, 5, '2', 'Parroquia Sipapo                               ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (36, 5, '3', 'Parroquia Munduapo                             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (37, 5, '4', 'Parroquia Guayapo                              ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (38, 6, '1', 'Parroquia Victorino                            ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (39, 6, '2', 'Parroquia Comunidad                            ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (40, 7, '1', 'Parroquia Alto Ventuari                        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (41, 7, '2', 'Parroquia Medio Ventuari                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (42, 7, '3', 'Parroquia Bajo Ventuari                        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (43, 8, '1', 'Parroquia Solano                               ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (44, 8, '2', 'Parroquia Casiquiare                           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (45, 8, '3', 'Parroquia Cocuy                                ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (46, 9, '1', 'Parroquia Capital Anaco                        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (47, 9, '2', 'Parroquia San Joaquín                          ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (48, 10, '1', 'Parroquia Capital Aragua                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (49, 10, '2', 'Parroquia Cachip                               ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (50, 11, '1', 'Parroquia Capital Fernando de Peñalver         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (51, 11, '2', 'Parroquia San Miguel                           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (52, 11, '3', 'Parroquia Sucre                                ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (53, 12, '1', 'Parroquia Capital Francisco del Carmen Carvajal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (54, 12, '2', 'Parroquia Santa Bárbara                        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (55, 13, '1', 'Parroquia Capital Francisco de Miranda         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (56, 13, '2', 'Parroquia Atapirire                            ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (57, 13, '3', 'Parroquia Boca del Pao                         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (58, 13, '4', 'Parroquia El Pao                               ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (59, 13, '5', 'Parroquia Mácura                               ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (60, 14, '1', 'Parroquia Capital Guanta						 ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (61, 14, '2', 'Parroquia Chorrerón					   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (62, 15, '1', 'Parroquia Capital Independencia          ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (63, 15, '2', 'Parroquia Mamo                           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (64, 16, '1', 'Parroquia Capital Puerto La Cruz         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (65, 16, '2', 'Parroquia Pozuelos                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (66, 17, '1', 'Parroquia Capital Juan Manuel Cajigal    ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (67, 17, '2', 'Parroquia San Pablo                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (68, 18, '1', 'Parroquia Capital José Gregorio Monagas  ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (69, 18, '2', 'Parroquia Piar                           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (70, 18, '3', 'Parroquia San Diego de Cabrutica         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (71, 18, '4', 'Parroquia Santa Clara                    ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (72, 18, '5', 'Parroquia Uverito                        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (73, 18, '6', 'Parroquia Zuata                          ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (74, 19, '1', 'Parroquia Capital Libertad               ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (75, 19, '2', 'Parroquia El Carito                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (76, 19, '3', 'Parroquia Santa Inés                     ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (77, 20, '1', 'Parroquia Capital Manuel Ezequiel Bruzual', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (78, 20, '2', 'Parroquia Guanape                        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (79, 20, '3', 'Parroquia Sabana de Uchire               ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (80, 21, '1', 'Parroquia Capital Pedro María Freites    ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (81, 21, '2', 'Parroquia Libertador                     ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (82, 21, '3', 'Parroquia Santa Rosa                     ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (83, 21, '4', 'Parroquia Urica                          ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (84, 22, '1', 'Parroquia Capital Píritu                 ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (85, 22, '2', 'Parroquia San Francisco                  ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (86, 23, '1', 'Parroquia CM San José de Guanipa         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (87, 24, '1', 'Parroquia Capital San Juan de Capistrano ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (88, 24, '2', 'Parroquia Boca de Chávez                 ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (89, 25, '1', 'Parroquia Capital Santa Ana              ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (90, 25, '2', 'Parroquia Pueblo Nuevo                   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (91, 26, '1', 'Parroquia El Carmen					   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (92, 26, '2', 'Parroquia San Cristóbal                  ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (93, 26, '3', 'Parroquia Bergantín                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (94, 26, '4', 'Parroquia Caigua                         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (95, 26, '5', 'Parroquia El Pilar                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (96, 26, '6', 'Parroquia Naricual                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (97, 27, '1', 'Parroquia Edmundo Barrios                ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (98, 27, '2', 'Parroquia Miguel Otero Silva             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (99, 28, '1', 'Parroquia Capital Sir Arthur Mc Gregor   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (100, 28, '2', 'Parroquia Tomas Alfaro Calatrava         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (101, 29, '1', 'Parroquia Capital Diego Bautista Urbaneja', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (102, 29, '2', 'Parroquia El Morro                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (103, 30, '1', 'Parroquia Urbana Achaguas                ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (104, 30, '2', 'Parroquia Apurito                        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (105, 30, '3', 'Parroquia El Yagual                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (106, 30, '4', 'Parroquia Guachara                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (107, 30, '5', 'Parroquia Mucuritas                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (108, 30, '6', 'Parroquia Queseras del Medio             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (109, 31, '1', 'Parroquia Urbana Biruaca                 ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (110, 32, '1', 'Parroquia Urbana Bruzual                 ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (111, 32, '2', 'Parroquia Mantecal                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (112, 32, '3', 'Parroquia Quintero                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (113, 32, '4', 'Parroquia Rincón Hondo                   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (114, 32, '5', 'Parroquia San Vicente                    ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (115, 33, '1', 'Parroquia Urbana Guasdualito             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (116, 33, '2', 'Parroquia Arismendi                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (117, 33, '3', 'Parroquia El Amparo                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (118, 33, '4', 'Parroquia San Camilo                     ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (119, 33, '5', 'Parroquia Urdaneta                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (120, 34, '1', 'Parroquia Urbana San Juan de Payara      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (121, 34, '2', 'Parroquia Codazzi                        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (122, 34, '3', 'Parroquia Cunaviche                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (123, 35, '1', 'Parroquia Urbana Elorza                  ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (124, 35, '2', 'Parroquia La Trinidad                    ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (125, 36, '1', 'Parroquia Urbana San Fernando            ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (126, 36, '2', 'Parroquia El Recreo                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (127, 36, '3', 'Parroquia Peñalver                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (128, 36, '4', 'Parroquia San Rafael de Atamaica         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (129, 37, '1', 'Parroquia CM San Mateo                   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (130, 38, '1', 'Parroquia Camatagua                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (131, 38, '2', 'Parroquia Carmen de Cura                 ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (132, 39, '1', 'Parroquia Choroní                        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (133, 39, '2', 'Parroquia Andrés Eloy Blanco             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (134, 39, '3', 'Parroquia Joaquín Crespo                 ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (135, 39, '4', 'Parroquia Parroquia José Casanova Godoy  ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (136, 39, '5', 'Parroquia Las Delicias                   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (137, 39, '6', 'Parroquia Los Tacariguas                 ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (138, 39, '7', 'Parroquia Madre María de San José        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (139, 39, '8', 'Parroquia José Pedro Ovalles             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (140, 40, '1', 'Parroquia CM Santa Cruz                  ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (141, 41, '1', 'Parroquia Castor Nienes Ríos             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (142, 41, '2', 'Parroquia La Guacamaya                   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (143, 41, '3', 'Parroquia Pao de Zárate                  ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (144, 41, '4', 'Parroquia Urbana Zuata                   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (145, 41, '5', 'Parroquia Juan Vicente Bolívar           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (146, 42, '1', 'Parroquia CM El Consejo                  ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (147, 43, '1', 'Parroquia Libertador                     ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (148, 43, '2', 'Parroquia San Martín de Porras           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (149, 44, '1', 'Parroquia Caña de Azúcar                 ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (150, 44, '2', 'Parroquia Mario Briceño Iragorry		   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (151, 45, '1', 'Parroquia Güiripa					   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (152, 45, '2', 'Parroquia Ollas de Caramacate        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (153, 45, '3', 'Parroquia Valle Morín                ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (154, 45, '4', 'Parroquia San Casimiro               ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (155, 46, '1', 'Parroquia CM San Sebastián           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (156, 47, '1', 'Parroquia Alfredo Pacheco Miranda    ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (157, 47, '2', 'Parroquia Arévalo Aponte             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (158, 47, '3', 'Parroquia Chuao                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (159, 47, '4', 'Parroquia Samán de Guere             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (160, 47, '5', 'Parroquia Santigo Mariño             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (161, 48, '1', 'Parroquia Tiara                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (162, 48, '2', 'Parroquia Santos Michelena           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (163, 49, '1', 'Parroquia Bella Vista                ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (164, 49, '2', 'Parroquia Sucre                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (165, 50, '1', 'Parroquia La Colonia Tovar           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (166, 51, '1', 'Parroquia Las Peñitas                ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (167, 51, '2', 'Parroquia San Francisco de Cara      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (168, 51, '3', 'Parroquia Taguay                     ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (169, 51, '3', 'Parroquia Urdaneta                   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (170, 52, '1', 'Parroquia Augusto Mijares            ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (171, 52, '2', 'Parroquia San Francisco de Asís      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (172, 52, '3', 'Parroquia Valles de Tucunemo         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (173, 52, '4', 'Parroquia Magdaleno                  ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (174, 52, '5', 'Parroquia Zamora                     ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (175, 53, '1', 'Parroquia Monseñor Feliciano González', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (176, 53, '2', 'Parroquia Francisco Linares Alcántara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (177, 53, '3', 'Parroquia Francisco de Miranda       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (178, 54, '1', 'Parroquia Ocumare de la Costa        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (179, 55, '1', 'Parroquia Sabaneta                   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (180, 55, '2', 'Parroquia Rodríguez Domínguez        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (181, 56, '1', 'Parroquia Ticoporo						   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (182, 56, '2', 'Parroquia Andrés Bello                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (183, 56, '3', 'Parroquia Nicolás Pulido                     ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (184, 57, '1', 'Parroquia Arismendi                          ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (185, 57, '2', 'Parroquia Guadarrama                         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (186, 57, '3', 'Parroquia La Unión                           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (187, 57, '4', 'Parroquia San Antonio                        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (188, 58, '1', 'Parroquia Barinas                            ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (189, 58, '2', 'Parroquia Alfredo Arvelo Larriva             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (190, 58, '3', 'Parroquia San Silvestre                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (191, 58, '4', 'Parroquia Santa Inés                         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (192, 58, '5', 'Parroquia Santa Lucía                        ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (193, 58, '6', 'Parroquia Torunos                            ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (194, 58, '7', 'Parroquia El Carmen                          ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (195, 58, '8', 'Parroquia Rómulo Betancourt                  ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (196, 58, '9', 'Parroquia Corazón de Jesús                   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (197, 58, '10', 'Parroquia Ramón Ignacio Méndez               ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (198, 58, '11', 'Parroquia Alto Barinas                       ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (199, 58, '12', 'Parroquia Manuel Palacio Fajardo             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (200, 58, '13', 'Parroquia Juan Antonio Rodríguez Domínguez   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (201, 58, '14', 'Parroquia Dominga Ortiz de Páez              ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (202, 59, '1', 'Parroquia Barinitas                          ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (203, 59, '2', 'Parroquia Altamira                           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (204, 59, '3', 'Parroquia Calderas                           ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (205, 60, '1', 'Parroquia Barrancas                          ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (206, 60, '2', 'Parroquia El Socorro                         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (207, 60, '3', 'Parroquia Masparrito                         ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (208, 61, '1', 'Parroquia Santa Bárbara                      ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (209, 61, '2', 'Parroquia José Ignacio Del Pumar             ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (210, 61, '3', 'Parroquia Pedro Briceño Méndez               ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (211, 61, '4', 'Parroquia Ramón Ignacio Méndez               ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (212, 61, '1', 'Parroquia Obispos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (213, 61, '2', 'Parroquia El Real', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (214, 61, '3', 'Parroquia La Luz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (215, 61, '4', 'Parroquia Los Guasimitos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (216, 63, '1', 'Parroquia Ciudad Bolivia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (217, 63, '2', 'Parroquia Ignacio Briceño', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (218, 63, '3', 'Parroquia José Félix Ribas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (219, 63, '4', 'Parroquia Páez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (220, 64, '1', 'Parroquia Libertad', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (221, 64, '2', 'Parroquia Dolores', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (222, 64, '3', 'Parroquia Palacios Fajardo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (223, 64, '4', 'Parroquia Santa Rosa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (224, 64, '5', 'Parroquia Simón Rodríguez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (225, 65, '1', 'Parroquia Ciudad de Nutrias', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (226, 65, '2', 'Parroquia El Regalo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (227, 65, '3', 'Parroquia Puerto de Nutrias', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (228, 65, '4', 'Parroquia Santa Catalina', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (229, 65, '5', 'Parroquia Simón Bolívar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (230, 66, '1', 'Parroquia El Cantón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (231, 66, '2', 'Parroquia Santa Cruz de Guacas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (232, 66, '3', 'Parroquia Puerto Vivas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (233, 67, '1', 'Parroquia Cachamay', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (234, 67, '2', 'Parroquia Chirica', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (235, 67, '3', 'Parroquia Dalla Costa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (236, 67, '4', 'Parroquia Once de Abril', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (237, 67, '5', 'Parroquia Simón Bolívar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (238, 67, '6', 'Parroquia Unare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (239, 67, '7', 'Parroquia Universidad', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (240, 67, '8', 'Parroquia Vista al Sol', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (241, 67, '9', 'Parroquia Pozo Verde', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (242, 67, '10', 'Parroquia Yocoima', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (243, 68, '1', 'Sección Capital Cedeño', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (244, 68, '2', 'Parroquia Altagracia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (245, 68, '3', 'Parroquia Ascensión Farreras', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (246, 68, '4', 'Parroquia Guaniamo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (247, 68, '5', 'Parroquia La Urbana', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (248, 68, '6', 'Parroquia Pijiguaos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (249, 70, '1', 'Sección Capital Gran Sabana', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (250, 70, '2', 'Parroquia Ikabarú', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (251, 71, '1', 'Parroquia Agua Salada', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (252, 71, '2', 'Parroquia Catedral', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (253, 71, '3', 'Parroquia José Antonio Páez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (254, 71, '4', 'Parroquia La Sabanita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (255, 71, '5', 'Parroquia Marhuanta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (256, 71, '6', 'Parroquia Vista Hermosa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (257, 71, '7', 'Parroquia Orinoco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (258, 71, '8', 'Parroquia Panapana', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (259, 71, '9', 'Parroquia Zea', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (260, 72, '1', 'Sección Capital Piar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (261, 72, '2', 'Parroquia Andrés Eloy Blanco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (262, 72, '3', 'Parroquia Pedro Cova', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (263, 73, '1', 'Sección Capital Raúl Leoni', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (264, 73, '2', 'Parroquia Barceloneta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (265, 73, '3', 'Parroquia San Francisco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (266, 73, '4', 'Parroquia Santa Bárbara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (267, 74, '1', 'Sección Capital Roscio', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (268, 74, '2', 'Parroquia Salom', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (269, 75, '1', 'Sección Capital Sifontes', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (270, 75, '2', 'Parroquia Dalla Costa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (271, 75, '3', 'Parroquia San Isidro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (272, 76, '1', 'Sección Capital Sucre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (273, 76, '2', 'Parroquia Aripao', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (274, 76, '3', 'Parroquia Guarataro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (275, 76, '4', 'Parroquia Las Majadas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (276, 76, '5', 'Parroquia Moitaco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (277, 78, '1', 'Parroquia Urbana Bejuma', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (278, 78, '2', 'Parroquia No Urbana Canoabo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (279, 78, '3', 'Parroquia No Urbana Simón Bolívar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (280, 79, '1', 'Parroquia Urbana Guigue', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (281, 79, '2', 'Parroquia No Urbana Belén', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (282, 79, '3', 'Parroquia No Urbana Tacarigua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (283, 80, '1', 'Parroquia Urbana Aguas Calientes', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (284, 80, '2', 'Parroquia Urbana Mariara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (285, 81, '1', 'Parroquia Urbana Ciudad Alianza', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (286, 81, '2', 'Parroquia Urbana Guacara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (287, 81, '3', 'Parroquia No Urbana Yagua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (288, 82, '1', 'Parroquia Urbana Morón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (289, 82, '2', 'Parroquia No Urbana Urama', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (290, 83, '1', 'Parroquia Urbana Tocuyito', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (291, 83, '2', 'Parroquia Urbana Independencia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (292, 84, '1', 'Parroquia Urbana Los Guayos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (293, 85, '1', 'Parroquia Urbana Miranda', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (294, 86, '1', 'Parroquia Urbana Montalbán', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (295, 87, '1', 'Parroquia Urbana Naguanagua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (296, 88, '1', 'Parroquia Urbana Bartolomé Salom', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (297, 88, '2', 'Parroquia Urbana Democracia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (298, 88, '3', 'Parroquia Urbana Fraternidad', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (299, 88, '4', 'Parroquia Urbana Goaigoaza', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (300, 88, '5', 'Parroquia Urbana Juan José Flores', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (301, 88, '6', 'Parroquia Urbana Unión', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (302, 88, '7', 'Parroquia No Urbana Borburata', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (303, 88, '8', 'Parroquia No Urbana Patanemo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (304, 89, '1', 'Parroquia Urbana San Diego', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (305, 90, '1', 'Parroquia Urbana San Joaquín', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (306, 91, '1', 'Parroquia Urbana Candelaria', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (307, 91, '2', 'Parroquia Urbana Catedral', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (308, 91, '3', 'Parroquia Urbana El Socorro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (309, 91, '4', 'Parroquia Urbana Miguel Peña', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (310, 91, '5', 'Parroquia Urbana Rafael Urdaneta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (311, 91, '6', 'Parroquia Urbana San Blas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (312, 91, '7', 'Parroquia Urbana San José', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (313, 91, '8', 'Parroquia Urbana Santa Rosa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (314, 91, '9', 'Parroquia No Urbana Negro Primero', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (315, 92, '1', 'Parroquia Cojedes', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (316, 92, '2', 'Parroquia Juan de Mata Suárez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (317, 93, '1', 'Parroquia Tinaquillo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (318, 94, '1', 'Parroquia El Baúl', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (319, 94, '2', 'Parroquia Sucre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (320, 95, '1', 'Parroquia Macapo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (321, 95, '2', 'Parroquia La Aguadita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (322, 96, '1', 'Parroquia El Pao', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (323, 97, '1', 'Parroquia Libertad de Cojedes', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (324, 97, '2', 'Parroquia El Amparo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (325, 98, '1', 'Parroquia Rómulo Gallegos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (326, 99, '1', 'Parroquia San Carlos de Austria', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (327, 99, '2', 'Parroquia Juan Ángel Bravo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (328, 99, '3', 'Parroquia Manuel Manrique', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (329, 100, '1', 'Parroquia General en Jefe José Laurencio Silva', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (330, 101, '1', 'Parroquia Curiapo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (331, 101, '2', 'Parroquia Almirante Luis Brión', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (332, 101, '3', 'Parroquia Francisco Aniceto Lugo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (333, 101, '4', 'Parroquia Manuel Renaud', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (334, 101, '5', 'Parroquia Padre Barral', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (335, 101, '6', 'Parroquia Santos de Abelgas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (336, 102, '1', 'Parroquia Imataca', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (337, 102, '2', 'Parroquia Cinco de Julio', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (338, 102, '3', 'Parroquia Juan Bautista Arismendi', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (339, 102, '4', 'Parroquia Manuel Piar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (340, 102, '5', 'Parroquia Rómulo Gallegos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (341, 103, '1', 'Parroquia Pedernales', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (342, 103, '2', 'Parroquia Luis Beltrán Prieto Figueroa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (343, 104, '1', 'Parroquia San José', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (344, 104, '2', 'Parroquia José Vidal Marcano', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (345, 104, '3', 'Parroquia Juan Millán', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (346, 104, '4', 'Parroquia Leonardo Ruíz Pineda', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (347, 104, '5', 'Parroquia Mariscal Antonio José de Sucre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (348, 104, '6', 'Parroquia Monseñor Argimiro García', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (349, 104, '7', 'Parroquia San Rafael', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (350, 104, '8', 'Parroquia Virgen del Valle', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (351, 105, '1', 'Parroquia San Juan de los Cayos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (352, 105, '2', 'Parroquia Capadare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (353, 105, '3', 'Parroquia La Pastora', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (354, 105, '4', 'Parroquia Libertador', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (355, 106, '1', 'Parroquia San Luis', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (356, 106, '2', 'Parroquia Aracua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (357, 106, '3', 'Parroquia La Peña', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (358, 107, '1', 'Parroquia Capatárida', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (359, 107, '2', 'Parroquia Bariro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (360, 107, '3', 'Parroquia Borojó', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (361, 107, '4', 'Parroquia Guajiro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (362, 107, '5', 'Parroquia Seque', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (363, 107, '6', 'Parroquia Zazárida', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (364, 108, '1', 'Parroquia CM Yaracal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (365, 109, '1', 'Parroquia Carirubana', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (366, 109, '2', 'Parroquia Norte', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (367, 109, '3', 'Parroquia Punta Cardón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (368, 109, '4', 'Parroquia Santa Ana', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (369, 110, '1', 'Parroquia La Vela de Coro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (370, 110, '2', 'Parroquia Acurigua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (371, 110, '3', 'Parroquia Guaibacoa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (372, 110, '4', 'Parroquia Las Calderas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (373, 110, '5', 'Parroquia Macoruca', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (374, 111, '1', 'Parroquia CM Dabajuro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (375, 112, '1', 'Parroquia Pedregal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (376, 112, '2', 'Parroquia Agua Clara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (377, 112, '3', 'Parroquia Avaria', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (378, 112, '4', 'Parroquia Piedra Grande', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (379, 112, '5', 'Parroquia Purureche', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (380, 113, '1', 'Parroquia Pueblo Nuevo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (381, 113, '2', 'Parroquia Adícora', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (382, 113, '3', 'Parroquia Baraived', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (383, 113, '4', 'Parroquia Buena Vista', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (384, 113, '5', 'Parroquia Jadacaquiva', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (385, 113, '6', 'Parroquia Moruy', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (386, 113, '7', 'Parroquia Adaure', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (387, 113, '8', 'Parroquia El Hato', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (388, 113, '9', 'Parroquia El Vínculo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (389, 114, '1', 'Parroquia Churuguara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (390, 114, '2', 'Parroquia Agua Larga', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (391, 114, '3', 'Parroquia El Paují', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (392, 114, '4', 'Parroquia Independencia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (393, 114, '5', 'Parroquia Maparará', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (394, 115, '1', 'Parroquia Jacura', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (395, 115, '2', 'Parroquia Agua Linda', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (396, 115, '3', 'Parroquia Araurima', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (397, 115, '1', 'Parroquia Agua Linda', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (398, 115, '2', 'Parroquia Araurima', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (399, 115, '3', 'Parroquia Jacura', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (400, 116, '1', 'Parroquia Los Taques', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (401, 116, '2', 'Parroquia Judibana', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (402, 117, '1', 'Parroquia Mene de Mauroa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (403, 117, '2', 'Parroquia Casigua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (404, 117, '3', 'Parroquia San Félix', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (405, 118, '1', 'Parroquia San Antonio', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (406, 118, '2', 'Parroquia San Gabriel', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (407, 118, '3', 'Parroquia Santa Ana', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (408, 118, '4', 'Parroquia Guzmán Guillermo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (409, 118, '5', 'Parroquia Mitare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (410, 118, '6', 'Parroquia Río Seco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (411, 118, '7', 'Parroquia Sabaneta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (412, 119, '1', 'Parroquia Chichiriviche', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (413, 119, '2', 'Parroquia Boca de Tocuyo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (414, 119, '3', 'Parroquia Tocuyo de la Costa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (415, 121, '1', 'Parroquia Caburé', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (416, 121, '2', 'Parroquia Colina', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (417, 121, '3', 'Parroquia Curimagua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (418, 122, '1', 'Parroquia Píritu', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (419, 122, '2', 'Parroquia San José de la Costa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (420, 124, '1', 'Parroquia Tucacas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (421, 124, '2', 'Parroquia Boca de Aroa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (422, 125, '1', 'Parroquia Sucre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (423, 125, '2', 'Parroquia Pecaya', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (424, 127, '1', 'Parroquia Santa Cruz de Bucaral', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (425, 127, '2', 'Parroquia El Charal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (426, 127, '3', 'Parroquia Las Vegas del Tuy', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (427, 128, '1', 'Parroquia Urumaco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (428, 128, '2', 'Parroquia Bruzual', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (429, 129, '1', 'Parroquia Puerto Cumarebo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (430, 129, '2', 'Parroquia La Ciánaga', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (431, 129, '3', 'Parroquia La Soledad', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (432, 129, '4', 'Parroquia Pueblo Cumarebo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (433, 129, '5', 'Parroquia Zazárida', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (434, 130, '1', 'Parroquia Capital Camaguán', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (435, 130, '2', 'Parroquia Puerto Miranda', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (436, 130, '3', 'Parroquia Uverito', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (437, 131, '1', 'Parroquia Chaguaramas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (438, 132, '1', 'Parroquia El Socorro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (439, 133, '1', 'Parroquia Capital San Gerónimo de Guayabal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (440, 133, '2', 'Parroquia Cazorla', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (441, 134, '1', 'Parroquia Capital Valle de La Pascua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (442, 134, '2', 'Parroquia Espino', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (443, 135, '1', 'Parroquia Capital Las Mercedes', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (444, 135, '2', 'Parroquia Cabruta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (445, 135, '3', 'Parroquia Santa Rita de Manapire', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (446, 136, '1', 'Parroquia Capital El Sombrero', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (447, 136, '2', 'Parroquia Sosa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (448, 137, '1', 'Parroquia Capital Calabozo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (449, 137, '2', 'Parroquia El Calvario', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (450, 137, '3', 'Parroquia El Rastro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (451, 137, '4', 'Parroquia Guardatinajas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (452, 138, '1', 'Parroquia Capital Altagracia de Orituco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (453, 138, '2', 'Parroquia Lezama', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (454, 138, '3', 'Parroquia Libertad de Orituco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (455, 138, '4', 'Parroquia Paso Real de Macaira', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (456, 138, '5', 'Parroquia San Francisco de Macaira', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (457, 138, '6', 'Parroquia San Rafael de Orituco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (458, 138, '7', 'Parroquia Soublette', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (459, 139, '1', 'Parroquia Capital Ortiz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (460, 139, '2', 'Parroquia San Francisco de Tiznado', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (461, 139, '3', 'Parroquia San José de Tiznado', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (462, 139, '4', 'Parroquia San Lorenzo de Tiznado', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (463, 140, '1', 'Parroquia Capital Tucupido', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (464, 140, '2', 'Parroquia San Rafael de Laya', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (465, 141, '1', 'Parroquia Capital San Juan de Los Morros', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (466, 141, '2', 'Parroquia Cantagallo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (467, 141, '3', 'Parroquia Parapara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (468, 142, '1', 'Parroquia San José de Guaribe', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (469, 143, '1', 'Parroquia Capital Santa María de Ipire', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (470, 143, '2', 'Parroquia Altamira', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (471, 144, '1', 'Parroquia Capital Zaraza', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (472, 144, '2', 'Parroquia San José de Unare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (473, 145, '1', 'Parroquia Pao Tamayo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (474, 145, '2', 'Parroquia Quebrada Honda de Guache', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (475, 145, '3', 'Parroquia Yacambú', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (476, 146, '1', 'Parroquia Fréitez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (477, 146, '2', 'Parroquia José María Blanco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (478, 147, '1', 'Parroquia Catedral', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (479, 147, '2', 'Parroquia Concepción', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (480, 147, '3', 'Parroquia El Cují', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (481, 147, '4', 'Parroquia Juan de Villegas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (482, 147, '5', 'Parroquia Santa Rosa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (483, 147, '6', 'Parroquia Tamaca', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (484, 147, '7', 'Parroquia Unión', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (485, 147, '8', 'Parroquia Aguedo Felipe Alvarado', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (486, 147, '9', 'Parroquia Buena Vista', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (487, 147, '10', 'Parroquia Juárez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (488, 148, '1', 'Parroquia Juan Bautista Rodríguez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (489, 148, '2', 'Parroquia Cuara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (490, 148, '3', 'Parroquia Diego de Lozada', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (491, 148, '4', 'Parroquia Paraíso de San José', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (492, 148, '5', 'Parroquia San Miguel', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (493, 148, '6', 'Parroquia Tintorero', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (494, 148, '7', 'Parroquia José Bernardo Dorante', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (495, 148, '8', 'Parroquia Coronel Mariano Peraza', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (496, 149, '1', 'Parroquia Bolívar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (497, 149, '2', 'Parroquia Anzoátegui', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (498, 149, '3', 'Parroquia Guárico', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (499, 149, '4', 'Parroquia Hilario Luna y Luna', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (500, 149, '5', 'Parroquia Humocaro Alto', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (501, 149, '6', 'Parroquia Humocaro Bajo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (502, 149, '7', 'Parroquia La Candelaria', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (503, 149, '8', 'Parroquia Morán', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (504, 150, '1', 'Parroquia Cabudare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (505, 150, '2', 'Parroquia José Gregorio Bastidas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (506, 150, '3', 'Parroquia Agua Viva', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (507, 151, '1', 'Parroquia Sarare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (508, 151, '2', 'Parroquia Buría', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (509, 151, '3', 'Parroquia Gustavo Vegas León', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (510, 152, '1', 'Parroquia Trinidad Samuel', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (511, 152, '2', 'Parroquia Antonio Díaz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (512, 152, '3', 'Parroquia Camacaro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (513, 152, '4', 'Parroquia Castañeda', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (514, 152, '5', 'Parroquia Cecilio Zubillaga', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (515, 152, '6', 'Parroquia Chiquinquirá', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (516, 152, '7', 'Parroquia El Blanco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (517, 152, '8', 'Parroquia Espinoza de los Monteros', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (518, 152, '9', 'Parroquia Lara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (519, 152, '10', 'Parroquia Las Mercedes', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (520, 152, '11', 'Parroquia Manuel Morillo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (521, 152, '12', 'Parroquia Montaña Verde', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (522, 152, '13', 'Parroquia Montes de Oca', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (523, 152, '14', 'Parroquia Torres', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (524, 152, '15', 'Parroquia Heriberto Arroyo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (525, 152, '16', 'Parroquia Reyes Vargas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (526, 152, '17', 'Parroquia Altagracia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (527, 153, '1', 'Parroquia Siquisique', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (528, 153, '2', 'Parroquia Moroturo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (529, 153, '3', 'Parroquia San Miguel', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (530, 153, '4', 'Parroquia Xaguas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (531, 154, '1', 'Parroquia Presidente Betancourt', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (532, 154, '2', 'Parroquia Presidente Páez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (533, 154, '3', 'Parroquia Presidente Rómulo Gallegos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (534, 154, '4', 'Parroquia Gabriel Picón González', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (535, 154, '5', 'Parroquia Héctor Amable Mora', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (536, 154, '6', 'Parroquia José Nucete Sardi', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (537, 154, '7', 'Parroquia Pulido Méndez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (538, 156, '1', 'Parroquia Capital Antonio Pinto Salinas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (539, 156, '2', 'Parroquia Mesa Bolívar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (540, 156, '3', 'Parroquia Mesa de Las Palmas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (541, 157, '1', 'Parroquia Capital Aricagua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (542, 157, '2', 'Parroquia San Antonio', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (543, 158, '1', 'Parroquia Capital Arzobispo Chacón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (544, 158, '2', 'Parroquia Capurí', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (545, 158, '3', 'Parroquia Chacantá', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (546, 158, '4', 'Parroquia El Molino', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (547, 158, '5', 'Parroquia Guaimaral', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (548, 158, '6', 'Parroquia Mucutuy', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (549, 158, '7', 'Parroquia Mucuchachí', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (550, 159, '1', 'Parroquia Fernández Peña', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (551, 159, '2', 'Parroquia Matriz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (552, 159, '3', 'Parroquia Montalbán', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (553, 159, '4', 'Parroquia Acequias', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (554, 159, '5', 'Parroquia Jají', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (555, 159, '6', 'Parroquia La Mesa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (556, 159, '7', 'Parroquia San José del Sur', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (557, 160, '1', 'Parroquia Capital Caracciolo Parra Olmedo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (558, 160, '2', 'Parroquia Florencio Ramírez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (559, 161, '1', 'Parroquia Capital Cardenal Quintero', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (560, 161, '2', 'Parroquia Las Piedras', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (561, 162, '1', 'Parroquia Capital Guaraque', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (562, 162, '2', 'Parroquia Mesa de Quintero', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (563, 162, '3', 'Parroquia Río Negro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (564, 163, '1', 'Parroquia Capital Julio César Salas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (565, 163, '2', 'Parroquia Palmira', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (566, 164, '1', 'Parroquia Capital Justo Briceño', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (567, 164, '2', 'Parroquia San Cristóbal de Torondoy', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (568, 165, '1', 'Parroquia Antonio Spinetti Dini', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (569, 165, '2', 'Parroquia Arias', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (570, 165, '3', 'Parroquia Caracciolo Parra Pérez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (571, 165, '4', 'Parroquia Domingo Peña', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (572, 165, '5', 'Parroquia El Llano', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (573, 165, '6', 'Parroquia Gonzalo Picón Febres', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (574, 165, '7', 'Parroquia Jacinto Plaza', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (575, 165, '8', 'Parroquia Juan Rodríguez Suárez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (576, 165, '9', 'Parroquia Lasso de la Vega', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (577, 165, '10', 'Parroquia Mariano Picón Salas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (578, 165, '11', 'Parroquia Milla', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (579, 165, '12', 'Parroquia Osuna Rodríguez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (580, 165, '13', 'Parroquia Sagrario', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (581, 165, '14', 'Parroquia El Morro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (582, 165, '15', 'Parroquia Los Nevados', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (583, 166, '1', 'Parroquia Capital Miranda', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (584, 166, '2', 'Parroquia Andrés Eloy Blanco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (585, 166, '3', 'Parroquia La Venta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (586, 166, '4', 'Parroquia Piñango', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (587, 167, '1', 'Parroquia Capital Obispo Ramos de Lora', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (588, 167, '2', 'Parroquia Eloy Paredes', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (589, 167, '3', 'Parroquia San Rafael de Alcázar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (590, 170, '1', 'Parroquia Capital Rangel', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (591, 170, '2', 'Parroquia Cacute', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (592, 170, '3', 'Parroquia La Toma', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (593, 170, '4', 'Parroquia Mucurubí', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (594, 170, '5', 'Parroquia San Rafael', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (595, 171, '1', 'Parroquia Capital Rivas Dávila', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (596, 171, '2', 'Parroquia Gerónimo Maldonado', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (597, 173, '1', 'Parroquia Capital Sucre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (598, 173, '2', 'Parroquia Chiguarí', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (599, 173, '3', 'Parroquia Estánquez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (600, 173, '4', 'Parroquia La Trampa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (601, 173, '5', 'Parroquia Pueblo Nuevo del Sur', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (602, 173, '6', 'Parroquia San Juan', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (603, 174, '1', 'Parroquia El Amparo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (604, 174, '2', 'Parroquia El Llano', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (605, 174, '3', 'Parroquia San Francisco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (606, 174, '4', 'Parroquia Tovar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (607, 175, '1', 'Parroquia Capital Tulio Febres Cordero', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (608, 175, '2', 'Parroquia Independencia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (609, 175, '3', 'Parroquia María de la Concepción Palacios Blanco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (610, 175, '4', 'Parroquia Santa Apolonia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (611, 176, '1', 'Parroquia Capital Zea', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (612, 176, '2', 'Parroquia Caño El Tigre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (613, 177, '1', 'Parroquia Caucagua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (614, 177, '2', 'Parroquia Araguita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (615, 177, '3', 'Parroquia Arévalo González', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (616, 177, '4', 'Parroquia Capaya', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (617, 177, '5', 'Parroquia El Café', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (618, 177, '6', 'Parroquia Marizapa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (619, 177, '7', 'Parroquia Panaquire', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (620, 177, '8', 'Parroquia Ribas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (621, 178, '1', 'Parroquia San José de Barlovento', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (622, 178, '2', 'Parroquia Cumbo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (623, 179, '1', 'Parroquia Baruta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (624, 179, '2', 'Parroquia El Cafetal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (625, 179, '3', 'Parroquia Las Minas de Baruta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (626, 180, '1', 'Parroquia Higuerote', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (627, 180, '2', 'Parroquia Curiepe', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (628, 180, '3', 'Parroquia Tacarigua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (629, 181, '1', 'Parroquia Mamporal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (630, 182, '1', 'Parroquia Carrizal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (631, 183, '1', 'Parroquia Chacao', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (632, 184, '1', 'Parroquia Charallave', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (633, 184, '2', 'Parroquia Las Brisas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (634, 185, '1', 'Parroquia El Hatillo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (635, 186, '1', 'Parroquia Los Teques', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (636, 186, '2', 'Parroquia Altagracia de La Montaña', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (637, 186, '3', 'Parroquia Cecilio Acosta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (638, 186, '4', 'Parroquia El Jarillo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (639, 186, '5', 'Parroquia Paracotos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (640, 186, '6', 'Parroquia San Pedro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (641, 186, '7', 'Parroquia Tácata', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (642, 187, '1', 'Parroquia Santa Teresa del Tuy', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (643, 187, '2', 'Parroquia El Cartanal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (644, 188, '1', 'Parroquia Ocumare del Tuy', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (645, 188, '2', 'Parroquia La Democracia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (646, 188, '3', 'Parroquia Santa Bárbara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (647, 189, '1', 'Parroquia San Antonio de Los Altos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (648, 190, '1', 'Parroquia Río Chico', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (649, 190, '2', 'Parroquia El Guapo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (650, 190, '3', 'Parroquia Tacarigua de La Laguna', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (651, 190, '4', 'Parroquia Páparo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (652, 190, '5', 'Parroquia San Fernando del Guapo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (653, 191, '1', 'Parroquia Santa Lucía', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (654, 192, '1', 'Parroquia Cúpira', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (655, 192, '2', 'Parroquia Machurucuto', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (656, 193, '1', 'Parroquia Guarenas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (657, 194, '1', 'Parroquia San Francisco de Yare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (658, 194, '2', 'Parroquia San Antonio de Yare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (659, 195, '1', 'Parroquia Petare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (660, 195, '2', 'Parroquia Caucaguita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (661, 195, '3', 'Parroquia Fila de Mariches', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (662, 195, '4', 'Parroquia La Dolorita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (663, 195, '5', 'Parroquia Leoncio Martínez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (664, 196, '1', 'Parroquia Cúa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (665, 196, '2', 'Parroquia Nueva Cúa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (666, 197, '1', 'Parroquia Guatire', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (667, 197, '2', 'Parroquia Bolívar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (668, 198, '1', 'Parroquia Capital Acosta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (669, 198, '2', 'Parroquia San Francisco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (670, 201, '1', 'Parroquia Capital Caripe', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (671, 201, '2', 'Parroquia El Guácharo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (672, 201, '3', 'Parroquia La Guanota', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (673, 201, '4', 'Parroquia Sabana de Piedra', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (674, 201, '5', 'Parroquia San Agustín', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (675, 201, '6', 'Parroquia Teresón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (676, 202, '1', 'Parroquia Capital Cedeño', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (677, 202, '2', 'Parroquia Areo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (678, 202, '3', 'Parroquia San Félix', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (679, 202, '4', 'Parroquia Viento Fresco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (680, 203, '1', 'Parroquia Capital Ezequiel Zamora', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (681, 203, '2', 'Parroquia El Tejero', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (682, 204, '1', 'Parroquia Capital Libertador', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (683, 204, '2', 'Parroquia Chaguaramas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (684, 204, '3', 'Parroquia Las Alhuacas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (685, 204, '4', 'Parroquia Tabasca', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (686, 205, '1', 'Parroquia Capital Maturín', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (687, 205, '2', 'Parroquia Alto de los Godos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (688, 205, '3', 'Parroquia Boquerón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (689, 205, '4', 'Parroquia Las Cocuizas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (690, 205, '5', 'Parroquia San Simón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (691, 205, '6', 'Parroquia Santa Cruz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (692, 205, '7', 'Parroquia El Corozo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (693, 205, '8', 'Parroquia El Furrial', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (694, 205, '9', 'Parroquia Jusepín', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (695, 205, '10', 'Parroquia La Pica', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (696, 205, '11', 'Parroquia San Vicente', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (697, 206, '1', 'Parroquia Capital Piar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (698, 206, '2', 'Parroquia Aparicio', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (699, 206, '3', 'Parroquia Chaguaramal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (700, 206, '4', 'Parroquia El Pinto', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (701, 206, '5', 'Parroquia Guanaguana', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (702, 206, '6', 'Parroquia La Toscana', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (703, 206, '7', 'Parroquia Taguaya', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (704, 207, '1', 'Parroquia Capital Punceres', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (705, 207, '2', 'Parroquia Cachipo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (706, 208, '1', 'Parroquia CM Santa Bárbara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (707, 209, '1', 'Parroquia Capital Sotillo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (708, 209, '2', 'Parroquia Los Barrancos de Fajardo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (709, 210, '1', 'Parroquia CM Uracoa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (710, 211, '1', 'Parroquia CM La Plaza de Paraguachi', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (711, 212, '1', 'Parroquia CM La Asunción', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (712, 213, '1', 'Parroquia Capital Díaz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (713, 213, '2', 'Parroquia Zabala', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (714, 214, '1', 'Parroquia Capital García', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (715, 214, '2', 'Parroquia Francisco Fajardo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (716, 215, '1', 'Parroquia Capital Gómez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (717, 215, '2', 'Parroquia Bolívar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (718, 215, '3', 'Parroquia Guevara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (719, 215, '4', 'Parroquia Matasiete', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (720, 215, '5', 'Parroquia Sucre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (721, 216, '1', 'Parroquia Capital Maneiro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (722, 216, '2', 'Parroquia Aguirre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (723, 217, '1', 'Parroquia Capital Marcano', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (724, 217, '2', 'Parroquia Adrián', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (725, 218, '1', 'Parroquia CM Porlamar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (726, 219, '1', 'Parroquia Capital Península de Macanao', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (727, 219, '2', 'Parroquia San Francisco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (728, 220, '1', 'Parroquia Capital Tubores', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (729, 220, '2', 'Parroquia Los Barales', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (730, 221, '1', 'Parroquia Capital Villalba', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (731, 221, '2', 'Parroquia Vicente Fuentes', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (732, 222, '1', 'Parroquia CM Agua Blanca', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (733, 223, '1', 'Parroquia Capital Araure', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (734, 223, '2', 'Parroquia Río Acarigua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (735, 224, '1', 'Parroquia Capital Esteller', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (736, 224, '2', 'Parroquia Uveral', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (737, 225, '1', 'Parroquia Capital Guanare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (738, 225, '2', 'Parroquia Córdoba', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (739, 225, '3', 'Parroquia San José de la Montaña', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (740, 225, '4', 'Parroquia San Juan de Guanaguanare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (741, 225, '5', 'Parroquia Virgen de la Coromoto', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (742, 226, '1', 'Parroquia Capital Guanarito', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (743, 226, '2', 'Parroquia Trinidad de la Capilla', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (744, 226, '3', 'Parroquia Divina Pastora', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (745, 227, '1', 'Parroquia Capital Mons. José Vicente de Unda', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (746, 227, '2', 'Parroquia Peña Blanca', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (747, 228, '1', 'Parroquia Capital Ospino', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (748, 228, '2', 'Parroquia Aparición', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (749, 228, '3', 'Parroquia La Estación', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (750, 229, '1', 'Parroquia Capital Páez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (751, 229, '2', 'Parroquia Payara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (752, 229, '3', 'Parroquia Pimpinela', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (753, 229, '4', 'Parroquia Ramón Peraza', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (754, 230, '1', 'Parroquia Capital Papelón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (755, 230, '2', 'Parroquia Caño Delgadito', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (756, 231, '1', 'Parroquia Capital San Genaro de Boconoito', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (757, 231, '2', 'Parroquia Antolín Tovar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (758, 232, '1', 'Parroquia Capital San Rafael de Onoto', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (759, 232, '2', 'Parroquia Santa Fe', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (760, 232, '3', 'Parroquia Thermo Morlés', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (761, 233, '1', 'Parroquia Capital Santa Rosalía', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (762, 233, '2', 'Parroquia Florida', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (763, 234, '1', 'Parroquia Capital Sucre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (764, 234, '2', 'Parroquia Concepción', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (765, 234, '3', 'Parroquia San Rafael de Palo Alzado', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (766, 234, '4', 'Parroquia Uvencio Antonio Velásquez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (767, 234, '5', 'Parroquia San José de Saguaz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (768, 234, '6', 'Parroquia Villa Rosa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (769, 235, '1', 'Parroquia Capital Turín', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (770, 235, '2', 'Parroquia Canelones', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (771, 235, '3', 'Parroquia Santa Cruz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (772, 235, '4', 'Parroquia San Isidro Labrador', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (773, 236, '1', 'Parroquia Mariño', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (774, 236, '2', 'Parroquia Rómulo Gallegos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (775, 237, '1', 'Parroquia San José de Aerocuar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (776, 237, '2', 'Parroquia Tavera Acosta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (777, 238, '1', 'Parroquia Río Caribe', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (778, 238, '2', 'Parroquia Antonio José de Sucre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (779, 238, '3', 'Parroquia El Morro de Puerto Santo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (780, 238, '4', 'Parroquia Puerto Santo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (781, 238, '5', 'Parroquia San Juan de Las Galdonas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (782, 239, '1', 'Parroquia El Pilar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (783, 239, '2', 'Parroquia El Rincón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (784, 239, '3', 'Parroquia General Francisco Antonio Vásquez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (785, 239, '4', 'Parroquia Guarainos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (786, 239, '5', 'Parroquia Tunapuicito', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (787, 239, '6', 'Parroquia Unión', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (788, 240, '1', 'Parroquia Bolívar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (789, 240, '2', 'Parroquia Macarapana', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (790, 240, '3', 'Parroquia Santa Catalina', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (791, 240, '4', 'Parroquia Santa Rosa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (792, 240, '5', 'Parroquia Santa Teresa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (793, 241, '1', 'Municipio CM Mariguitar                   ', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (794, 242, '1', 'Parroquia Yaguaraparo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (795, 242, '2', 'Parroquia El Paujil', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (796, 242, '3', 'Parroquia Libertad', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (797, 243, '1', 'Parroquia Araya', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (798, 243, '2', 'Parroquia Chacopata', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (799, 243, '3', 'Parroquia Manicuare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (800, 244, '1', 'Parroquia Tunapuy', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (801, 244, '2', 'Parroquia Campo Elías', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (802, 245, '1', 'Parroquia Irapa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (803, 245, '2', 'Parroquia Campo Claro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (804, 245, '3', 'Parroquia Marabal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (805, 245, '4', 'Parroquia San Antonio de Irapa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (806, 245, '5', 'Parroquia Soro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (807, 246, '1', 'Parroquia CM San Antonio del Golfo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (808, 247, '1', 'Parroquia Cumanacoa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (809, 247, '2', 'Parroquia Arenas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (810, 247, '3', 'Parroquia Aricagua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (811, 247, '4', 'Parroquia Cocollar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (812, 247, '5', 'Parroquia San Fernando', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (813, 247, '6', 'Parroquia San Lorenzo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (814, 248, '1', 'Parroquia Villa Frontado (Muelle de Cariaco)', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (815, 248, '2', 'Parroquia Catuaro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (816, 248, '3', 'Parroquia Rendón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (817, 248, '4', 'Parroquia Santa Cruz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (818, 248, '5', 'Parroquia Santa María', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (819, 249, '1', 'Parroquia Altagracia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (820, 249, '2', 'Parroquia Ayacucho', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (821, 249, '3', 'Parroquia Santa Inés', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (822, 249, '4', 'Parroquia Valentín Valiente', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (823, 249, '5', 'Parroquia San Juan', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (824, 249, '6', 'Parroquia Raúl Leoni', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (825, 249, '7', 'Parroquia Gran Mariscal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (826, 250, '1', 'Parroquia Guiria', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (827, 250, '2', 'Parroquia Bideau', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (828, 250, '3', 'Parroquia Cristóbal Colón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (829, 250, '4', 'Parroquia Punta de Piedras', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (830, 251, '1', 'Parroquia CM Cordero', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (831, 252, '1', 'Parroquia CM Las Mesas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (832, 253, '1', 'Parroquia Ayacucho', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (833, 253, '2', 'Parroquia Rivas Berti', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (834, 253, '3', 'Parroquia San Pedro del Río', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (835, 254, '1', 'Parroquia Bolívar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (836, 254, '2', 'Parroquia Palotal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (837, 254, '3', 'Parroquia Juan Vicente Gómez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (838, 254, '4', 'Parroquia Isaías Medina Angarita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (839, 255, '1', 'Parroquia Cárdenas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (840, 255, '2', 'Parroquia Amenodoro Rangel Lamús', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (841, 255, '3', 'Parroquia La Florida', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (842, 256, '1', 'Parroquia CM Santa Ana del Táchira', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (843, 257, '1', 'Parroquia Fernández Feo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (844, 257, '2', 'Parroquia Alberto Adriani', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (845, 257, '3', 'Parroquia Santo Domingo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (846, 258, '1', 'Parroquia CM San José de Bolívar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (847, 259, '1', 'Parroquia García de Hevia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (848, 259, '2', 'Parroquia Boca de Grita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (849, 259, '3', 'Parroquia José Antonio Páez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (850, 260, '1', 'Parroquia CM Palmira', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (851, 261, '1', 'Parroquia Independencia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (852, 261, '2', 'Parroquia Juan Germán Roscio', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (853, 261, '3', 'Parroquia Román Cárdenas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (854, 262, '1', 'Parroquia Jáuregui', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (855, 262, '2', 'Parroquia Emilio Constantino Guerrero', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (856, 262, '3', 'Parroquia Monseñor Miguel Antonio Salas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (857, 263, '1', 'Parroquia CM El Cobre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (858, 264, '1', 'Parroquia Junín', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (859, 264, '2', 'Parroquia La Petrólea', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (860, 264, '3', 'Parroquia Quinimarí', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (861, 264, '4', 'Parroquia Bramón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (862, 265, '1', 'Parroquia Libertad', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (863, 265, '2', 'Parroquia Cipriano Castro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (864, 265, '3', 'Parroquia Manuel Felipe Rugeles', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (865, 266, '1', 'Parroquia Libertador', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (866, 266, '2', 'Parroquia Don Emeterio Ochoa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (867, 266, '3', 'Parroquia Doradas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (868, 266, '4', 'Parroquia San Joaquín de Navay', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (869, 267, '1', 'Parroquia Lobatera', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (870, 267, '2', 'Parroquia Constitución', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (871, 268, '1', 'Parroquia CM Michelena', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (872, 269, '1', 'Parroquia Panamericano', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (873, 269, '2', 'Parroquia La Palmita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (874, 270, '1', 'Parroquia Pedro María Ureña', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (875, 270, '2', 'Parroquia Nueva Arcadia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (876, 271, '1', 'Parroquia CM Delicias', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (877, 272, '1', 'Parroquia Samuel Darío Maldonado', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (878, 272, '2', 'Parroquia CM La Tendida', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (879, 272, '3', 'Parroquia Boconó', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (880, 272, '4', 'Parroquia Hernández', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (881, 273, '1', 'Parroquia La Concordia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (882, 273, '2', 'Parroquia Pedro María Morantes', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (883, 273, '3', 'Parroquia San Juan Bautista', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (884, 273, '4', 'Parroquia San Sebastián', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (885, 273, '5', 'Parroquia Dr. Francisco Romero Lobo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (886, 274, '1', 'Parroquia CM Seboruco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (887, 276, '1', 'Parroquia Sucre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (888, 276, '2', 'Parroquia Eleazar López Contreras', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (889, 276, '3', 'Parroquia San Pablo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (890, 277, '1', 'Parroquia CM San Josecito', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (891, 278, '1', 'Parroquia Uribante', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (892, 278, '2', 'Parroquia Cárdenas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (893, 278, '3', 'Parroquia Juan Pablo Peñaloza', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (894, 278, '4', 'Parroquia Potosí', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (895, 279, '1', 'Parroquia CM Umuquena', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (896, 280, '1', 'Parroquia Santa Isabel', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (897, 280, '2', 'Parroquia Araguaney', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (898, 280, '3', 'Parroquia El Jaguito', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (899, 280, '4', 'Parroquia La Esperanza', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (900, 281, '1', 'Parroquia Boconó', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (901, 281, '2', 'Parroquia El Carmen', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (902, 281, '3', 'Parroquia Mosquey', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (903, 281, '4', 'Parroquia Ayacucho', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (904, 281, '5', 'Parroquia Burbusay', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (905, 281, '6', 'Parroquia General Rivas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (906, 281, '7', 'Parroquia Guaramacal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (907, 281, '8', 'Parroquia Vega de Guaramacal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (908, 281, '9', 'Parroquia Monseñor Jáuregui', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (909, 281, '10', 'Parroquia Rafael Rangel', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (910, 281, '11', 'Parroquia San Miguel', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (911, 281, '12', 'Parroquia San José', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (912, 282, '1', 'Parroquia Sabana Grande', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (913, 282, '2', 'Parroquia Cheregue', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (914, 282, '3', 'Parroquia Granados', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (915, 283, '1', 'Parroquia Chejendé', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (916, 283, '2', 'Parroquia Arnoldo Gabaldón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (917, 283, '3', 'Parroquia Bolivia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (918, 283, '4', 'Parroquia Carrillo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (919, 283, '5', 'Parroquia Cegarra', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (920, 283, '6', 'Parroquia Manuel Salvador Ulloa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (921, 283, '7', 'Parroquia San José', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (922, 284, '1', 'Parroquia Carache', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (923, 284, '2', 'Parroquia Cuicas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (924, 284, '3', 'Parroquia La Concepción', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (925, 284, '4', 'Parroquia Panamericana', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (926, 284, '5', 'Parroquia Santa Cruz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (927, 285, '1', 'Parroquia Escuque', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (928, 285, '2', 'Parroquia La Unión', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (929, 285, '3', 'Parroquia Sabana Libre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (930, 285, '4', 'Parroquia Santa Rita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (931, 286, '1', 'Parroquia El Socorro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (932, 286, '2', 'Parroquia Antonio José de Sucre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (933, 286, '3', 'Parroquia Los Caprichos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (934, 287, '1', 'Parroquia Campo Elías', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (935, 287, '2', 'Parroquia Arnoldo Gabaldón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (936, 288, '1', 'Parroquia Santa Apolonia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (937, 288, '2', 'Parroquia El Progreso', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (938, 288, '3', 'Parroquia La Ceiba', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (939, 288, '4', 'Parroquia Tres de Febrero', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (940, 289, '1', 'Parroquia El Dividive', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (941, 289, '2', 'Parroquia Agua Santa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (942, 289, '3', 'Parroquia Agua Caliente', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (943, 289, '4', 'Parroquia El Cenizo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (944, 289, '5', 'Parroquia Valerita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (945, 290, '1', 'Parroquia Monte Carmelo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (946, 290, '2', 'Parroquia Buena Vista', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (947, 290, '3', 'Parroquia Santa María del Horcón', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (948, 291, '1', 'Parroquia Motatán', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (949, 291, '2', 'Parroquia El Baño', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (950, 291, '3', 'Parroquia Jalisco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (951, 292, '1', 'Parroquia Pampán', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (952, 292, '2', 'Parroquia Flor de Patria', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (953, 292, '3', 'Parroquia La Paz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (954, 292, '4', 'Parroquia Santa Ana', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (955, 293, '1', 'Parroquia Pampanito', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (956, 293, '2', 'Parroquia La Concepción', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (957, 293, '3', 'Parroquia Pampanito II', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (958, 294, '1', 'Parroquia Betijoque', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (959, 294, '2', 'Parroquia La Pueblita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (960, 294, '3', 'Parroquia Los Cedros', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (961, 294, '4', 'Parroquia José Gregorio Hernández', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (962, 295, '1', 'Parroquia Carvajal', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (963, 295, '2', 'Parroquia Antonio Nicolás Briceño', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (964, 295, '3', 'Parroquia Campo Alegre', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (965, 295, '4', 'Parroquia José Leonardo Suárez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (966, 296, '1', 'Parroquia Sabana de Mendoza', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (967, 296, '2', 'Parroquia El Paraí-so', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (968, 296, '3', 'Parroquia Junín', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (969, 296, '4', 'Parroquia Valmore Rodríguez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (970, 297, '1', 'Parroquia Andrés Linares', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (971, 297, '2', 'Parroquia Chiquinquirá', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (972, 297, '3', 'Parroquia Cristóbal Mendoza', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (973, 297, '4', 'Parroquia Cruz Carrillo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (974, 297, '5', 'Parroquia Matriz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (975, 297, '6', 'Parroquia Monseñor Carrillo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (976, 297, '7', 'Parroquia Tres Esquinas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (977, 298, '1', 'Parroquia La Quebrada', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (978, 298, '2', 'Parroquia Cabimbú', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (979, 298, '3', 'Parroquia Jají', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (980, 298, '4', 'Parroquia La Mesa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (981, 298, '5', 'Parroquia Santiago', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (982, 298, '6', 'Parroquia Tuñame', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (983, 299, '1', 'Parroquia Juan Ignacio Montilla', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (984, 299, '2', 'Parroquia La Beatriz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (985, 299, '3', 'Parroquia Mercedes Díaz', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (986, 299, '4', 'Parroquia San Luis', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (987, 299, '5', 'Parroquia La Puerta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (988, 299, '6', 'Parroquia Mendoza', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (989, 300, '1', 'Parroquia CM San Pablo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (990, 301, '1', 'Parroquia CM Aroa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (991, 302, '1', 'Parroquia Capital Bruzual', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (992, 302, '2', 'Parroquia Campo Elías', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (993, 303, '1', 'Parroquia CM Cocorote', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (994, 304, '1', 'Parroquia CM Independencia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (995, 305, '1', 'Parroquia CM Sabana de Parra', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (996, 306, '1', 'Parroquia CM Boraure', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (997, 307, '1', 'Parroquia CM Yumare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (998, 308, '1', 'Parroquia Capital Nirgua', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (999, 308, '2', 'Parroquia Salom', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1000, 308, '3', 'Parroquia Temerla', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1001, 309, '1', 'Parroquia Capital Peña', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1002, 309, '2', 'Parroquia San Andrés', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1003, 310, '1', 'Parroquia Capital San Felipe', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1004, 310, '2', 'Parroquia Albarico', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1005, 310, '3', 'Parroquia San Javier', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1006, 311, '1', 'Parroquia CM Guama', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1007, 312, '1', 'Parroquia CM Urachiche', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1008, 313, '1', 'Parroquia Capital Veroes', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1009, 313, '2', 'Parroquia El Guayabo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1010, 314, '1', 'Parroquia Isla de Toas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1011, 314, '2', 'Parroquia Monagas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1012, 315, '1', 'Parroquia General Urdaneta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1013, 315, '2', 'Parroquia Libertador', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1014, 315, '3', 'Parroquia Manuel Guanipa Matos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1015, 315, '4', 'Parroquia Marcelino Briceño', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1016, 315, '5', 'Parroquia Pueblo Nuevo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1017, 315, '6', 'Parroquia San Timoteo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1018, 316, '1', 'Parroquia Ambrosio', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1019, 316, '2', 'Parroquia Arístides Calvani', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1020, 316, '3', 'Parroquia Carmen Herrera', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1021, 316, '4', 'Parroquia German Ríos Linares', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1022, 316, '5', 'Parroquia Jorge Hernández', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1023, 316, '6', 'Parroquia La Rosa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1024, 316, '7', 'Parroquia Punta Gorda', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1025, 316, '8', 'Parroquia Rómulo Betancourt', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1026, 316, '9', 'Parroquia San benito', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1027, 317, '1', 'Parroquia Encontrados', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1028, 317, '2', 'Parroquia Udon Pérez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1029, 318, '1', 'Parroquia Moralito', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1030, 318, '2', 'Parroquia San Carlos de Zulia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1031, 318, '3', 'Parroquia Santa Bárbara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1032, 318, '4', 'Parroquia Santa Cruz del Zulia', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1033, 318, '5', 'Parroquia Uribarri', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1034, 319, '1', 'Parroquia Carlos Quevedo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1035, 319, '2', 'Parroquia Francisco Javier Pulgar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1036, 319, '3', 'Parroquia Simón Rodríguez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1037, 320, '1', 'Parroquia José Ramón Yépez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1038, 320, '2', 'Parroquia La Concepción', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1039, 320, '3', 'Parroquia Mariano Parra León', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1040, 320, '4', 'Parroquia San José', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1041, 321, '1', 'Parroquia Bari', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1042, 321, '2', 'Parroquia Jesús María Semprún', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1043, 322, '1', 'Parroquia Andrés Bello', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1044, 322, '2', 'Parroquia Chiquinquirá', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1045, 322, '3', 'Parroquia Concepción', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1046, 322, '4', 'Parroquia El Carmelo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1047, 322, '5', 'Parroquia Potreritos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1048, 323, '1', 'Parroquia Alonso de Ojeda', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1049, 323, '2', 'Parroquia Campo Lara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1050, 323, '3', 'Parroquia Eleazar López Contreras', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1051, 323, '4', 'Parroquia Libertad', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1052, 323, '5', 'Parroquia Venezuela', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1053, 324, '1', 'Parroquia Libertad', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1054, 324, '2', 'Parroquia Río Negro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1055, 324, '3', 'Parroquia San José De Perijá', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1056, 324, '4', 'Parroquia Bartolomé de las Casas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1057, 325, '1', 'Parroquia La Sierrita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1058, 325, '2', 'Parroquia Las Parcelas', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1059, 325, '3', 'Parroquia Luis de Vicente', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1060, 325, '4', 'Parroquia Monseñor Marcos Sergio G', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1061, 325, '5', 'Parroquia Ricaurte', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1062, 325, '6', 'Parroquia San Rafael', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1063, 325, '7', 'Parroquia Tamare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1064, 326, '1', 'Parroquia Antonio Borjas Romero', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1065, 326, '2', 'Parroquia Bolívar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1066, 326, '3', 'Parroquia Cacique Mara', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1067, 326, '4', 'Parroquia Cecilio Acosta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1068, 326, '5', 'Parroquia Chiquinquirá', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1069, 326, '6', 'Parroquia Coquivacoa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1070, 326, '7', 'Parroquia Cristo de Aranza', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1071, 326, '8', 'Parroquia Francisco Eugenio B', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1072, 326, '9', 'Parroquia Idelfonzo Vásquez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1073, 326, '10', 'Parroquia Juana De Ávila', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1074, 326, '11', 'Parroquia Luis Hurtado Higuera', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1075, 326, '12', 'Parroquia Manuel Danigno', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1076, 326, '13', 'Parroquia Olegario Villalobos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1077, 326, '14', 'Parroquia Raúl Leoni', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1078, 326, '15', 'Parroquia San Isidro', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1079, 326, '16', 'Parroquia Santa Lucía', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1080, 326, '17', 'Parroquia Venancio Pulgar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1081, 326, '18', 'Parroquia Caracciolo Parra Pérez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1082, 327, '5', 'Parroquia San José', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1083, 328, '1', 'Parroquia Sinamaica', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1084, 328, '2', 'Parroquia Alta Guajira', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1085, 328, '3', 'Parroquia Elías Sánchez Rubio', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1086, 328, '4', 'Parroquia Guajira', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1087, 329, '1', 'Parroquia El Rosario', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1088, 329, '2', 'Parroquia Donaldo García', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1089, 329, '3', 'Parroquia Sixto Zambrano', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1090, 330, '1', 'Parroquia San Francisco', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1091, 330, '2', 'Parroquia El Bajo', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1092, 330, '3', 'Parroquia Domitila Flores', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1093, 330, '4', 'Parroquia Francisco Ochoa', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1094, 330, '5', 'Parroquia Los Cortijos', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1095, 330, '6', 'Parroquia Marcial Hernández', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1096, 330, '7', 'Parroquia José Domingo Rus', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1097, 331, '1', 'Parroquia Santa Rita', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1098, 331, '2', 'Parroquia El Mene', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1099, 331, '3', 'Parroquia José Cenovio Urribarri', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1100, 331, '4', 'Parroquia Pedro Lucas Urribarri', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1101, 332, '1', 'Parroquia Manuel Manrique', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1102, 332, '2', 'Parroquia Rafael María Baralt', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1103, 332, '3', 'Parroquia Rafael Urdaneta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1104, 333, '1', 'Parroquia Bobures', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1105, 333, '2', 'Parroquia El Batey', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1106, 333, '3', 'Parroquia Gibraltar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1107, 333, '4', 'Parroquia Heras', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1108, 333, '5', 'Parroquia Monseñor Arturo Celestino Álvarez', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1109, 333, '6', 'Parroquia Rómulo Gallegoss', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1110, 334, '1', 'Parroquia La Victoria', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1111, 334, '2', 'Parroquia Rafael Urdaneta', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1112, 334, '3', 'Parroquia Raúl Cuenca', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1113, 335, '1', 'Parroquia Caraballeda', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1114, 335, '2', 'Parroquia Carayaca', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1115, 335, '3', 'Parroquia Caruao', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1116, 335, '4', 'Parroquia Catia La Mar', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1117, 335, '5', 'Parroquia El Junko', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1118, 335, '6', 'Parroquia La Guaira', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1119, 335, '7', 'Parroquia Macuto', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1120, 335, '8', 'Parroquia Maiquetía', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1121, 335, '9', 'Parroquia Naiguatá', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1122, 335, '10', 'Parroquia Urimare', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1123, 335, '11', 'Parroquia Carlos Soublette', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1124, 336, '1', 'Los Roques', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1125, 337, '1', 'Las Aves', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1126, 338, '1', 'La Orchila', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1127, 339, '1', 'Otras Dependencias Federales (P)', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1128, 340, '1', 'Registro de Normalización (Parroquia)', '2017-03-29', '11:44:36.065076', 1);
INSERT INTO public.parroquia (id_parr, id_mun, cod_parr, desc_parr, fec_crt_parr, hor_crt_parr, status) VALUES (1129, 341, '99', 'NO APLICA', '2017-10-14', '15:58:13.11726', 1);


--
-- TOC entry 2234 (class 0 OID 16410)
-- Dependencies: 182
-- Data for Name: tipo_trb; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipo_trb (id_tp_trb, tp_trb, fec_crt_tp, hor_crt_tp, status) VALUES (1, 'Admin', '2022-04-21', '09:28:33.883516', 0);
INSERT INTO public.tipo_trb (id_tp_trb, tp_trb, fec_crt_tp, hor_crt_tp, status) VALUES (2, 'User', '2022-04-21', '09:28:33.883516', 0);


--
-- TOC entry 2238 (class 0 OID 16510)
-- Dependencies: 186
-- Data for Name: tp_comp; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2280 (class 0 OID 0)
-- Dependencies: 185
-- Name: tp_comp_id_tp_comp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tp_comp_id_tp_comp_seq', 1, false);


--
-- TOC entry 2236 (class 0 OID 16421)
-- Dependencies: 184
-- Data for Name: trabajador; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2249 (class 0 OID 16694)
-- Dependencies: 197
-- Data for Name: uni_adm; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (1, 'ÁREA DE DESARROLLO DE SISTEMAS', '2022-05-31', '17:09:51.89132', 1);
INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (2, 'ÁREA DE REDES Y TELECOMUNICACIONES', '2022-05-31', '17:09:57.509462', 1);
INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (3, 'ÁREA DE ADMINISTRACIÓN DE SERVIDORES', '2022-05-31', '17:14:20.01113', 1);
INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (4, 'ÁREA DE SOPORTE TÉCNICO A USUARIOS', '2022-05-31', '17:14:31.976051', 1);
INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (5, 'ÁREA DE SEGURIDAD DE LA INFORMACION Y GESTION TECNOLOGICA', '2022-05-31', '17:14:53.922568', 1);
INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (6, 'ÁREA COBRO DE PASAJE', '2022-05-31', '17:15:33.750627', 1);
INSERT INTO public.uni_adm (id_uni_adm, desc_uni_adm, fec_cre, hor_cre, status) VALUES (7, 'ÁREA DE TECNOLOGIA DE INFORMACIÓN Y COMUNICACIÓN', '2022-05-31', '17:15:41.211713', 1);

//-----------------------------------PRIMARY KEY ------------------------------------------------

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT pk_cod_marc PRIMARY KEY (cod_marc);



ALTER TABLE ONLY public.uni_adm
    ADD CONSTRAINT pk_id_adm PRIMARY KEY (id_uni_adm);



ALTER TABLE ONLY public.bien_mue
    ADD CONSTRAINT pk_id_bien PRIMARY KEY (id_bien_mue);



ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT pk_id_ciu PRIMARY KEY (id_ciu);


ALTER TABLE ONLY public.colores
    ADD CONSTRAINT pk_id_col PRIMARY KEY (id_col);


ALTER TABLE ONLY public.tp_comp
    ADD CONSTRAINT pk_id_comp PRIMARY KEY (id_tp_comp);



ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT pk_id_eqp PRIMARY KEY (id_eqp);



ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT pk_id_mod PRIMARY KEY (id_mod);


ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT pk_id_mun PRIMARY KEY (id_mun);



ALTER TABLE ONLY public.parroquia
    ADD CONSTRAINT pk_id_parr PRIMARY KEY (id_parr);



ALTER TABLE ONLY public.tipo_trb
    ADD CONSTRAINT pk_id_tp PRIMARY KEY (id_tp_trb);



ALTER TABLE ONLY public.trabajador
    ADD CONSTRAINT pk_id_trb PRIMARY KEY (id_trb);



ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT fk_cod_marc FOREIGN KEY (cod_marc_mod) REFERENCES public.marca(cod_marc);

//-----------------------------------FOREIGN KEY ------------------------------------------------

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_cod_marc FOREIGN KEY (cod_marc) REFERENCES public.marca(cod_marc);


ALTER TABLE ONLY public.trabajador
    ADD CONSTRAINT fk_id_adm FOREIGN KEY (id_adm_trb) REFERENCES public.uni_adm(id_uni_adm);


ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_id_adm FOREIGN KEY (id_adm_eqp) REFERENCES public.uni_adm(id_uni_adm);


ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_id_bien FOREIGN KEY (id_bien_eqp) REFERENCES public.bien_mue(id_bien_mue);


ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_id_ciu FOREIGN KEY (id_ciu_eqp) REFERENCES public.ciudad(id_ciu);


ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_id_col FOREIGN KEY (id_clr_eqp) REFERENCES public.colores(id_col);


ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_id_mod FOREIGN KEY (id_mod_eqp) REFERENCES public.modelo(id_mod);


ALTER TABLE ONLY public.parroquia
    ADD CONSTRAINT fk_id_mun FOREIGN KEY (id_mun) REFERENCES public.municipio(id_mun);


ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT fk_id_mun FOREIGN KEY (id_mun) REFERENCES public.municipio(id_mun);


ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_id_mun FOREIGN KEY (id_mun_eqp) REFERENCES public.municipio(id_mun);


ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_id_parr FOREIGN KEY (id_parr_eqp) REFERENCES public.parroquia(id_parr);



ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_id_tbr FOREIGN KEY (id_trb_eqp) REFERENCES public.trabajador(id_trb);


ALTER TABLE ONLY public.trabajador
    ADD CONSTRAINT fk_id_tp FOREIGN KEY (id_tp_trb) REFERENCES public.tipo_trb(id_tp_trb);


ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_id_tpc FOREIGN KEY (id_tpc_eqp) REFERENCES public.tp_comp(id_tp_comp);




