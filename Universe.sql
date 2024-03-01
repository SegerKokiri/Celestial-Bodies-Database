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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billion_years numeric(4,2),
    number_of_stars integer,
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
    has_atmosphere boolean NOT NULL,
    planet_id integer,
    terrain character varying(30)
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
-- Name: nebulae; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebulae (
    name character varying(30) NOT NULL,
    nebulae_id integer NOT NULL,
    color character varying(30) NOT NULL,
    galaxy_id integer,
    has_monster boolean
);


ALTER TABLE public.nebulae OWNER TO freecodecamp;

--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebulae_nebulae_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebulae_nebulae_id_seq OWNER TO freecodecamp;

--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebulae_nebulae_id_seq OWNED BY public.nebulae.nebulae_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_moons integer,
    population integer,
    terrain_type text NOT NULL,
    has_life boolean NOT NULL,
    star_id integer
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
    number_of_planets integer,
    temputure_in_celsius integer NOT NULL,
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
-- Name: nebulae nebulae_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae ALTER COLUMN nebulae_id SET DEFAULT nextval('public.nebulae_nebulae_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10.01, 500, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13.61, 400, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Sunflower', 13.28, 440, 'Elliptical');
INSERT INTO public.galaxy VALUES (4, 'Cigar', 12.65, 6740, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 14.34, 345, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 11.56, 2, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Centax-2', false, 1, 'Lava');
INSERT INTO public.moon VALUES (1, 'Centax-1', true, 1, 'Terrestrial');
INSERT INTO public.moon VALUES (3, 'Centax-3', false, 1, 'Ice');
INSERT INTO public.moon VALUES (4, 'Hesperidium', true, 1, 'Rocky');
INSERT INTO public.moon VALUES (5, 'Ohma-Dun', false, 2, 'Ice');
INSERT INTO public.moon VALUES (6, 'Onoam', false, 2, 'Lava');
INSERT INTO public.moon VALUES (7, 'Veruna', true, 2, 'Terrestrial');
INSERT INTO public.moon VALUES (8, 'The Moon', false, 5, 'Rock');
INSERT INTO public.moon VALUES (9, 'Phobos', false, 6, 'Lava');
INSERT INTO public.moon VALUES (10, 'Deimos', false, 6, 'Ice');
INSERT INTO public.moon VALUES (11, 'Io', false, 7, 'Death Gas');
INSERT INTO public.moon VALUES (12, 'Europa', false, 7, 'Ice');
INSERT INTO public.moon VALUES (13, 'Titan', false, 8, 'Ice');
INSERT INTO public.moon VALUES (14, 'Titania', false, 9, 'Ice and Rock');
INSERT INTO public.moon VALUES (15, 'Triton', false, 10, 'Metal');
INSERT INTO public.moon VALUES (16, 'Windflower', true, 11, 'FLowers');
INSERT INTO public.moon VALUES (17, 'Blue', false, 12, 'Poison');
INSERT INTO public.moon VALUES (18, 'Bahamut', false, 14, 'Dreadwyrm');
INSERT INTO public.moon VALUES (19, 'Shiva', true, 14, 'Ice');
INSERT INTO public.moon VALUES (20, 'Ifrit', false, 14, 'Hellfire');


--
-- Data for Name: nebulae; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebulae VALUES ('Mariachi', 1, 'Red and Green', 6, false);
INSERT INTO public.nebulae VALUES ('Kaliida', 2, 'Red', 1, true);
INSERT INTO public.nebulae VALUES ('Typhonic', 3, 'Green', 1, true);
INSERT INTO public.nebulae VALUES ('Omega', 4, 'Yellow-Green', 2, false);
INSERT INTO public.nebulae VALUES ('Gentian', 5, 'Pink and Blue', 3, false);
INSERT INTO public.nebulae VALUES ('Bismarck', 6, 'White and Blue', 5, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Coruscant', 4, 1000000000, 'Ecumenopolis', true, 1);
INSERT INTO public.planet VALUES (2, 'Naboo', 3, 4500000, 'Terrestrial', true, 2);
INSERT INTO public.planet VALUES (3, 'Mercury', 0, 0, 'Terrestrial', false, 3);
INSERT INTO public.planet VALUES (4, 'Venus', 0, 0, 'Rocky', false, 3);
INSERT INTO public.planet VALUES (5, 'Earth', 1, 810000000, 'Terrestrial', true, 3);
INSERT INTO public.planet VALUES (6, 'Mars', 2, 0, 'Terrestrial', false, 3);
INSERT INTO public.planet VALUES (7, 'Jupiter', 95, 0, 'Gas', false, 3);
INSERT INTO public.planet VALUES (8, 'Saturn', 146, 0, 'Gas', false, 3);
INSERT INTO public.planet VALUES (9, 'Uranus', 28, 0, 'Gas', false, 3);
INSERT INTO public.planet VALUES (10, 'Neptune', 16, 0, 'Gas', false, 3);
INSERT INTO public.planet VALUES (11, 'Cherry Blossom', 4, 65000000, 'Terrestrial', true, 4);
INSERT INTO public.planet VALUES (12, 'Rose', 1, 3000000, 'Flowers', true, 4);
INSERT INTO public.planet VALUES (13, 'Zodiark', 0, 100000, 'Hell', true, 5);
INSERT INTO public.planet VALUES (14, 'Hydaelyn', 4, 2300000, 'Terrestrial', true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Coruscant Prime', 1, 3000, 1);
INSERT INTO public.star VALUES (2, 'Naboo Prime', 1, 2800, 1);
INSERT INTO public.star VALUES (3, 'The Sun', 8, 5600, 2);
INSERT INTO public.star VALUES (4, 'Cosmos', 3, 4900, 3);
INSERT INTO public.star VALUES (5, 'Fantasy', 5, 10000, 5);
INSERT INTO public.star VALUES (6, 'Bamzibear', 0, 6000, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebulae_nebulae_id_seq', 6, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: nebulae nebulae_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT nebulae_name_key UNIQUE (name);


--
-- Name: nebulae nebulae_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT nebulae_pkey PRIMARY KEY (nebulae_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: nebulae nebulae_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT nebulae_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

