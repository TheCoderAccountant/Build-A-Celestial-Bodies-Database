--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(10,2) NOT NULL,
    speed integer,
    galaxy_type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(10,2) NOT NULL,
    speed integer,
    elements text,
    planet_id integer NOT NULL,
    has_life boolean,
    distance_from_planet numeric(10,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    description text,
    age integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(10,2),
    speed integer,
    elements text,
    star_id integer NOT NULL,
    has_life boolean,
    has_atmosphere boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(10,2) NOT NULL,
    speed integer,
    elements text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 700.20, 445, 'flaming');
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf Galaxy', 900.50, 555, 'burning');
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', 343.00, 221, 'bright');
INSERT INTO public.galaxy VALUES (4, 'Maffei', 788.00, 324, 'dark');
INSERT INTO public.galaxy VALUES (5, 'Magellanic Clouds', 874.00, 234, 'solid');
INSERT INTO public.galaxy VALUES (6, 'Milky Way Galaxy', 565.00, 234, 'solar');
INSERT INTO public.galaxy VALUES (7, 'Virgo A', 434.00, 264, 'terrestial');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ivion', 32.50, 82, 'hydrogen', 1, false, 114.00);
INSERT INTO public.moon VALUES (2, 'Tahiri', 43.00, 90, 'ferrum', 1, false, 132.50);
INSERT INTO public.moon VALUES (3, 'Uter', 46.50, 83, 'sodium', 2, false, 129.50);
INSERT INTO public.moon VALUES (4, 'Amides', 31.00, 83, 'magnezium', 2, false, 114.00);
INSERT INTO public.moon VALUES (5, 'Hion', 28.00, 100, 'ferro-hydro', 3, false, 128.00);
INSERT INTO public.moon VALUES (6, 'Punus', 37.50, 95, 'aleminum', 3, false, 132.00);
INSERT INTO public.moon VALUES (7, 'Boxora', 50.00, 79, 'hydrogen', 4, false, 128.50);
INSERT INTO public.moon VALUES (8, 'Lenia', 33.00, 95, 'ferrum', 4, false, 128.00);
INSERT INTO public.moon VALUES (9, 'Retreron', 36.00, 82, 'sodium', 5, false, 118.00);
INSERT INTO public.moon VALUES (10, 'Tara', 34.00, 91, 'chromium', 5, false, 124.50);
INSERT INTO public.moon VALUES (11, 'Olillon', 43.00, 84, 'sodium', 6, false, 126.50);
INSERT INTO public.moon VALUES (12, 'Baniri', 48.00, 85, 'copper', 6, false, 132.50);
INSERT INTO public.moon VALUES (13, 'Kilia', 30.00, 94, 'cobalt', 7, false, 124.00);
INSERT INTO public.moon VALUES (14, 'Akeon', 35.50, 96, 'sodium', 7, false, 131.00);
INSERT INTO public.moon VALUES (15, 'Denides', 44.50, 86, 'potasium', 8, false, 130.00);
INSERT INTO public.moon VALUES (16, 'Ucarro', 30.00, 79, 'zinc', 8, false, 109.00);
INSERT INTO public.moon VALUES (17, 'Drilora', 34.50, 79, 'ferrum', 9, false, 113.00);
INSERT INTO public.moon VALUES (18, 'Uruta', 31.00, 90, 'aleminum', 9, false, 121.00);
INSERT INTO public.moon VALUES (19, 'Vyke', 38.00, 82, 'hydrogen', 10, false, 120.00);
INSERT INTO public.moon VALUES (20, 'Ketera', 45.00, 75, 'ferrum', 10, false, 120.00);
INSERT INTO public.moon VALUES (21, 'Eturn', 48.00, 90, 'sodium', 11, false, 138.00);
INSERT INTO public.moon VALUES (22, 'Ahebos', 38.50, 82, 'chromium', 11, false, 120.00);
INSERT INTO public.moon VALUES (23, 'Manolla', 36.50, 78, 'sodium', 12, false, 114.00);
INSERT INTO public.moon VALUES (24, 'Itania', 42.00, 82, 'magnezium', 12, false, 124.00);
INSERT INTO public.moon VALUES (25, 'Nelore', 36.00, 98, 'ferro-hydro', 13, false, 133.50);
INSERT INTO public.moon VALUES (26, 'Cethea', 33.00, 84, 'aleminum', 13, false, 117.00);
INSERT INTO public.moon VALUES (27, 'Athilles', 48.00, 86, 'sodium', 14, false, 134.00);
INSERT INTO public.moon VALUES (28, 'Vekao', 43.50, 99, 'copper', 14, false, 142.50);
INSERT INTO public.moon VALUES (29, 'Gilea', 43.00, 81, 'cobalt', 15, false, 124.00);
INSERT INTO public.moon VALUES (30, 'Meruta', 44.50, 77, 'sodium', 16, false, 121.00);
INSERT INTO public.moon VALUES (31, 'Crounus XI', 36.00, 95, 'magnezium', 17, false, 130.50);
INSERT INTO public.moon VALUES (32, 'Dricarro', 36.00, 77, 'ferro-hydro', 14, false, 112.50);
INSERT INTO public.moon VALUES (33, 'Sanilia', 26.00, 85, 'chromium', 15, false, 111.00);
INSERT INTO public.moon VALUES (34, 'Thelea', 36.00, 91, 'sodium', 16, false, 127.00);
INSERT INTO public.moon VALUES (35, 'Akippe', 49.00, 97, 'copper', 17, false, 146.00);
INSERT INTO public.moon VALUES (36, 'Ogore', 39.50, 83, 'hydrogen', 17, false, 122.00);
INSERT INTO public.moon VALUES (37, 'Gathiolea', 48.50, 91, 'hydrogen', 18, false, 139.50);
INSERT INTO public.moon VALUES (38, 'Xileon', 40.00, 81, 'ferrum', 18, false, 120.50);
INSERT INTO public.moon VALUES (39, 'Tater', 28.00, 90, 'sodium', 19, false, 118.00);
INSERT INTO public.moon VALUES (40, 'Udone IV', 36.50, 77, 'magnezium', 19, false, 113.50);
INSERT INTO public.moon VALUES (41, 'Gevora', 42.50, 92, 'ferro-hydro', 20, false, 134.00);
INSERT INTO public.moon VALUES (42, 'Aziri', 25.00, 77, 'aleminum', 20, false, 101.50);
INSERT INTO public.moon VALUES (43, 'Gnulmoturn', 29.50, 99, 'hydrogen', 21, false, 128.50);
INSERT INTO public.moon VALUES (44, 'Izeon', 31.00, 88, 'ferrum', 21, false, 118.50);
INSERT INTO public.moon VALUES (45, 'Athora', 36.00, 81, 'sodium', 22, false, 116.50);
INSERT INTO public.moon VALUES (46, 'Tutania', 28.50, 90, 'magnezium', 22, false, 118.50);
INSERT INTO public.moon VALUES (47, 'Riagantu', 36.50, 97, 'ferro-hydro', 23, false, 133.50);
INSERT INTO public.moon VALUES (48, 'Esomia', 29.50, 77, 'aleminum', 23, false, 106.50);
INSERT INTO public.moon VALUES (49, 'Ondion', 45.50, 83, 'hydrogen', 24, false, 128.00);
INSERT INTO public.moon VALUES (50, 'Tolatune', 31.00, 76, 'ferrum', 24, false, 107.00);
INSERT INTO public.moon VALUES (51, 'Edyria', 49.50, 100, 'sodium', 25, false, 149.00);
INSERT INTO public.moon VALUES (52, 'Vuruta', 26.00, 88, 'chromium', 25, false, 114.00);
INSERT INTO public.moon VALUES (53, 'Aroria II', 30.50, 79, 'sodium', 26, false, 109.50);
INSERT INTO public.moon VALUES (54, 'Purilia', 28.50, 95, 'copper', 26, false, 123.50);
INSERT INTO public.moon VALUES (55, 'Gatheron', 46.50, 78, 'cobalt', 27, false, 124.00);
INSERT INTO public.moon VALUES (56, 'Magu', 50.00, 100, 'sodium', 27, false, 150.00);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'light year', 1000000, 'ly');
INSERT INTO public.more_info VALUES (2, 'kilometer', 1000, 'km');
INSERT INTO public.more_info VALUES (3, 'kilometer per hour', 100, 'km/h');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 25.50, 81, 'hydrogen', 1, false, true);
INSERT INTO public.planet VALUES (2, 'Venus', 40.50, 94, 'ferrum', 1, false, true);
INSERT INTO public.planet VALUES (3, 'Earth', 27.00, 92, 'sodium', 2, true, false);
INSERT INTO public.planet VALUES (4, 'Mars', 42.00, 93, 'magnezium', 2, false, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 29.50, 98, 'ferro-hydro', 3, false, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 34.00, 79, 'aleminum', 3, false, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 43.00, 79, 'hydrogen', 4, false, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 36.50, 79, 'ferrum', 4, false, true);
INSERT INTO public.planet VALUES (9, 'Ibreon XII', 26.50, 80, 'sodium', 5, false, false);
INSERT INTO public.planet VALUES (10, 'Tulia', 25.50, 80, 'chromium', 5, false, true);
INSERT INTO public.planet VALUES (11, 'Zexade', 26.00, 98, 'sodium', 6, false, true);
INSERT INTO public.planet VALUES (12, 'Iroria 7X', 29.50, 80, 'copper', 6, false, false);
INSERT INTO public.planet VALUES (13, 'Udarvis', 36.50, 75, 'cobalt', 7, false, false);
INSERT INTO public.planet VALUES (14, 'Droutera 4IX', 40.50, 99, 'sodium', 7, false, false);
INSERT INTO public.planet VALUES (15, 'Igolla W8', 48.50, 90, 'potasium', 8, false, false);
INSERT INTO public.planet VALUES (16, 'Estrade', 47.50, 93, 'zinc', 8, false, true);
INSERT INTO public.planet VALUES (17, 'Drehiri', 36.00, 77, 'ferrum', 9, false, false);
INSERT INTO public.planet VALUES (18, 'Cothorix', 40.50, 89, 'aleminum', 9, false, false);
INSERT INTO public.planet VALUES (19, 'Xelarvis', 45.50, 99, 'hydrogen', 10, false, false);
INSERT INTO public.planet VALUES (20, 'Druinov', 46.50, 98, 'ferrum', 10, false, false);
INSERT INTO public.planet VALUES (21, 'Denkerth', 29.50, 99, 'sodium', 11, false, true);
INSERT INTO public.planet VALUES (22, 'Rion', 38.00, 99, 'chromium', 11, false, false);
INSERT INTO public.planet VALUES (23, 'Merth', 34.00, 78, 'sodium', 12, false, false);
INSERT INTO public.planet VALUES (24, 'Leron', 40.50, 85, 'magnezium', 12, false, false);
INSERT INTO public.planet VALUES (25, 'Xochilia VS', 38.00, 95, 'ferro-hydro', 13, false, false);
INSERT INTO public.planet VALUES (26, 'Iketer', 41.50, 97, 'aleminum', 13, false, true);
INSERT INTO public.planet VALUES (27, 'Brolnaistea 2OA', 31.50, 88, 'sodium', 14, false, false);
INSERT INTO public.planet VALUES (28, 'Nesippe', 47.50, 98, 'copper', 14, false, false);
INSERT INTO public.planet VALUES (29, 'Ikadus', 40.50, 91, 'cobalt', 15, false, false);
INSERT INTO public.planet VALUES (30, 'Kuriuq', 34.50, 95, 'sodium', 16, false, false);
INSERT INTO public.planet VALUES (31, 'Gephahines X', 45.50, 83, 'magnezium', 17, false, false);
INSERT INTO public.planet VALUES (32, 'Davinda', 46.50, 98, 'ferro-hydro', 14, false, false);
INSERT INTO public.planet VALUES (33, 'Zaphus', 36.50, 91, 'chromium', 15, false, false);
INSERT INTO public.planet VALUES (34, 'Lonadus R2', 37.00, 82, 'sodium', 16, false, false);
INSERT INTO public.planet VALUES (35, 'Uchilles', 43.00, 84, 'copper', 5, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 52.00, 189, 'hydrogen', 1);
INSERT INTO public.star VALUES (2, 'Mirach', 72.00, 198, 'ferrum', 1);
INSERT INTO public.star VALUES (3, 'Almach', 72.00, 181, 'sodium', 1);
INSERT INTO public.star VALUES (4, 'NGC 1851', 94.00, 187, 'magnezium', 2);
INSERT INTO public.star VALUES (5, 'NGC 1904', 76.00, 180, 'ferro-hydro', 2);
INSERT INTO public.star VALUES (6, 'NGC 2298', 60.00, 160, 'aleminum', 2);
INSERT INTO public.star VALUES (7, 'Albireo', 69.00, 153, 'hydrogen', 3);
INSERT INTO public.star VALUES (8, 'Aljanah', 61.00, 174, 'ferrum', 3);
INSERT INTO public.star VALUES (9, 'Azelfafage', 90.00, 189, 'sodium', 3);
INSERT INTO public.star VALUES (10, 'Sirius', 77.00, 169, 'chromium', 4);
INSERT INTO public.star VALUES (11, 'Canopus', 82.00, 179, 'sodium', 4);
INSERT INTO public.star VALUES (12, 'Arcturus', 64.00, 160, 'copper', 4);
INSERT INTO public.star VALUES (13, 'Alpha Centauri A', 56.00, 190, 'cobalt', 5);
INSERT INTO public.star VALUES (14, 'Vega', 96.00, 155, 'sodium', 5);
INSERT INTO public.star VALUES (15, 'Rigel', 72.00, 156, 'potasium', 5);
INSERT INTO public.star VALUES (16, 'Procyon', 76.00, 175, 'zinc', 6);
INSERT INTO public.star VALUES (17, 'Achernar', 100.00, 175, 'ferrum', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 56, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 35, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 17, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

