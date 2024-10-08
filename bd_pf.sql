toc.dat                                                                                             0000600 0004000 0002000 00000042622 14664505732 0014461 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   6                    |            videogames_catalog    16.0    16.0 >    .           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         /           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         0           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         1           1262    34028    videogames_catalog    DATABASE     �   CREATE DATABASE videogames_catalog WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Paraguay.1252';
 "   DROP DATABASE videogames_catalog;
                postgres    false         �            1259    34072 	   Categoria    TABLE     �   CREATE TABLE public."Categoria" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Categoria";
       public         heap    postgres    false         �            1259    34071    Categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Categoria_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Categoria_id_seq";
       public          postgres    false    224         2           0    0    Categoria_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Categoria_id_seq" OWNED BY public."Categoria".id;
          public          postgres    false    223         �            1259    34088 
   Categorias    TABLE     j   CREATE TABLE public."Categorias" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL
);
     DROP TABLE public."Categorias";
       public         heap    postgres    false         �            1259    34087    Categorias_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Categorias_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Categorias_id_seq";
       public          postgres    false    228         3           0    0    Categorias_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Categorias_id_seq" OWNED BY public."Categorias".id;
          public          postgres    false    227         �            1259    34063 	   Productos    TABLE     �  CREATE TABLE public."Productos" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    descripcion text NOT NULL,
    categoria_id integer NOT NULL,
    precio numeric(10,2) NOT NULL,
    rating numeric(3,2) NOT NULL,
    fecha_lanzamiento timestamp with time zone NOT NULL,
    proveedor_id integer NOT NULL,
    imagen_url character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Productos";
       public         heap    postgres    false         �            1259    34062    Productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Productos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Productos_id_seq";
       public          postgres    false    222         4           0    0    Productos_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Productos_id_seq" OWNED BY public."Productos".id;
          public          postgres    false    221         �            1259    34095    Proveedores    TABLE     �   CREATE TABLE public."Proveedores" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL,
    email character varying(255) NOT NULL
);
 !   DROP TABLE public."Proveedores";
       public         heap    postgres    false         �            1259    34094    Proveedores_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Proveedores_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Proveedores_id_seq";
       public          postgres    false    230         5           0    0    Proveedores_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Proveedores_id_seq" OWNED BY public."Proveedores".id;
          public          postgres    false    229         �            1259    34079 
   Proveedors    TABLE     =  CREATE TABLE public."Proveedors" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    direccion character varying(255),
    telefono character varying(255),
    email character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."Proveedors";
       public         heap    postgres    false         �            1259    34078    Proveedors_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Proveedors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Proveedors_id_seq";
       public          postgres    false    226         6           0    0    Proveedors_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Proveedors_id_seq" OWNED BY public."Proveedors".id;
          public          postgres    false    225         �            1259    34030 	   categoria    TABLE     f   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.categoria;
       public         heap    postgres    false         �            1259    34029    categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categoria_id_seq;
       public          postgres    false    216         7           0    0    categoria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;
          public          postgres    false    215         �            1259    34044    producto    TABLE     /  CREATE TABLE public.producto (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    precio numeric(10,2) NOT NULL,
    categoria_id integer,
    proveedor_id integer,
    imagen_url character varying(255),
    fecha_lanzamiento date,
    rating numeric(4,2)
);
    DROP TABLE public.producto;
       public         heap    postgres    false         �            1259    34043    producto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.producto_id_seq;
       public          postgres    false    220         8           0    0    producto_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.producto_id_seq OWNED BY public.producto.id;
          public          postgres    false    219         �            1259    34037 	   proveedor    TABLE     g   CREATE TABLE public.proveedor (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.proveedor;
       public         heap    postgres    false         �            1259    34036    proveedor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.proveedor_id_seq;
       public          postgres    false    218         9           0    0    proveedor_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.proveedor_id_seq OWNED BY public.proveedor.id;
          public          postgres    false    217         w           2604    34075    Categoria id    DEFAULT     p   ALTER TABLE ONLY public."Categoria" ALTER COLUMN id SET DEFAULT nextval('public."Categoria_id_seq"'::regclass);
 =   ALTER TABLE public."Categoria" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224         y           2604    34091    Categorias id    DEFAULT     r   ALTER TABLE ONLY public."Categorias" ALTER COLUMN id SET DEFAULT nextval('public."Categorias_id_seq"'::regclass);
 >   ALTER TABLE public."Categorias" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228         v           2604    34066    Productos id    DEFAULT     p   ALTER TABLE ONLY public."Productos" ALTER COLUMN id SET DEFAULT nextval('public."Productos_id_seq"'::regclass);
 =   ALTER TABLE public."Productos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222         z           2604    34098    Proveedores id    DEFAULT     t   ALTER TABLE ONLY public."Proveedores" ALTER COLUMN id SET DEFAULT nextval('public."Proveedores_id_seq"'::regclass);
 ?   ALTER TABLE public."Proveedores" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230         x           2604    34082    Proveedors id    DEFAULT     r   ALTER TABLE ONLY public."Proveedors" ALTER COLUMN id SET DEFAULT nextval('public."Proveedors_id_seq"'::regclass);
 >   ALTER TABLE public."Proveedors" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226         s           2604    34033    categoria id    DEFAULT     l   ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);
 ;   ALTER TABLE public.categoria ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216         u           2604    34047    producto id    DEFAULT     j   ALTER TABLE ONLY public.producto ALTER COLUMN id SET DEFAULT nextval('public.producto_id_seq'::regclass);
 :   ALTER TABLE public.producto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220         t           2604    34040    proveedor id    DEFAULT     l   ALTER TABLE ONLY public.proveedor ALTER COLUMN id SET DEFAULT nextval('public.proveedor_id_seq'::regclass);
 ;   ALTER TABLE public.proveedor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218         %          0    34072 	   Categoria 
   TABLE DATA           K   COPY public."Categoria" (id, nombre, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    224       4901.dat )          0    34088 
   Categorias 
   TABLE DATA           2   COPY public."Categorias" (id, nombre) FROM stdin;
    public          postgres    false    228       4905.dat #          0    34063 	   Productos 
   TABLE DATA           �   COPY public."Productos" (id, nombre, descripcion, categoria_id, precio, rating, fecha_lanzamiento, proveedor_id, imagen_url, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    222       4899.dat +          0    34095    Proveedores 
   TABLE DATA           O   COPY public."Proveedores" (id, nombre, direccion, telefono, email) FROM stdin;
    public          postgres    false    230       4907.dat '          0    34079 
   Proveedors 
   TABLE DATA           h   COPY public."Proveedors" (id, nombre, direccion, telefono, email, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    226       4903.dat           0    34030 	   categoria 
   TABLE DATA           /   COPY public.categoria (id, nombre) FROM stdin;
    public          postgres    false    216       4893.dat !          0    34044    producto 
   TABLE DATA           �   COPY public.producto (id, nombre, descripcion, precio, categoria_id, proveedor_id, imagen_url, fecha_lanzamiento, rating) FROM stdin;
    public          postgres    false    220       4897.dat           0    34037 	   proveedor 
   TABLE DATA           /   COPY public.proveedor (id, nombre) FROM stdin;
    public          postgres    false    218       4895.dat :           0    0    Categoria_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Categoria_id_seq"', 1, false);
          public          postgres    false    223         ;           0    0    Categorias_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Categorias_id_seq"', 1, false);
          public          postgres    false    227         <           0    0    Productos_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Productos_id_seq"', 1, false);
          public          postgres    false    221         =           0    0    Proveedores_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Proveedores_id_seq"', 1, false);
          public          postgres    false    229         >           0    0    Proveedors_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Proveedors_id_seq"', 1, false);
          public          postgres    false    225         ?           0    0    categoria_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.categoria_id_seq', 4, true);
          public          postgres    false    215         @           0    0    producto_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.producto_id_seq', 74, true);
          public          postgres    false    219         A           0    0    proveedor_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.proveedor_id_seq', 4, true);
          public          postgres    false    217         �           2606    34077    Categoria Categoria_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Categoria"
    ADD CONSTRAINT "Categoria_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Categoria" DROP CONSTRAINT "Categoria_pkey";
       public            postgres    false    224         �           2606    34093    Categorias Categorias_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "Categorias_pkey";
       public            postgres    false    228         �           2606    34070    Productos Productos_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Productos" DROP CONSTRAINT "Productos_pkey";
       public            postgres    false    222         �           2606    34102    Proveedores Proveedores_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Proveedores"
    ADD CONSTRAINT "Proveedores_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Proveedores" DROP CONSTRAINT "Proveedores_pkey";
       public            postgres    false    230         �           2606    34086    Proveedors Proveedors_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Proveedors"
    ADD CONSTRAINT "Proveedors_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Proveedors" DROP CONSTRAINT "Proveedors_pkey";
       public            postgres    false    226         |           2606    34035    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    216         �           2606    34051    producto producto_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    220         ~           2606    34042    proveedor proveedor_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
       public            postgres    false    218         �           2606    34052 #   producto producto_categoria_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_categoria_id_fkey FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);
 M   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_categoria_id_fkey;
       public          postgres    false    220    4732    216         �           2606    34057 #   producto producto_proveedor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.proveedor(id);
 M   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_proveedor_id_fkey;
       public          postgres    false    220    4734    218                                                                                                                      4901.dat                                                                                            0000600 0004000 0002000 00000000005 14664505732 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4905.dat                                                                                            0000600 0004000 0002000 00000000005 14664505732 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4899.dat                                                                                            0000600 0004000 0002000 00000000005 14664505732 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4907.dat                                                                                            0000600 0004000 0002000 00000000005 14664505732 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4903.dat                                                                                            0000600 0004000 0002000 00000000005 14664505732 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4893.dat                                                                                            0000600 0004000 0002000 00000000347 14664505732 0014301 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Acción
2	Aventura
3	RPG
4	Simulación
5	Shooter
6	Simulador
7	Shooter en Primera Persona
8	Multijugador
9	Sandbox
10	Battle Royale
11	Battle Royale Shooter
12	Táctico
13	Aventura
14	Plataformas
15	Terror
16	Plataformas 2D
\.


                                                                                                                                                                                                                                                                                         4897.dat                                                                                            0000600 0004000 0002000 00000006401 14664505732 0014302 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Cyberpunk 2077	Un juego RPG futurista	59.99	3	4	blob:http://localhost:3001/381f4ee5-9f70-4717-98c5-f6e7b2062695	2020-12-10	7.80
2	Assassins Creed Valhalla	Aventura en la época de los vikingos	49.99	2	2	rdr2.jpg	2020-11-10	8.50
4	Red Dead Redemption 2	Un juego de acción y aventura en el salvaje oeste.	59.99	2	1	blob:http://localhost:3001/2a36222a-8966-448d-883c-7715e03add5f	2018-10-26	9.70
3	The Witcher 3: Wild Hunt	Un juego de rol de mundo abierto con una historia épica.	39.99	1	1	blob:http://localhost:3001/3f92829b-d171-464c-80cf-fa6751b69848	2015-05-18	9.80
5	Hades	Un roguelike de acción con una historia envolvente.	24.99	3	1	blob:http://localhost:3001/9ab6a2e0-f8ff-4f19-9ce9-bf54b87a05bf	2020-09-17	9.50
21	Persona 5	Un juego de rol centrado en la vida de un estudiante de secundaria.	49.99	1	1	blob:http://localhost:3001/eb8dd938-be35-4472-a023-fe653026f52a	2016-09-15	9.80
7	Ghost of Tsushima	Un juego de acción y aventura ambientado en el Japón feudal.	59.99	2	1	/assets/images/ghost_of_tsushima.jpg	2020-07-17	9.30
8	Doom Eternal	Un juego de disparos en primera persona lleno de acción y adrenalina.	29.99	5	1	/assets/images/doom_eternal.jpg	2020-03-20	9.00
9	Stardew Valley	Un simulador de granja con elementos de rol.	14.99	6	1	/assets/images/stardew_valley.jpg	2016-02-26	9.60
10	Dark Souls III	Un juego de rol de acción conocido por su dificultad.	39.99	1	1	/assets/images/dark_souls_3.jpg	2016-04-12	9.20
11	Overwatch	Un juego de disparos en primera persona centrado en el juego en equipo.	19.99	7	1	/assets/images/overwatch.jpg	2016-05-24	8.80
12	Among Us	Un juego multijugador de deducción social.	4.99	8	1	/assets/images/among_us.jpg	2018-06-15	8.50
13	Minecraft	Un juego de construcción y exploración en un mundo abierto.	26.95	9	1	/assets/images/minecraft.jpg	2011-11-18	9.70
14	Fortnite	Un juego de disparos en tercera persona con un modo Battle Royale.	0.00	10	1	/assets/images/fortnite.jpg	2017-07-25	8.30
15	Apex Legends	Un juego de disparos en primera persona con un modo Battle Royale.	0.00	11	1	/assets/images/apex_legends.jpg	2019-02-04	8.60
16	Valorant	Un juego de disparos en primera persona centrado en el juego táctico.	0.00	12	1	/assets/images/valorant.jpg	2020-06-02	9.00
17	Final Fantasy VII Remake	Un remake del clásico juego de rol.	59.99	1	1	/assets/images/ff7_remake.jpg	2020-04-10	9.10
18	Horizon Zero Dawn	Un juego de acción y aventura ambientado en un mundo postapocalíptico.	49.99	2	1	/assets/images/horizon_zero_dawn.jpg	2017-02-28	9.30
19	The Legend of Zelda: Breath of the Wild	Un juego de acción y aventura con un mundo abierto masivo.	59.99	13	1	/assets/images/breath_of_the_wild.jpg	2017-03-03	10.00
20	Super Mario Odyssey	Un juego de plataformas en 3D con Mario.	59.99	14	1	/assets/images/super_mario_odyssey.jpg	2017-10-27	9.70
22	Nier: Automata	Un juego de rol de acción con una historia filosófica profunda.	39.99	1	1	/assets/images/nier_automata.jpg	2017-03-07	9.50
23	Sekiro: Shadows Die Twice	Un juego de acción y aventura con un combate desafiante.	59.99	2	1	/assets/images/sekiro.jpg	2019-03-22	9.20
24	Resident Evil 2	Un remake del clásico juego de terror.	39.99	15	1	/assets/images/re2_remake.jpg	2019-01-25	9.40
25	Celeste	Un juego de plataformas en 2D con una historia emocional.	19.99	16	1	/assets/images/celeste.jpg	2018-01-25	9.60
\.


                                                                                                                                                                                                                                                               4895.dat                                                                                            0000600 0004000 0002000 00000000057 14664505732 0014301 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Valve
2	Ubisoft
3	EA Games
4	CD Projekt
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 restore.sql                                                                                         0000600 0004000 0002000 00000034672 14664505732 0015414 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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

DROP DATABASE videogames_catalog;
--
-- Name: videogames_catalog; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE videogames_catalog WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Paraguay.1252';


ALTER DATABASE videogames_catalog OWNER TO postgres;

\connect videogames_catalog

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Categoria" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Categoria" OWNER TO postgres;

--
-- Name: Categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Categoria_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Categoria_id_seq" OWNER TO postgres;

--
-- Name: Categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Categoria_id_seq" OWNED BY public."Categoria".id;


--
-- Name: Categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Categorias" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL
);


ALTER TABLE public."Categorias" OWNER TO postgres;

--
-- Name: Categorias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Categorias_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Categorias_id_seq" OWNER TO postgres;

--
-- Name: Categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Categorias_id_seq" OWNED BY public."Categorias".id;


--
-- Name: Productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Productos" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    descripcion text NOT NULL,
    categoria_id integer NOT NULL,
    precio numeric(10,2) NOT NULL,
    rating numeric(3,2) NOT NULL,
    fecha_lanzamiento timestamp with time zone NOT NULL,
    proveedor_id integer NOT NULL,
    imagen_url character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Productos" OWNER TO postgres;

--
-- Name: Productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Productos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Productos_id_seq" OWNER TO postgres;

--
-- Name: Productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Productos_id_seq" OWNED BY public."Productos".id;


--
-- Name: Proveedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Proveedores" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL,
    email character varying(255) NOT NULL
);


