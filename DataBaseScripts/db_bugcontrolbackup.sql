--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md527b81bbc22a570e07f68db8bad14ce2e';






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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

--
-- PostgreSQL database dump complete
--

--
-- Database "db_bugcontrol" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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

--
-- Name: db_bugcontrol; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE db_bugcontrol WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Dominican Republic.1252' LC_CTYPE = 'Spanish_Dominican Republic.1252';


ALTER DATABASE db_bugcontrol OWNER TO postgres;

\connect db_bugcontrol

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
-- Name: t_bugs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_bugs (
    idbug integer NOT NULL,
    description text,
    projectname character varying(150),
    developeruserid character varying
);


ALTER TABLE public.t_bugs OWNER TO postgres;

--
-- Name: t_bugs_idbug_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t_bugs_idbug_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_bugs_idbug_seq OWNER TO postgres;

--
-- Name: t_bugs_idbug_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t_bugs_idbug_seq OWNED BY public.t_bugs.idbug;


--
-- Name: t_developers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_developers (
    id character varying(100) NOT NULL,
    password character varying,
    name character varying(150)
);


ALTER TABLE public.t_developers OWNER TO postgres;

--
-- Name: t_projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_projects (
    uniquename character varying(150) NOT NULL,
    developeruserid integer,
    description text
);


ALTER TABLE public.t_projects OWNER TO postgres;

--
-- Name: COLUMN t_projects.developeruserid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.t_projects.developeruserid IS 'lead developer';


--
-- Name: t_bugs idbug; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_bugs ALTER COLUMN idbug SET DEFAULT nextval('public.t_bugs_idbug_seq'::regclass);


--
-- Data for Name: t_bugs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_bugs (idbug, description, projectname, developeruserid) FROM stdin;
\.


--
-- Data for Name: t_developers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_developers (id, password, name) FROM stdin;
\.


--
-- Data for Name: t_projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_projects (uniquename, developeruserid, description) FROM stdin;
\.


--
-- Name: t_bugs_idbug_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t_bugs_idbug_seq', 1, false);


--
-- Name: t_bugs t_bugs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_bugs
    ADD CONSTRAINT t_bugs_pkey PRIMARY KEY (idbug);


--
-- Name: t_developers t_developers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_developers
    ADD CONSTRAINT t_developers_pkey PRIMARY KEY (id);


--
-- Name: t_projects t_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_projects
    ADD CONSTRAINT t_projects_pkey PRIMARY KEY (uniquename);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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

--
-- Name: pgagent; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgagent;


ALTER SCHEMA pgagent OWNER TO postgres;

--
-- Name: SCHEMA pgagent; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA pgagent IS 'pgAgent system tables';


--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


--
-- Name: pgagent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgagent WITH SCHEMA pgagent;


--
-- Name: EXTENSION pgagent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgagent IS 'A PostgreSQL job scheduler';


--
-- Data for Name: pga_jobagent; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobagent (jagpid, jaglogintime, jagstation) FROM stdin;
\.


--
-- Data for Name: pga_jobclass; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobclass (jclid, jclname) FROM stdin;
\.


--
-- Data for Name: pga_job; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_job (jobid, jobjclid, jobname, jobdesc, jobhostagent, jobenabled, jobcreated, jobchanged, jobagentid, jobnextrun, joblastrun) FROM stdin;
\.


--
-- Data for Name: pga_schedule; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_schedule (jscid, jscjobid, jscname, jscdesc, jscenabled, jscstart, jscend, jscminutes, jschours, jscweekdays, jscmonthdays, jscmonths) FROM stdin;
\.


--
-- Data for Name: pga_exception; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_exception (jexid, jexscid, jexdate, jextime) FROM stdin;
\.


--
-- Data for Name: pga_joblog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_joblog (jlgid, jlgjobid, jlgstatus, jlgstart, jlgduration) FROM stdin;
\.


--
-- Data for Name: pga_jobstep; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobstep (jstid, jstjobid, jstname, jstdesc, jstenabled, jstkind, jstcode, jstconnstr, jstdbname, jstonerror, jscnextrun) FROM stdin;
\.


--
-- Data for Name: pga_jobsteplog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobsteplog (jslid, jsljlgid, jsljstid, jslstatus, jslresult, jslstart, jslduration, jsloutput) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

