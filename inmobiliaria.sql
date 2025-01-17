PGDMP                      |            inmobiliaria    16.2    16.2 5               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    16397    inmobiliaria    DATABASE        CREATE DATABASE inmobiliaria WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE inmobiliaria;
                postgres    false            �            1259    16406    agente_inmobiliario    TABLE     �   CREATE TABLE public.agente_inmobiliario (
    id_agente integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    correo character varying(50),
    telefono character varying(20),
    experiencia integer
);
 '   DROP TABLE public.agente_inmobiliario;
       public         heap    postgres    false            �            1259    16405 !   agente_inmobiliario_id_agente_seq    SEQUENCE     �   CREATE SEQUENCE public.agente_inmobiliario_id_agente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.agente_inmobiliario_id_agente_seq;
       public          postgres    false    218            #           0    0 !   agente_inmobiliario_id_agente_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.agente_inmobiliario_id_agente_seq OWNED BY public.agente_inmobiliario.id_agente;
          public          postgres    false    217            �            1259    16399    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    correo character varying(50),
    telefono character varying(20)
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    16398    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public          postgres    false    216            $           0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
          public          postgres    false    215            �            1259    16468 	   contratos    TABLE     �   CREATE TABLE public.contratos (
    id_contrato integer NOT NULL,
    id_transaccion integer,
    fecha_inicio date,
    fecha_fin date,
    monto numeric
);
    DROP TABLE public.contratos;
       public         heap    postgres    false            �            1259    16467    contratos_id_contrato_seq    SEQUENCE     �   CREATE SEQUENCE public.contratos_id_contrato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.contratos_id_contrato_seq;
       public          postgres    false    226            %           0    0    contratos_id_contrato_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.contratos_id_contrato_seq OWNED BY public.contratos.id_contrato;
          public          postgres    false    225            �            1259    16413 	   propiedad    TABLE     �   CREATE TABLE public.propiedad (
    id_propiedad integer NOT NULL,
    direccion character varying(100),
    precio numeric,
    estado character varying(20),
    caracteristicas text,
    dimension numeric,
    foto character varying(255)
);
    DROP TABLE public.propiedad;
       public         heap    postgres    false            �            1259    16412    propiedad_id_propiedad_seq    SEQUENCE     �   CREATE SEQUENCE public.propiedad_id_propiedad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.propiedad_id_propiedad_seq;
       public          postgres    false    220            &           0    0    propiedad_id_propiedad_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.propiedad_id_propiedad_seq OWNED BY public.propiedad.id_propiedad;
          public          postgres    false    219            �            1259    16444    transacciones    TABLE     �   CREATE TABLE public.transacciones (
    id_transaccion integer NOT NULL,
    fecha date,
    id_cliente integer,
    id_propiedad integer,
    id_agente integer,
    monto numeric
);
 !   DROP TABLE public.transacciones;
       public         heap    postgres    false            �            1259    16443     transacciones_id_transaccion_seq    SEQUENCE     �   CREATE SEQUENCE public.transacciones_id_transaccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.transacciones_id_transaccion_seq;
       public          postgres    false    224            '           0    0     transacciones_id_transaccion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.transacciones_id_transaccion_seq OWNED BY public.transacciones.id_transaccion;
          public          postgres    false    223            �            1259    16422    visitas    TABLE     �   CREATE TABLE public.visitas (
    id integer NOT NULL,
    visita character varying(100),
    fecha date,
    id_propiedad integer,
    id_cliente integer,
    id_agente integer
);
    DROP TABLE public.visitas;
       public         heap    postgres    false            �            1259    16421    visitas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.visitas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.visitas_id_seq;
       public          postgres    false    222            (           0    0    visitas_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.visitas_id_seq OWNED BY public.visitas.id;
          public          postgres    false    221            j           2604    16409    agente_inmobiliario id_agente    DEFAULT     �   ALTER TABLE ONLY public.agente_inmobiliario ALTER COLUMN id_agente SET DEFAULT nextval('public.agente_inmobiliario_id_agente_seq'::regclass);
 L   ALTER TABLE public.agente_inmobiliario ALTER COLUMN id_agente DROP DEFAULT;
       public          postgres    false    218    217    218            i           2604    16402    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    216    215    216            n           2604    16471    contratos id_contrato    DEFAULT     ~   ALTER TABLE ONLY public.contratos ALTER COLUMN id_contrato SET DEFAULT nextval('public.contratos_id_contrato_seq'::regclass);
 D   ALTER TABLE public.contratos ALTER COLUMN id_contrato DROP DEFAULT;
       public          postgres    false    226    225    226            k           2604    16416    propiedad id_propiedad    DEFAULT     �   ALTER TABLE ONLY public.propiedad ALTER COLUMN id_propiedad SET DEFAULT nextval('public.propiedad_id_propiedad_seq'::regclass);
 E   ALTER TABLE public.propiedad ALTER COLUMN id_propiedad DROP DEFAULT;
       public          postgres    false    220    219    220            m           2604    16447    transacciones id_transaccion    DEFAULT     �   ALTER TABLE ONLY public.transacciones ALTER COLUMN id_transaccion SET DEFAULT nextval('public.transacciones_id_transaccion_seq'::regclass);
 K   ALTER TABLE public.transacciones ALTER COLUMN id_transaccion DROP DEFAULT;
       public          postgres    false    223    224    224            l           2604    16425 
   visitas id    DEFAULT     h   ALTER TABLE ONLY public.visitas ALTER COLUMN id SET DEFAULT nextval('public.visitas_id_seq'::regclass);
 9   ALTER TABLE public.visitas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222                      0    16406    agente_inmobiliario 
   TABLE DATA           i   COPY public.agente_inmobiliario (id_agente, nombre, apellido, correo, telefono, experiencia) FROM stdin;
    public          postgres    false    218   �@                 0    16399    cliente 
   TABLE DATA           Q   COPY public.cliente (id_cliente, nombre, apellido, correo, telefono) FROM stdin;
    public          postgres    false    216   A                 0    16468 	   contratos 
   TABLE DATA           `   COPY public.contratos (id_contrato, id_transaccion, fecha_inicio, fecha_fin, monto) FROM stdin;
    public          postgres    false    226   �A                 0    16413 	   propiedad 
   TABLE DATA           n   COPY public.propiedad (id_propiedad, direccion, precio, estado, caracteristicas, dimension, foto) FROM stdin;
    public          postgres    false    220   �A                 0    16444    transacciones 
   TABLE DATA           j   COPY public.transacciones (id_transaccion, fecha, id_cliente, id_propiedad, id_agente, monto) FROM stdin;
    public          postgres    false    224   �B                 0    16422    visitas 
   TABLE DATA           Y   COPY public.visitas (id, visita, fecha, id_propiedad, id_cliente, id_agente) FROM stdin;
    public          postgres    false    222   �B       )           0    0 !   agente_inmobiliario_id_agente_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.agente_inmobiliario_id_agente_seq', 1, true);
          public          postgres    false    217            *           0    0    cliente_id_cliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 4, true);
          public          postgres    false    215            +           0    0    contratos_id_contrato_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.contratos_id_contrato_seq', 2, true);
          public          postgres    false    225            ,           0    0    propiedad_id_propiedad_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.propiedad_id_propiedad_seq', 13, true);
          public          postgres    false    219            -           0    0     transacciones_id_transaccion_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.transacciones_id_transaccion_seq', 2, true);
          public          postgres    false    223            .           0    0    visitas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.visitas_id_seq', 3, true);
          public          postgres    false    221            r           2606    16411 ,   agente_inmobiliario agente_inmobiliario_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.agente_inmobiliario
    ADD CONSTRAINT agente_inmobiliario_pkey PRIMARY KEY (id_agente);
 V   ALTER TABLE ONLY public.agente_inmobiliario DROP CONSTRAINT agente_inmobiliario_pkey;
       public            postgres    false    218            p           2606    16404    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    216            z           2606    16475    contratos contratos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.contratos
    ADD CONSTRAINT contratos_pkey PRIMARY KEY (id_contrato);
 B   ALTER TABLE ONLY public.contratos DROP CONSTRAINT contratos_pkey;
       public            postgres    false    226            t           2606    16420    propiedad propiedad_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.propiedad
    ADD CONSTRAINT propiedad_pkey PRIMARY KEY (id_propiedad);
 B   ALTER TABLE ONLY public.propiedad DROP CONSTRAINT propiedad_pkey;
       public            postgres    false    220            x           2606    16451     transacciones transacciones_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.transacciones
    ADD CONSTRAINT transacciones_pkey PRIMARY KEY (id_transaccion);
 J   ALTER TABLE ONLY public.transacciones DROP CONSTRAINT transacciones_pkey;
       public            postgres    false    224            v           2606    16427    visitas visitas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT visitas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.visitas DROP CONSTRAINT visitas_pkey;
       public            postgres    false    222            �           2606    16476 '   contratos contratos_id_transaccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos
    ADD CONSTRAINT contratos_id_transaccion_fkey FOREIGN KEY (id_transaccion) REFERENCES public.transacciones(id_transaccion);
 Q   ALTER TABLE ONLY public.contratos DROP CONSTRAINT contratos_id_transaccion_fkey;
       public          postgres    false    226    224    4728            ~           2606    16462 *   transacciones transacciones_id_agente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transacciones
    ADD CONSTRAINT transacciones_id_agente_fkey FOREIGN KEY (id_agente) REFERENCES public.agente_inmobiliario(id_agente);
 T   ALTER TABLE ONLY public.transacciones DROP CONSTRAINT transacciones_id_agente_fkey;
       public          postgres    false    4722    224    218                       2606    16452 +   transacciones transacciones_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transacciones
    ADD CONSTRAINT transacciones_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 U   ALTER TABLE ONLY public.transacciones DROP CONSTRAINT transacciones_id_cliente_fkey;
       public          postgres    false    224    4720    216            �           2606    16457 -   transacciones transacciones_id_propiedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transacciones
    ADD CONSTRAINT transacciones_id_propiedad_fkey FOREIGN KEY (id_propiedad) REFERENCES public.propiedad(id_propiedad);
 W   ALTER TABLE ONLY public.transacciones DROP CONSTRAINT transacciones_id_propiedad_fkey;
       public          postgres    false    220    4724    224            {           2606    16438    visitas visitas_id_agente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT visitas_id_agente_fkey FOREIGN KEY (id_agente) REFERENCES public.agente_inmobiliario(id_agente);
 H   ALTER TABLE ONLY public.visitas DROP CONSTRAINT visitas_id_agente_fkey;
       public          postgres    false    218    4722    222            |           2606    16433    visitas visitas_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT visitas_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 I   ALTER TABLE ONLY public.visitas DROP CONSTRAINT visitas_id_cliente_fkey;
       public          postgres    false    216    4720    222            }           2606    16428 !   visitas visitas_id_propiedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT visitas_id_propiedad_fkey FOREIGN KEY (id_propiedad) REFERENCES public.propiedad(id_propiedad);
 K   ALTER TABLE ONLY public.visitas DROP CONSTRAINT visitas_id_propiedad_fkey;
       public          postgres    false    220    4724    222               1   x�3��*M��,J��/�LLI,vH�M���K���46126�4����� If         h   x�3�������r��r�R�wq�,NI� ��������\N#c0�2�L�K,.IL����MM��K�L��CRinfnbfl`�e����	6	��� �b���� $�(�         '   x�3�4�4242�50�52�4622�5!N#c�=... b.m         �   x�5QAn�0;+���6^��C���Zʖ���(Y��~��B�%�tK�?9"%P��m^�:�=Ӥ���z���{���!s*#�
��ag��Q4q�w�6���|�Io�׽�J~z
�����K��zB��#��eucި����4�݈(_�G����]�T�R|j��Z�}���֭O���L��&Jc�a�Gx��pU#Q�z$L�b�$Rw*o�.�������2yn[�&%��P�V#p�l)�7./M��>�zI         !   x�3�4]c]#cNCN6222����� E�]         3   x�3�,�/RH�Q(I-*J��/O)O�4222�54�50�4�4�4����� �
�     