ALTER TABLE public."Proveedores" OWNER TO postgres;

--
-- Name: Proveedores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Proveedores_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Proveedores_id_seq" OWNER TO postgres;

--
-- Name: Proveedores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Proveedores_id_seq" OWNED BY public."Proveedores".id;


--
-- Name: Proveedors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Proveedors" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    direccion character varying(255),
    telefono character varying(255),
    email character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Proveedors" OWNER TO postgres;

--
-- Name: Proveedors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Proveedors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Proveedors_id_seq" OWNER TO postgres;

--
-- Name: Proveedors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Proveedors_id_seq" OWNED BY public."Proveedors".id;


--
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_id_seq OWNER TO postgres;

--
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    precio numeric(10,2) NOT NULL,
    categoria_id integer,
    proveedor_id integer,
    imagen_url character varying(255),
    fecha_lanzamiento date,
    rating numeric(4,2)
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- Name: producto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.producto_id_seq OWNER TO postgres;

--
-- Name: producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producto_id_seq OWNED BY public.producto.id;


--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedor (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.proveedor OWNER TO postgres;

--
-- Name: proveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proveedor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proveedor_id_seq OWNER TO postgres;

--
-- Name: proveedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proveedor_id_seq OWNED BY public.proveedor.id;


--
-- Name: Categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categoria" ALTER COLUMN id SET DEFAULT nextval('public."Categoria_id_seq"'::regclass);


--
-- Name: Categorias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categorias" ALTER COLUMN id SET DEFAULT nextval('public."Categorias_id_seq"'::regclass);


--
-- Name: Productos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Productos" ALTER COLUMN id SET DEFAULT nextval('public."Productos_id_seq"'::regclass);


--
-- Name: Proveedores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Proveedores" ALTER COLUMN id SET DEFAULT nextval('public."Proveedores_id_seq"'::regclass);


--
-- Name: Proveedors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Proveedors" ALTER COLUMN id SET DEFAULT nextval('public."Proveedors_id_seq"'::regclass);


--
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- Name: producto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto ALTER COLUMN id SET DEFAULT nextval('public.producto_id_seq'::regclass);


--
-- Name: proveedor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor ALTER COLUMN id SET DEFAULT nextval('public.proveedor_id_seq'::regclass);


--
-- Data for Name: Categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Categoria" (id, nombre, "createdAt", "updatedAt") FROM stdin;
\.
COPY public."Categoria" (id, nombre, "createdAt", "updatedAt") FROM '$$PATH$$/4901.dat';

--
-- Data for Name: Categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Categorias" (id, nombre) FROM stdin;
\.
COPY public."Categorias" (id, nombre) FROM '$$PATH$$/4905.dat';

--
-- Data for Name: Productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Productos" (id, nombre, descripcion, categoria_id, precio, rating, fecha_lanzamiento, proveedor_id, imagen_url, "createdAt", "updatedAt") FROM stdin;
\.
COPY public."Productos" (id, nombre, descripcion, categoria_id, precio, rating, fecha_lanzamiento, proveedor_id, imagen_url, "createdAt", "updatedAt") FROM '$$PATH$$/4899.dat';

--
-- Data for Name: Proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Proveedores" (id, nombre, direccion, telefono, email) FROM stdin;
\.
COPY public."Proveedores" (id, nombre, direccion, telefono, email) FROM '$$PATH$$/4907.dat';

--
-- Data for Name: Proveedors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Proveedors" (id, nombre, direccion, telefono, email, "createdAt", "updatedAt") FROM stdin;
\.
COPY public."Proveedors" (id, nombre, direccion, telefono, email, "createdAt", "updatedAt") FROM '$$PATH$$/4903.dat';

--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id, nombre) FROM stdin;
\.
COPY public.categoria (id, nombre) FROM '$$PATH$$/4893.dat';

