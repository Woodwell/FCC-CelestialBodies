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
    name character varying NOT NULL,
    distance numeric NOT NULL,
    more_id integer,
    description text
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
    name character varying NOT NULL,
    distance numeric NOT NULL,
    planet_id integer NOT NULL,
    unmanned_landing boolean,
    more_id integer,
    visits integer
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
-- Name: more; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more (
    more_id integer NOT NULL,
    link text NOT NULL,
    name character varying
);


ALTER TABLE public.more OWNER TO freecodecamp;

--
-- Name: more_more_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_more_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_more_id_seq OWNER TO freecodecamp;

--
-- Name: more_more_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_more_id_seq OWNED BY public.more.more_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    distance numeric NOT NULL,
    has_rings boolean,
    unmanned_landing boolean,
    star_id integer NOT NULL,
    more_id integer,
    visits integer
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
    name character varying NOT NULL,
    distance numeric NOT NULL,
    galaxy_id integer NOT NULL,
    more_id integer
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
-- Name: more more_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more ALTER COLUMN more_id SET DEFAULT nextval('public.more_more_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (2, 'GN-z11', 1000000, NULL, 'oldest known as of 2016');
INSERT INTO public.galaxy VALUES (3, 'canis major dwarf galaxy', 1000000000000, NULL, 'closest to us');
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1000000000000, 2, 'home sweet home');
INSERT INTO public.galaxy VALUES (4, 'andromeda major', 1, NULL, 'nice');
INSERT INTO public.galaxy VALUES (5, 'andromeda minor', 1, NULL, 'nicer');
INSERT INTO public.galaxy VALUES (6, 'pegasus dwarf', 1, NULL, 'nicest');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 250000, 1, true, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'phobos', 1, 3, true, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'deimos', 1, 3, false, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'J1', 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'J2', 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'J3', 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'J4', 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'J8', 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'J7', 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'J6', 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'J5', 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'J12', 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'J11', 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'J10', 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'J9', 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 's1', 1, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 's2', 1, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 's3', 1, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 's4', 1, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 's5', 1, 6, NULL, NULL, NULL);


--
-- Data for Name: more; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more VALUES (1, 'en.wikipedia.org/wiki/Earth', 'earth article on wikipedia');
INSERT INTO public.more VALUES (2, 'en.wikipedia.org/wiki/Milky_Way', 'milky way article on wikipedia');
INSERT INTO public.more VALUES (3, 'nasa.gov/mission_pages/apollo/apollo11.html', 'nasa moon landing history');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 93000000, NULL, true, 1, 1, NULL);
INSERT INTO public.planet VALUES (2, 'mercury', 1, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'mars', 1, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'venus', 1, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', 1, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'saturn', 1, true, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'neptune', 1, NULL, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'uranus', 1, NULL, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'P1', 3, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'P2', 5, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'P3', 60, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'P4', 100, NULL, NULL, 6, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1000000000, 1, NULL);
INSERT INTO public.star VALUES (2, 'S2', 1, 1, NULL);
INSERT INTO public.star VALUES (3, 'S3', 1, 2, NULL);
INSERT INTO public.star VALUES (4, 's4', 1, 1, NULL);
INSERT INTO public.star VALUES (5, 's5', 1, 3, NULL);
INSERT INTO public.star VALUES (6, 's6', 1, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_more_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_more_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


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
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more more_link_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more
    ADD CONSTRAINT more_link_key UNIQUE (link);


--
-- Name: more more_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more
    ADD CONSTRAINT more_pkey PRIMARY KEY (more_id);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_more_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_more_id_fkey FOREIGN KEY (more_id) REFERENCES public.more(more_id);


--
-- Name: moon has_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT has_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_more_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_more_id_fkey FOREIGN KEY (more_id) REFERENCES public.more(more_id);


--
-- Name: planet planet_more_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_more_id_fkey FOREIGN KEY (more_id) REFERENCES public.more(more_id);


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
-- Name: star star_more_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_more_id_fkey FOREIGN KEY (more_id) REFERENCES public.more(more_id);


--
-- PostgreSQL database dump complete
--


