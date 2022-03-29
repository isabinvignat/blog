
--1. Creando base de datos y tablas
CREATE DATABASE peliculas

CREATE TABLE IF NOT EXISTS public.peliculas
(
    id_pelicula serial,
    pelicula character varying(100),
    estreno integer,
    director character varying(50),
    PRIMARY KEY (id_pelicula)
);

CREATE TABLE IF NOT EXISTS public.reparto
(
    id_reparto serial,
    nombre_actor character varying(50)
);

ALTER TABLE IF EXISTS public.reparto
    ADD FOREIGN KEY (id_reparto)
    REFERENCES public.peliculas (id_pelicula) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

--2. Carga archivos CSV
\copy peliculas FROM 'C:\Users\ibinv\OneDrive\Desktop\Apoyodesafiotop100\peliculas.csv' csv header;
COPY
\copy reparto FROM 'C:\Users\ibinv\OneDrive\Desktop\Apoyodesafiotop100\reparto.csv' csv;
