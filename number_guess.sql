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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    id integer NOT NULL,
    username character varying(22),
    trials integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_int_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_int_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_int_seq OWNER TO freecodecamp;

--
-- Name: games_int_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_int_seq OWNED BY public.games.id;


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_int_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Adam', 12);
INSERT INTO public.games VALUES (2, 'Adam', 7);
INSERT INTO public.games VALUES (3, 'Zbyszek', 1);
INSERT INTO public.games VALUES (4, 'Ala', 12);
INSERT INTO public.games VALUES (5, 'Ala', 5);
INSERT INTO public.games VALUES (6, 'Ala', 6);
INSERT INTO public.games VALUES (7, 'Ala', 2);
INSERT INTO public.games VALUES (8, 'user_1772110915807', 378);
INSERT INTO public.games VALUES (9, 'user_1772110915807', 35);
INSERT INTO public.games VALUES (10, 'user_1772110915806', 984);
INSERT INTO public.games VALUES (11, 'user_1772110915806', 897);
INSERT INTO public.games VALUES (12, 'user_1772110915807', 567);
INSERT INTO public.games VALUES (13, 'user_1772110915807', 649);
INSERT INTO public.games VALUES (14, 'user_1772110915807', 328);
INSERT INTO public.games VALUES (15, 'user_1772110958150', 144);
INSERT INTO public.games VALUES (16, 'user_1772110958150', 946);
INSERT INTO public.games VALUES (17, 'user_1772110958149', 366);
INSERT INTO public.games VALUES (18, 'user_1772110958149', 501);
INSERT INTO public.games VALUES (19, 'user_1772110958150', 123);
INSERT INTO public.games VALUES (20, 'user_1772110958150', 619);
INSERT INTO public.games VALUES (21, 'user_1772110958150', 597);
INSERT INTO public.games VALUES (22, 'user_1772111037566', 858);
INSERT INTO public.games VALUES (23, 'user_1772111037566', 252);
INSERT INTO public.games VALUES (24, 'user_1772111037565', 626);
INSERT INTO public.games VALUES (25, 'user_1772111037565', 311);
INSERT INTO public.games VALUES (26, 'user_1772111037566', 180);
INSERT INTO public.games VALUES (27, 'user_1772111037566', 215);
INSERT INTO public.games VALUES (28, 'user_1772111037566', 553);
INSERT INTO public.games VALUES (29, 'user_1772111054066', 314);
INSERT INTO public.games VALUES (30, 'user_1772111054066', 282);
INSERT INTO public.games VALUES (31, 'user_1772111054065', 448);
INSERT INTO public.games VALUES (32, 'user_1772111054065', 943);
INSERT INTO public.games VALUES (33, 'user_1772111054066', 762);
INSERT INTO public.games VALUES (34, 'user_1772111054066', 185);
INSERT INTO public.games VALUES (35, 'user_1772111054066', 229);
INSERT INTO public.games VALUES (36, 'user_1772111112770', 753);
INSERT INTO public.games VALUES (37, 'user_1772111112770', 964);
INSERT INTO public.games VALUES (38, 'user_1772111112769', 738);
INSERT INTO public.games VALUES (39, 'user_1772111112769', 936);
INSERT INTO public.games VALUES (40, 'user_1772111112770', 721);
INSERT INTO public.games VALUES (41, 'user_1772111112770', 808);
INSERT INTO public.games VALUES (42, 'user_1772111112770', 762);
INSERT INTO public.games VALUES (43, 'user_1772111151378', 410);
INSERT INTO public.games VALUES (44, 'user_1772111151378', 506);
INSERT INTO public.games VALUES (45, 'user_1772111151377', 441);
INSERT INTO public.games VALUES (46, 'user_1772111151377', 211);
INSERT INTO public.games VALUES (47, 'user_1772111151378', 388);
INSERT INTO public.games VALUES (48, 'user_1772111151378', 682);
INSERT INTO public.games VALUES (49, 'user_1772111151378', 241);
INSERT INTO public.games VALUES (50, 'user_1772111185269', 315);
INSERT INTO public.games VALUES (51, 'user_1772111185269', 7);
INSERT INTO public.games VALUES (52, 'user_1772111185268', 385);
INSERT INTO public.games VALUES (53, 'user_1772111185268', 359);
INSERT INTO public.games VALUES (54, 'user_1772111185269', 31);
INSERT INTO public.games VALUES (55, 'user_1772111185269', 741);
INSERT INTO public.games VALUES (56, 'user_1772111185269', 716);


--
-- Name: games_int_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_int_seq', 56, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

