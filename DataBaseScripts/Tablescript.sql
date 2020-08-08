-- Table: public.t_developers

-- DROP TABLE public.t_developers;

CREATE TABLE public.t_developers
(
    id character varying(100) COLLATE pg_catalog."default" NOT NULL,
    password character varying COLLATE pg_catalog."default",
    name character varying(150) COLLATE pg_catalog."default",
    CONSTRAINT t_developers_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.t_developers
    OWNER to postgres;
	
	

-- Table: public.t_bugs

-- DROP TABLE public.t_bugs;

CREATE TABLE public.t_bugs
(
    idbug integer NOT NULL DEFAULT nextval('t_bugs_idbug_seq'::regclass),
    description text COLLATE pg_catalog."default",
    projectname character varying(150) COLLATE pg_catalog."default",
    developeruserid character varying COLLATE pg_catalog."default",
    CONSTRAINT t_bugs_pkey PRIMARY KEY (idbug)
)

TABLESPACE pg_default;

ALTER TABLE public.t_bugs
    OWNER to postgres;
	


-- Table: public.t_projects

-- DROP TABLE public.t_projects;

CREATE TABLE public.t_projects
(
    uniquename character varying(150) COLLATE pg_catalog."default" NOT NULL,
    developeruserid integer,
    description text COLLATE pg_catalog."default",
    CONSTRAINT t_projects_pkey PRIMARY KEY (uniquename)
)

TABLESPACE pg_default;

ALTER TABLE public.t_projects
    OWNER to postgres;

COMMENT ON COLUMN public.t_projects.developeruserid
    IS 'lead developer';