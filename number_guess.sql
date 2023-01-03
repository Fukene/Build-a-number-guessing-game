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

DROP DATABASE guessing_game;
--
-- Name: guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE guessing_game OWNER TO freecodecamp;

\connect guessing_game

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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    username character varying(22),
    games_played integer
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES ('user_1672709972611', 0);
INSERT INTO public.players VALUES ('user_1672709972610', 0);
INSERT INTO public.players VALUES ('user_1672710016973', 0);
INSERT INTO public.players VALUES ('user_1672710016972', 0);
INSERT INTO public.players VALUES ('user_1672710346358', 0);
INSERT INTO public.players VALUES ('user_1672710346357', 0);
INSERT INTO public.players VALUES ('user_1672711543166', 0);
INSERT INTO public.players VALUES ('user_1672711543165', 0);
INSERT INTO public.players VALUES ('user_1672711636945', 0);
INSERT INTO public.players VALUES ('user_1672711636944', 0);
INSERT INTO public.players VALUES ('user_1672712000783', 0);
INSERT INTO public.players VALUES ('user_1672712000782', 0);
INSERT INTO public.players VALUES ('user_1672712275698', 0);
INSERT INTO public.players VALUES ('user_1672712275697', 0);
INSERT INTO public.players VALUES ('user_1672713708475', 0);
INSERT INTO public.players VALUES ('user_1672713708474', 0);
INSERT INTO public.players VALUES ('user_1672713812442', 0);
INSERT INTO public.players VALUES ('user_1672713812441', 0);
INSERT INTO public.players VALUES ('user_1672715144623', 0);
INSERT INTO public.players VALUES ('user_1672715144622', 0);
INSERT INTO public.players VALUES ('Ela', 0);
INSERT INTO public.players VALUES ('user_1672715685844', 0);
INSERT INTO public.players VALUES ('user_1672715685843', 0);
INSERT INTO public.players VALUES ('45', 0);
INSERT INTO public.players VALUES ('user_1672716569555', 0);
INSERT INTO public.players VALUES ('user_1672716569554', 0);
INSERT INTO public.players VALUES ('user_1672716763646', 0);
INSERT INTO public.players VALUES ('user_1672716763645', 0);
INSERT INTO public.players VALUES ('user_1672717374464', 0);
INSERT INTO public.players VALUES ('user_1672717374463', 0);
INSERT INTO public.players VALUES ('user_1672717423460', 0);
INSERT INTO public.players VALUES ('user_1672717423459', 0);
INSERT INTO public.players VALUES ('user_1672717844700', 0);
INSERT INTO public.players VALUES ('user_1672717844699', 0);
INSERT INTO public.players VALUES ('user_1672719013205', NULL);
INSERT INTO public.players VALUES ('user_1672718370767', 2);
INSERT INTO public.players VALUES ('user_1672718370769', 5);
INSERT INTO public.players VALUES ('user_1672719013206', NULL);
INSERT INTO public.players VALUES ('user_1672718542768', 2);
INSERT INTO public.players VALUES ('user_1672718542769', 5);
INSERT INTO public.players VALUES ('user_1672719037818', NULL);
INSERT INTO public.players VALUES ('user_1672719037819', NULL);
INSERT INTO public.players VALUES ('user_1672718630303', 2);
INSERT INTO public.players VALUES ('DAvid', NULL);
INSERT INTO public.players VALUES ('David', 1);
INSERT INTO public.players VALUES ('user_1672719859132', NULL);
INSERT INTO public.players VALUES ('user_1672719859131', NULL);
INSERT INTO public.players VALUES ('user_1672718630304', 5);
INSERT INTO public.players VALUES ('user_1672720138514', NULL);
INSERT INTO public.players VALUES ('user_1672720138514', 865);
INSERT INTO public.players VALUES ('user_1672720138514', 483);
INSERT INTO public.players VALUES ('user_1672720138513', NULL);
INSERT INTO public.players VALUES ('user_1672720138513', 974);
INSERT INTO public.players VALUES ('user_1672718637170', 2);
INSERT INTO public.players VALUES ('user_1672720138513', 963);
INSERT INTO public.players VALUES ('user_1672720138514', 968);
INSERT INTO public.players VALUES ('user_1672720138514', 817);
INSERT INTO public.players VALUES ('user_1672720138514', 591);
INSERT INTO public.players VALUES ('David', 1);
INSERT INTO public.players VALUES ('user_1672718637171', 5);
INSERT INTO public.players VALUES ('David', 1);
INSERT INTO public.players VALUES ('Popito', NULL);
INSERT INTO public.players VALUES ('David', 5);
INSERT INTO public.players VALUES ('Popito', 9);
INSERT INTO public.players VALUES ('bacalao', NULL);
INSERT INTO public.players VALUES ('bacalao', 8);
INSERT INTO public.players VALUES ('user_1672718850622', 2);
INSERT INTO public.players VALUES ('user_1672720403678', 574);
INSERT INTO public.players VALUES ('user_1672720403678', 99);
INSERT INTO public.players VALUES ('user_1672718850623', 5);
INSERT INTO public.players VALUES ('user_1672720403677', 921);
INSERT INTO public.players VALUES ('user_1672720403677', 638);
INSERT INTO public.players VALUES ('user_1672720403678', 423);
INSERT INTO public.players VALUES ('user_1672718924137', NULL);
INSERT INTO public.players VALUES ('user_1672720403678', 680);
INSERT INTO public.players VALUES ('user_1672720403678', 715);
INSERT INTO public.players VALUES ('user_1672718924138', NULL);
INSERT INTO public.players VALUES ('user_1672720431201', 128);
INSERT INTO public.players VALUES ('user_1672720431201', 830);
INSERT INTO public.players VALUES ('user_1672720431200', 241);
INSERT INTO public.players VALUES ('user_1672720431200', 845);
INSERT INTO public.players VALUES ('user_1672720431201', 42);
INSERT INTO public.players VALUES ('user_1672720431201', 655);
INSERT INTO public.players VALUES ('user_1672720431201', 477);
INSERT INTO public.players VALUES ('user_1672720490599', 677);
INSERT INTO public.players VALUES ('user_1672720490599', 804);
INSERT INTO public.players VALUES ('user_1672720490598', 940);
INSERT INTO public.players VALUES ('user_1672720490598', 365);
INSERT INTO public.players VALUES ('user_1672720490599', 325);
INSERT INTO public.players VALUES ('user_1672720490599', 812);
INSERT INTO public.players VALUES ('user_1672720490599', 165);


--
-- PostgreSQL database dump complete
--

