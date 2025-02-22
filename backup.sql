PGDMP  ,                    |            sabirov_227_pr6    17.0    17.0 =    1           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            4           1262    18560    sabirov_227_pr6    DATABASE     �   CREATE DATABASE sabirov_227_pr6 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE sabirov_227_pr6;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            5           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    18600    catalog_    TABLE     �   CREATE TABLE public.catalog_ (
    id smallint NOT NULL,
    name_ character varying(50),
    id_products integer,
    price numeric(5,2)
);
    DROP TABLE public.catalog_;
       public         heap r       postgres    false    4            �            1259    18599    catalog__id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog__id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.catalog__id_seq;
       public               postgres    false    4    226            6           0    0    catalog__id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.catalog__id_seq OWNED BY public.catalog_.id;
          public               postgres    false    225            �            1259    18612    client    TABLE     {   CREATE TABLE public.client (
    id integer NOT NULL,
    fio character varying(100),
    number_ character varying(12)
);
    DROP TABLE public.client;
       public         heap r       postgres    false    4            �            1259    18611    client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.client_id_seq;
       public               postgres    false    228    4            7           0    0    client_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;
          public               postgres    false    227            �            1259    18581 	   job_title    TABLE     q   CREATE TABLE public.job_title (
    id smallint NOT NULL,
    name_ character varying(50),
    salary integer
);
    DROP TABLE public.job_title;
       public         heap r       postgres    false    4            �            1259    18580    job_title_id_seq    SEQUENCE     �   CREATE SEQUENCE public.job_title_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.job_title_id_seq;
       public               postgres    false    4    222            8           0    0    job_title_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.job_title_id_seq OWNED BY public.job_title.id;
          public               postgres    false    221            �            1259    18619    order_    TABLE     �   CREATE TABLE public.order_ (
    id integer NOT NULL,
    id_worker integer,
    id_client integer,
    id_catalog smallint,
    time_start time without time zone,
    price numeric(5,2)
);
    DROP TABLE public.order_;
       public         heap r       postgres    false    4            �            1259    18618    order__id_seq    SEQUENCE     �   CREATE SEQUENCE public.order__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.order__id_seq;
       public               postgres    false    4    230            9           0    0    order__id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.order__id_seq OWNED BY public.order_.id;
          public               postgres    false    229            �            1259    18562    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    name_ character varying(30),
    count_ integer,
    price integer
);
    DROP TABLE public.products;
       public         heap r       postgres    false    4            �            1259    18561    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public               postgres    false    4    218            :           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public               postgres    false    217            �            1259    18569    supplier    TABLE     �   CREATE TABLE public.supplier (
    id smallint NOT NULL,
    name_ character varying(30),
    id_products integer,
    price numeric(6,2)
);
    DROP TABLE public.supplier;
       public         heap r       postgres    false    4            �            1259    18568    supplier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.supplier_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.supplier_id_seq;
       public               postgres    false    4    220            ;           0    0    supplier_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.supplier_id_seq OWNED BY public.supplier.id;
          public               postgres    false    219            �            1259    18588    worker    TABLE     s   CREATE TABLE public.worker (
    id integer NOT NULL,
    fio character varying(100),
    id_job_title smallint
);
    DROP TABLE public.worker;
       public         heap r       postgres    false    4            �            1259    18587    worker_id_seq    SEQUENCE     �   CREATE SEQUENCE public.worker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.worker_id_seq;
       public               postgres    false    224    4            <           0    0    worker_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.worker_id_seq OWNED BY public.worker.id;
          public               postgres    false    223            y           2604    18645    catalog_ id    DEFAULT     j   ALTER TABLE ONLY public.catalog_ ALTER COLUMN id SET DEFAULT nextval('public.catalog__id_seq'::regclass);
 :   ALTER TABLE public.catalog_ ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    226    226            z           2604    18646 	   client id    DEFAULT     f   ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);
 8   ALTER TABLE public.client ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    227    228            w           2604    18647    job_title id    DEFAULT     l   ALTER TABLE ONLY public.job_title ALTER COLUMN id SET DEFAULT nextval('public.job_title_id_seq'::regclass);
 ;   ALTER TABLE public.job_title ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222            {           2604    18648 	   order_ id    DEFAULT     f   ALTER TABLE ONLY public.order_ ALTER COLUMN id SET DEFAULT nextval('public.order__id_seq'::regclass);
 8   ALTER TABLE public.order_ ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    230    229    230            u           2604    18649    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            v           2604    18650    supplier id    DEFAULT     j   ALTER TABLE ONLY public.supplier ALTER COLUMN id SET DEFAULT nextval('public.supplier_id_seq'::regclass);
 :   ALTER TABLE public.supplier ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            x           2604    18651 	   worker id    DEFAULT     f   ALTER TABLE ONLY public.worker ALTER COLUMN id SET DEFAULT nextval('public.worker_id_seq'::regclass);
 8   ALTER TABLE public.worker ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            *          0    18600    catalog_ 
   TABLE DATA           A   COPY public.catalog_ (id, name_, id_products, price) FROM stdin;
    public               postgres    false    226   =B       ,          0    18612    client 
   TABLE DATA           2   COPY public.client (id, fio, number_) FROM stdin;
    public               postgres    false    228   �B       &          0    18581 	   job_title 
   TABLE DATA           6   COPY public.job_title (id, name_, salary) FROM stdin;
    public               postgres    false    222   �C       .          0    18619    order_ 
   TABLE DATA           Y   COPY public.order_ (id, id_worker, id_client, id_catalog, time_start, price) FROM stdin;
    public               postgres    false    230    D       "          0    18562    products 
   TABLE DATA           <   COPY public.products (id, name_, count_, price) FROM stdin;
    public               postgres    false    218   wD       $          0    18569    supplier 
   TABLE DATA           A   COPY public.supplier (id, name_, id_products, price) FROM stdin;
    public               postgres    false    220   E       (          0    18588    worker 
   TABLE DATA           7   COPY public.worker (id, fio, id_job_title) FROM stdin;
    public               postgres    false    224   {E       =           0    0    catalog__id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.catalog__id_seq', 5, true);
          public               postgres    false    225            >           0    0    client_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.client_id_seq', 5, true);
          public               postgres    false    227            ?           0    0    job_title_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.job_title_id_seq', 4, true);
          public               postgres    false    221            @           0    0    order__id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.order__id_seq', 5, true);
          public               postgres    false    229            A           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 6, true);
          public               postgres    false    217            B           0    0    supplier_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.supplier_id_seq', 5, true);
          public               postgres    false    219            C           0    0    worker_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.worker_id_seq', 7, true);
          public               postgres    false    223            �           2606    18605    catalog_ catalog__pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.catalog_
    ADD CONSTRAINT catalog__pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.catalog_ DROP CONSTRAINT catalog__pkey;
       public                 postgres    false    226            �           2606    18617    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public                 postgres    false    228            �           2606    18586    job_title job_title_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.job_title
    ADD CONSTRAINT job_title_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.job_title DROP CONSTRAINT job_title_pkey;
       public                 postgres    false    222            �           2606    18624    order_ order__pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.order_ DROP CONSTRAINT order__pkey;
       public                 postgres    false    230            }           2606    18567    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    218                       2606    18574    supplier supplier_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public                 postgres    false    220            �           2606    18593    worker worker_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.worker
    ADD CONSTRAINT worker_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.worker DROP CONSTRAINT worker_pkey;
       public                 postgres    false    224            �           2606    18606 "   catalog_ catalog__id_products_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_
    ADD CONSTRAINT catalog__id_products_fkey FOREIGN KEY (id_products) REFERENCES public.products(id);
 L   ALTER TABLE ONLY public.catalog_ DROP CONSTRAINT catalog__id_products_fkey;
       public               postgres    false    218    4733    226            �           2606    18635    order_ order__id_catalog_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__id_catalog_fkey FOREIGN KEY (id_catalog) REFERENCES public.catalog_(id);
 G   ALTER TABLE ONLY public.order_ DROP CONSTRAINT order__id_catalog_fkey;
       public               postgres    false    4741    226    230            �           2606    18630    order_ order__id_client_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__id_client_fkey FOREIGN KEY (id_client) REFERENCES public.client(id);
 F   ALTER TABLE ONLY public.order_ DROP CONSTRAINT order__id_client_fkey;
       public               postgres    false    228    230    4743            �           2606    18625    order_ order__id_worker_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__id_worker_fkey FOREIGN KEY (id_worker) REFERENCES public.worker(id);
 F   ALTER TABLE ONLY public.order_ DROP CONSTRAINT order__id_worker_fkey;
       public               postgres    false    230    4739    224            �           2606    18575 "   supplier supplier_id_products_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_id_products_fkey FOREIGN KEY (id_products) REFERENCES public.products(id);
 L   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_id_products_fkey;
       public               postgres    false    4733    218    220            �           2606    18594    worker worker_id_job_title_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.worker
    ADD CONSTRAINT worker_id_job_title_fkey FOREIGN KEY (id_job_title) REFERENCES public.job_title(id);
 I   ALTER TABLE ONLY public.worker DROP CONSTRAINT worker_id_job_title_fkey;
       public               postgres    false    222    4737    224            *   �   x�m�;�0D��)|�H������A� ��5D��p��1.\�V�v=3o��0cЍ:�"n�ګ���%��MWt��Gx��ku��8�k�7��f�hq��H\0J�õ`ϟ+h�oO���K��G�XȞh��-�Kz�|g�s{�&�[�E��"ې<9a�6'V�1��}      ,   �   x�m�]
