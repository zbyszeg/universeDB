--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(50) NOT NULL,
    size numeric NOT NULL,
    description text,
    age integer,
    number integer,
    isbig boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size numeric NOT NULL,
    description text,
    age integer,
    number integer,
    isbig boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size numeric NOT NULL,
    description text,
    age integer,
    number integer,
    isbig boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: quasar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.quasar (
    quasar_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size numeric NOT NULL,
    description text,
    age integer,
    number integer,
    isbig boolean
);


ALTER TABLE public.quasar OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size numeric NOT NULL,
    description text,
    age integer,
    number integer,
    isbig boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', 1, 'aa', 1, 1, false);
INSERT INTO public.galaxy VALUES (2, 'b', 2, 'bb', 2, 2, false);
INSERT INTO public.galaxy VALUES (3, 'c', 3, 'cc', 3, 3, false);
INSERT INTO public.galaxy VALUES (4, 'd', 4, 'dd', 4, 4, false);
INSERT INTO public.galaxy VALUES (5, 'e', 5, 'ee', 5, 5, true);
INSERT INTO public.galaxy VALUES (6, 'f', 6, 'ff', 6, 6, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 1, 'aa', 1, 1, true, 1);
INSERT INTO public.moon VALUES (2, 'b', 2, 'bb', 2, 2, true, 2);
INSERT INTO public.moon VALUES (3, 'c', 3, 'cc', 3, 3, true, 3);
INSERT INTO public.moon VALUES (4, 'd', 4, 'dd', 4, 4, true, 4);
INSERT INTO public.moon VALUES (5, 'e', 5, 'ee', 5, 5, true, 5);
INSERT INTO public.moon VALUES (6, 'f', 6, 'ff', 6, 6, true, 6);
INSERT INTO public.moon VALUES (7, 'g', 7, 'gg', 7, 7, true, 1);
INSERT INTO public.moon VALUES (8, 'h', 8, 'hh', 8, 8, true, 2);
INSERT INTO public.moon VALUES (9, 'i', 9, 'ii', 9, 9, true, 3);
INSERT INTO public.moon VALUES (10, 'j', 10, 'jj', 10, 10, true, 4);
INSERT INTO public.moon VALUES (11, 'k', 11, 'kk', 11, 11, true, 5);
INSERT INTO public.moon VALUES (12, 'l', 12, 'll', 12, 12, true, 6);
INSERT INTO public.moon VALUES (13, 'm', 13, 'mm', 13, 13, true, 1);
INSERT INTO public.moon VALUES (14, 'n', 14, 'nn', 14, 14, true, 2);
INSERT INTO public.moon VALUES (15, 'o', 15, 'oo', 15, 15, true, 3);
INSERT INTO public.moon VALUES (16, 'p', 16, 'pp', 16, 16, true, 4);
INSERT INTO public.moon VALUES (17, 'q', 17, 'qq', 17, 17, true, 5);
INSERT INTO public.moon VALUES (18, 'r', 18, 'rr', 18, 18, true, 6);
INSERT INTO public.moon VALUES (19, 's', 19, 'ss', 19, 19, true, 1);
INSERT INTO public.moon VALUES (20, 't', 20, 'tt', 20, 20, true, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 1, 'aa', 1, 1, false, 1);
INSERT INTO public.planet VALUES (2, 'b', 2, 'bb', 2, 2, false, 2);
INSERT INTO public.planet VALUES (3, 'c', 3, 'cc', 3, 3, false, 3);
INSERT INTO public.planet VALUES (4, 'd', 4, 'dd', 4, 4, false, 4);
INSERT INTO public.planet VALUES (5, 'e', 5, 'ee', 5, 5, false, 5);
INSERT INTO public.planet VALUES (6, 'f', 6, 'ff', 6, 6, false, 6);
INSERT INTO public.planet VALUES (7, 'g', 7, 'gg', 7, 7, false, 1);
INSERT INTO public.planet VALUES (8, 'h', 8, 'hh', 8, 8, false, 2);
INSERT INTO public.planet VALUES (9, 'i', 9, 'ii', 9, 9, false, 3);
INSERT INTO public.planet VALUES (10, 'j', 10, 'jj', 10, 10, false, 4);
INSERT INTO public.planet VALUES (11, 'k', 11, 'kk', 11, 11, false, 5);
INSERT INTO public.planet VALUES (12, 'l', 12, 'll', 12, 12, false, 6);


--
-- Data for Name: quasar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.quasar VALUES (1, 'a', 1, 'aa', 1, 1, true);
INSERT INTO public.quasar VALUES (2, 'b', 2, 'bb', 2, 2, true);
INSERT INTO public.quasar VALUES (3, 'c', 3, 'cc', 3, 3, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', 1, 'aa', 1, 1, false, 1);
INSERT INTO public.star VALUES (2, 'b', 2, 'bb', 2, 2, false, 2);
INSERT INTO public.star VALUES (3, 'c', 3, 'cc', 3, 3, false, 3);
INSERT INTO public.star VALUES (4, 'd', 4, 'dd', 4, 4, false, 4);
INSERT INTO public.star VALUES (5, 'e', 5, 'ee', 5, 5, true, 5);
INSERT INTO public.star VALUES (6, 'f', 6, 'ff', 6, 6, true, 6);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon number_mun; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT number_mun UNIQUE (number);


--
-- Name: planet number_pun; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT number_pun UNIQUE (number);


--
-- Name: quasar number_qun; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar
    ADD CONSTRAINT number_qun UNIQUE (number);


--
-- Name: star number_sun; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT number_sun UNIQUE (number);


--
-- Name: galaxy number_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT number_un UNIQUE (number);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: quasar quasar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar
    ADD CONSTRAINT quasar_pkey PRIMARY KEY (quasar_id);


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

