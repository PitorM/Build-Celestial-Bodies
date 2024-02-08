--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
-- Name: constelation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelation (
    constelation_id integer NOT NULL,
    age integer,
    name character varying(40) NOT NULL,
    motion boolean,
    has_life boolean,
    int_1 integer,
    int_2 integer,
    num_1 numeric,
    galaxy_id integer
);


ALTER TABLE public.constelation OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constelation_constelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelation_constelation_id_seq OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constelation_constelation_id_seq OWNED BY public.constelation.constelation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer,
    motion boolean,
    has_life boolean,
    int_1 integer,
    int_2 integer,
    num_1 numeric
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
    name character varying(40) NOT NULL,
    age integer,
    motion boolean,
    has_life boolean,
    planet_id integer,
    int_1 integer,
    int_2 integer,
    num_1 numeric
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer,
    motion boolean,
    has_life boolean,
    star_id integer,
    int_1 integer,
    int_2 integer,
    num_1 numeric
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
    name character varying(40) NOT NULL,
    age integer,
    motion boolean,
    has_life boolean,
    galaxy_id integer,
    solar_sys_name text,
    int_1 integer,
    int_2 integer,
    num_1 numeric
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
-- Name: constelation constelation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation ALTER COLUMN constelation_id SET DEFAULT nextval('public.constelation_constelation_id_seq'::regclass);


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
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelation VALUES (1, NULL, 'Constelation 1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.constelation VALUES (2, NULL, 'Constelation 2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.constelation VALUES (3, NULL, 'Constelation 3', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy one', 1, true, NULL, 1, 1, 1.1);
INSERT INTO public.galaxy VALUES (2, 'Galaxy two', 2, false, NULL, 2, 2, 2.2);
INSERT INTO public.galaxy VALUES (3, 'Galaxy three', 3, true, NULL, 3, 3, 3.3);
INSERT INTO public.galaxy VALUES (4, 'Galaxy four', 4, false, NULL, 4, 4, 4.4);
INSERT INTO public.galaxy VALUES (5, 'Galaxy five', 5, true, NULL, 5, 5, 5.5);
INSERT INTO public.galaxy VALUES (6, 'Galaxy six', 6, false, NULL, 6, 6, 6.6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Deimos ', 5, true, true, 1, 2, 2, 2.2);
INSERT INTO public.moon VALUES (2, 'Phobos ', 3, true, true, 2, 3, 3, 3.3);
INSERT INTO public.moon VALUES (3, 'Amalthea ', 6, true, true, 3, 4, 4, 4.4);
INSERT INTO public.moon VALUES (4, 'Callisto ', 3, false, false, 4, 5, 5, 5.5);
INSERT INTO public.moon VALUES (5, 'Europa ', 5, false, false, 5, 6, 6, 6.6);
INSERT INTO public.moon VALUES (6, 'Ganymede ', 1, true, true, 6, 7, 7, 7.7);
INSERT INTO public.moon VALUES (7, 'Io ', 8, true, true, 7, 8, 8, 8.8);
INSERT INTO public.moon VALUES (8, 'Dione ', 5, false, false, 8, 9, 9, 9.9);
INSERT INTO public.moon VALUES (9, 'Enceladus ', 2, false, false, 9, 10, 10, 11);
INSERT INTO public.moon VALUES (10, 'Hyperion ', 4, true, true, 10, 11, 11, 12.1);
INSERT INTO public.moon VALUES (11, 'Iapetus ', 5, true, true, 11, 12, 12, 13.2);
INSERT INTO public.moon VALUES (12, 'Mimas ', 6, true, true, 12, 13, 13, 14.3);
INSERT INTO public.moon VALUES (13, 'Phoebe ', 7, false, false, 13, 14, 14, 15.4);
INSERT INTO public.moon VALUES (14, 'Rhea ', 8, false, false, 14, 15, 15, 16.5);
INSERT INTO public.moon VALUES (15, 'Tethys ', 7, false, false, 15, 16, 16, 17.6);
INSERT INTO public.moon VALUES (16, 'Titan ', 9, false, false, 16, 17, 17, 18.7);
INSERT INTO public.moon VALUES (17, 'Ariel ', 10, true, true, 17, 18, 18, 19.8);
INSERT INTO public.moon VALUES (18, 'Miranda ', 8, true, true, 18, 19, 19, 20.9);
INSERT INTO public.moon VALUES (19, 'Oberon ', 11, false, false, 19, 20, 20, 22);
INSERT INTO public.moon VALUES (20, 'Titania ', 10, true, true, 20, 21, 21, 23.1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Thanrounerth', 5, true, true, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Lozovis', 3, true, true, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Sonnolla', 6, true, true, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Eniri', 3, false, false, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Geulea', 5, false, false, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Yelia', 1, true, true, 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Thuyutune', 8, true, true, 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Lluhucarro', 5, false, false, 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Zars GV', 2, false, false, 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Gnao F63Y', 4, true, true, 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Mars', 5, true, true, 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Mercury', 6, true, true, 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Venus', 7, false, false, 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'Tierra', 8, false, false, 4, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'Marte', 7, false, false, 4, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'Jupiter', 9, false, false, 5, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'saturno', 10, true, true, 5, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'Urano', 8, true, true, 6, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'Neptuno', 11, false, false, 6, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'Pluton', 10, true, true, 6, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun 1', 1, true, true, 1, 'Sun 1', 1, 1, 1.1);
INSERT INTO public.star VALUES (2, 'Sun 2', 2, false, false, 2, 'Sun 2', 2, 2, 2.2);
INSERT INTO public.star VALUES (3, 'Sun 3', 3, true, true, 3, 'Sun 3', 3, 3, 3.3);
INSERT INTO public.star VALUES (4, 'Sun 4', 4, false, false, 4, 'Sun 4', 4, 4, 4.4);
INSERT INTO public.star VALUES (5, 'Sun 5', 5, true, false, 5, 'Sun 5', 5, 5, 5.5);
INSERT INTO public.star VALUES (6, 'Sun 6', 6, true, false, 6, 'Sun 6', 6, 6, 6.6);


--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constelation_constelation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constelation constelation_constelation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_constelation_id_key UNIQUE (constelation_id);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: constelation constelation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