�0���S�B[���ъ��">�"ޠh��?�a�F�*Ԓ�l2���&gY�!k޸�rآ�b�C@#�G㧙Β4{o���J�F��H,�u{x"�O��l���� +ܙ⥈�Y�͂�j�e?�wl(�(�h�f��}�_���'���!�;�Ig����?x>��>��G      &   _   x����0kgdنa�tt�4, �"B��᤽�����ШY�|`f�	
.��h �8QTtF�C�ᑰ��k賃�IŪTE
M�:��w|2_      .   G   x�U���0�7cq`"A-鿎����Fs�7���V��<Tz�������濏[�����1�]����      "   �   x�e���0E��L���I`����*�@l����{#L�\|���oG8��/�v�=
���G�ȉ����?n�V<�A�q)���=�jo+�=%�pA?+��(����pӃQ�t/	'm�G�=&��^o�����SK      $   W   x�m̱�@F��g
'��۸�vN�
��X8l��W��~y����%�8��-��'�@��1S�@Ǘ�@+�P�8X���!̍�^MoL�      (   �   x�UPA
�0<'���֪��1U��Ń��>@(�b5U�0�#g�z���Lf60�ㅷ,�y��|xTxj�E�J��QrΦ	lh��9�Jr8sV�O����b�$�o�r�P��JUTV1��2I%AI�g�h���hOf��V�#%�J����k-n���D��h��9�K�h�wr�� s��!�9���~ȴ��H#�˺��]�]W�9	�=k��z�l     