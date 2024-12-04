--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    radius integer,
    distance numeric(3,1)
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    radius integer,
    distance numeric(3,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    radius integer,
    distance numeric(3,1),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    radius integer,
    distance numeric(3,1),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    radius integer,
    distance numeric(3,1),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'black_hole_1', 'black hole 1', true, true, 8000, 10, 0.0);
INSERT INTO public.black_hole VALUES (2, 'black_hole_2', 'black hole 2', true, true, 12000, 10, 0.0);
INSERT INTO public.black_hole VALUES (3, 'black_hole_3', 'black hole 3', true, true, 120000, 10, 0.0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 'galaxy 1', true, false, 1000, 1000, 0.0);
INSERT INTO public.galaxy VALUES (3, 'galaxy2', 'galaxy 2', true, false, 2000, 1000, 0.0);
INSERT INTO public.galaxy VALUES (4, 'galaxy3', 'galaxy 3', true, false, 3000, 1000, 0.0);
INSERT INTO public.galaxy VALUES (5, 'galaxy4', 'galaxy 4', true, false, 4000, 1000, 0.0);
INSERT INTO public.galaxy VALUES (6, 'galaxy5', 'galaxy 5', true, false, 5000, 1000, 0.0);
INSERT INTO public.galaxy VALUES (7, 'galaxy6', 'galaxy 6', true, false, 6000, 1000, 0.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'moon 1', false, true, 1, 10, 0.0, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 'moon 2', false, true, 2, 10, 0.0, 3);
INSERT INTO public.moon VALUES (3, 'moon3', 'moon 3', false, true, 3, 10, 0.0, 5);
INSERT INTO public.moon VALUES (4, 'moon4', 'moon 4', false, true, 4, 10, 0.0, 6);
INSERT INTO public.moon VALUES (5, 'moon5', 'moon 5', false, true, 5, 10, 0.0, 7);
INSERT INTO public.moon VALUES (6, 'moon6', 'moon 6', false, true, 6, 10, 0.0, 8);
INSERT INTO public.moon VALUES (7, 'moon7', 'moon 7', false, true, 7, 10, 0.0, 9);
INSERT INTO public.moon VALUES (8, 'moon8', 'moon 8', false, true, 8, 10, 0.0, 10);
INSERT INTO public.moon VALUES (9, 'moon9', 'moon 9', false, true, 9, 10, 0.0, 11);
INSERT INTO public.moon VALUES (10, 'moon10', 'moon 10', false, true, 10, 10, 0.0, 12);
INSERT INTO public.moon VALUES (12, 'moon11', 'moon 11', false, true, 11, 10, 0.0, 13);
INSERT INTO public.moon VALUES (13, 'moon12', 'moon 12', false, true, 12, 10, 0.0, 14);
INSERT INTO public.moon VALUES (14, 'moon13', 'moon 13', false, true, 13, 10, 0.0, 14);
INSERT INTO public.moon VALUES (15, 'moon14', 'moon 14', false, true, 14, 10, 0.0, 14);
INSERT INTO public.moon VALUES (16, 'moon15', 'moon 15', false, true, 15, 10, 0.0, 14);
INSERT INTO public.moon VALUES (17, 'moon16', 'moon 16', false, true, 16, 10, 0.0, 14);
INSERT INTO public.moon VALUES (18, 'moon17', 'moon 17', false, true, 17, 10, 0.0, 14);
INSERT INTO public.moon VALUES (19, 'moon18', 'moon 18', false, true, 18, 10, 0.0, 14);
INSERT INTO public.moon VALUES (20, 'moon19', 'moon 19', false, true, 19, 10, 0.0, 14);
INSERT INTO public.moon VALUES (21, 'moon20', 'moon 20', false, true, 20, 10, 0.0, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'planet2', 'planet 2', false, true, 2, 10, 0.0, 1);
INSERT INTO public.planet VALUES (1, 'planet1', 'planet 1', false, true, 1, 10, 0.0, 1);
INSERT INTO public.planet VALUES (5, 'planet3', 'planet 3', false, true, 3, 10, 0.0, 4);
INSERT INTO public.planet VALUES (6, 'planet4', 'planet 4', false, true, 4, 10, 0.0, 4);
INSERT INTO public.planet VALUES (7, 'planet5', 'planet 5', false, true, 5, 10, 0.0, 5);
INSERT INTO public.planet VALUES (8, 'planet6', 'planet 6', false, true, 6, 10, 0.0, 5);
INSERT INTO public.planet VALUES (9, 'planet7', 'planet 7', false, true, 7, 10, 0.0, 6);
INSERT INTO public.planet VALUES (10, 'planet8', 'planet 8', false, true, 8, 10, 0.0, 6);
INSERT INTO public.planet VALUES (11, 'planet9', 'planet 9', false, true, 9, 10, 0.0, 7);
INSERT INTO public.planet VALUES (12, 'planet10', 'planet 10', false, true, 10, 10, 0.0, 7);
INSERT INTO public.planet VALUES (13, 'planet11', 'planet 11', false, true, 11, 10, 0.0, 8);
INSERT INTO public.planet VALUES (14, 'planet12', 'planet 12', false, true, 12, 10, 0.0, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'star 1', true, false, 1000, 1000, 0.0, 1);
INSERT INTO public.star VALUES (4, 'star2', 'star 2', false, true, 2000, 1000, 0.0, 3);
INSERT INTO public.star VALUES (5, 'star3', 'star 3', false, true, 3000, 1000, 0.0, 4);
INSERT INTO public.star VALUES (6, 'star4', 'star 4', false, true, 4000, 1000, 0.0, 5);
INSERT INTO public.star VALUES (7, 'star5', 'star 5', false, true, 5000, 1000, 0.0, 6);
INSERT INTO public.star VALUES (8, 'star6', 'star 6', false, true, 6000, 1000, 0.0, 7);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: black_hole black_hole_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_age_key UNIQUE (age);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_key UNIQUE (age);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_key UNIQUE (age);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