--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (id, nombre, descripcion, precio, categoria_id, proveedor_id, imagen_url, fecha_lanzamiento, rating) FROM stdin;
\.
COPY public.producto (id, nombre, descripcion, precio, categoria_id, proveedor_id, imagen_url, fecha_lanzamiento, rating) FROM '$$PATH$$/4897.dat';

--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedor (id, nombre) FROM stdin;
\.
COPY public.proveedor (id, nombre) FROM '$$PATH$$/4895.dat';

--
-- Name: Categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Categoria_id_seq"', 1, false);


--
-- Name: Categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Categorias_id_seq"', 1, false);


--
-- Name: Productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Productos_id_seq"', 1, false);


--
-- Name: Proveedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Proveedores_id_seq"', 1, false);


--
-- Name: Proveedors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Proveedors_id_seq"', 1, false);


--
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 4, true);


--
-- Name: producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producto_id_seq', 74, true);


--
-- Name: proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proveedor_id_seq', 4, true);


--
-- Name: Categoria Categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categoria"
    ADD CONSTRAINT "Categoria_pkey" PRIMARY KEY (id);


--
-- Name: Categorias Categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_pkey" PRIMARY KEY (id);


--
-- Name: Productos Productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Productos"
    ADD CONSTRAINT "Productos_pkey" PRIMARY KEY (id);


--
-- Name: Proveedores Proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Proveedores"
    ADD CONSTRAINT "Proveedores_pkey" PRIMARY KEY (id);


--
-- Name: Proveedors Proveedors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Proveedors"
    ADD CONSTRAINT "Proveedors_pkey" PRIMARY KEY (id);


--
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);


--
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id);


--
-- Name: producto producto_categoria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_categoria_id_fkey FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);


--
-- Name: producto producto_proveedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.proveedor(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      