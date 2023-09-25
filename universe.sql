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
    name character varying(30) UNIQUE NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types character varying(30),
    description character varying(60),
    has_life boolean
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
    planet_id integer NOT NULL,
    name character varying(30) UNIQUE NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean,
    has_life boolean
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
    star_id integer NOT NULL,
    name character varying(30) UNIQUE NOT NULL,
    age_in_millions_of_years integer,
    planet_types character varying(30),
    is_spherical boolean,
    has_life boolean
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
    galaxy_id integer NOT NULL,
    name character varying(30) UNIQUE NOT NULL,
    age_in_millions_of_years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_planets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_planets (
    star_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.star_planets OWNER TO freecodecamp;

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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Pinwheel', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, '1', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 1, '2', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 1, '3', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 1, '4', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 1, '5', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 1, '6', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 1, '7', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 1, '8', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 1, '9', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 2, '10', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 2, '11', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 2, '12', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 2, '13', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 2, '14', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 2, '15', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 2, '16', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 2, '17', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 2, '18', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 2, '19', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 2, '20', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 1, 'Venus', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 1, 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 1, 'Mars', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 1, 'Pluto', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 2, 'Cyrax', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 2, 'Zollin', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 2, 'Rimon', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 2, 'Hefwine', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', NULL);
INSERT INTO public.star VALUES (2, 1, 'Sirius', NULL);
INSERT INTO public.star VALUES (3, 1, 'Rigel', NULL);
INSERT INTO public.star VALUES (4, 1, 'Betelgeuse', NULL);
INSERT INTO public.star VALUES (5, 1, 'Vega', NULL);
INSERT INTO public.star VALUES (6, 1, 'Capella', NULL);


--
-- Data for Name: star_planets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_planets VALUES (1, 1);
INSERT INTO public.star_planets VALUES (2, 2);
INSERT INTO public.star_planets VALUES (3, 3);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- Name: star_planets star_planets_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planets
    ADD CONSTRAINT star_planets_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star_planets star_planets_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planets
    ADD CONSTRAINT star_planets_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

