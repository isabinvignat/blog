
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

--Creando tabla peliculas
CREATE TABLE peliculas(id_pelicula SERIAL, pelicula
VARCHAR(100), estreno INTEGER, director VARCHAR(50), 
PRIMARY KEY (id_pelicula) );

--2. Carga archivos CSV
\copy peliculas FROM 'C:\Users\ibinv\OneDrive\Desktop\Apoyodesafiotop100\peliculas.csv' csv header;
COPY
\copy reparto FROM 'C:\Users\ibinv\OneDrive\Desktop\Apoyodesafiotop100\reparto.csv' csv;

--3. Obtener id de 'Titanic'
SELECT id_pelicula FROM peliculas
peliculas_db-# WHERE pelicula='Titanic';

--4. Lista de actores de 'Titanic'
SELECT FROM reparto where id_reparto='2';

--5. Peliculas de Harrison Ford
SELECT count (id_reparto) FROM reparto WHERE nombre_actor='Harrison Ford';

--6.Peliculas estrenadas entre 1990 y 1999
SELECT * FROM peliculas WHERE estreno BETWEEN 1990 and 1999 ORDER BY peliculas ASC;

--7.Títulos y su longitud
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo FROM peliculas GROUP BY pelicula;

--8.Longitud más grande
# SELECT MAX(LENGTH(pelicula)) FROM peliculas;
