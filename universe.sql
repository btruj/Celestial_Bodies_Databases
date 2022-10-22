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
    name character varying(30) NOT NULL,
    distance_km numeric,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    age integer,
    num_sum integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    distance_km numeric,
    moon_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    num_sum integer,
    age integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    distance_km numeric,
    planet_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    age integer,
    num_sum integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    distance_km numeric,
    star_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    num_sum integer,
    age integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    name character varying(30) NOT NULL,
    distance_km numeric,
    sun_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    age integer,
    num_sum integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (name, distance_km, hot, life, size_km, description, age, num_sum, galaxy_id) FROM stdin;
galaxy1	1000	t	t	1000	\N	\N	\N	1
galaxy2	1000	t	t	1000	\N	\N	\N	2
galaxy3	1000	f	f	1000	\N	\N	\N	3
galaxy4	1000	t	f	1000	\N	\N	\N	4
galaxy 5	1000	t	f	1000	\N	\N	\N	5
galaxy 6	1000	t	t	1000	\N	\N	\N	6
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (name, distance_km, moon_id, hot, life, size_km, description, num_sum, age) FROM stdin;
moon1	1000	1	t	t	1000	\N	\N	\N
moon2	1000	2	f	t	1000	\N	\N	\N
moon3	1000	3	f	f	1000	\N	\N	\N
moon4	1000	4	t	f	1000	\N	\N	\N
moon5	1000	5	t	t	1000	\N	\N	\N
moon6	1000	6	f	t	1000	\N	\N	\N
moon8	1000	8	f	t	1000	\N	\N	\N
moon9	1000	9	t	t	1000	\N	\N	\N
moon10	1000	10	t	f	1000	\N	\N	\N
moon11	1000	11	f	f	1000	\N	\N	\N
moon12	1000	12	t	f	1000	\N	\N	\N
moon13	1000	13	f	t	1000	\N	\N	\N
moon14	1000	14	t	t	1000	\N	\N	\N
moon15	1000	15	t	f	1000	\N	\N	\N
moon16	1000	16	f	t	1000	\N	\N	\N
moon17	1000	17	t	t	1000	\N	\N	\N
moon18	1000	18	t	f	1000	\N	\N	\N
moon19	1000	19	f	t	1000	\N	\N	\N
moon20	1000	20	t	t	1000	\N	\N	\N
moon 7	1000	7	f	t	1000	\N	\N	\N
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (name, distance_km, planet_id, hot, life, size_km, description, age, num_sum) FROM stdin;
planet1	1000	1	t	f	1000	\N	\N	\N
planet2	1000	2	f	t	1000	\N	\N	\N
planet3	1000	3	t	t	1000	\N	\N	\N
planet4	1000	4	t	f	1000	\N	\N	\N
planet5	1000	5	f	t	1000	\N	\N	\N
planet6	1000	6	t	t	1000	\N	\N	\N
planet7	1000	7	t	f	1000	\N	\N	\N
planet8	1000	8	f	t	1000	\N	\N	\N
planet9	1000	9	t	t	1000	\N	\N	\N
planet10	1000	10	t	f	1000	\N	\N	\N
planet11	1000	11	f	t	1000	\N	\N	\N
planet12	1000	12	t	t	1000	\N	\N	\N
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (name, distance_km, star_id, hot, life, size_km, description, num_sum, age) FROM stdin;
star1	1000	1	t	f	1000	\N	\N	\N
star2	1000	2	f	t	1000	\N	\N	\N
star3	1000	3	t	t	1000	\N	\N	\N
star4	1000	4	t	f	1000	\N	\N	\N
star5	1000	5	f	t	1000	\N	\N	\N
star6	1000	6	t	t	1000	\N	\N	\N
\.


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.sun (name, distance_km, sun_id, hot, life, size_km, description, age, num_sum) FROM stdin;
sun1	1000	1	t	f	1000	\N	\N	\N
sun2	1000	2	f	t	1000	\N	\N	\N
sun3	1000	3	t	t	1000	\N	\N	\N
\.


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
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: moon moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: sun sun_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_id_fkey FOREIGN KEY (sun_id) REFERENCES public.sun(sun_id);


--
-- Name: sun sun_sun_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_sun_id_fkey FOREIGN KEY (sun_id) REFERENCES public.sun(sun_id);


--
-- PostgreSQL database dump complete
--
