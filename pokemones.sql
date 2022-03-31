CREATE TABLE IF NOT EXISTS public.pokemones
(
    pokedex integer,
    nombre character varying(10),
    tipo_1 character varying(10),
    tipo_2 character varying(10),
    PRIMARY KEY (pokedex)
);

CREATE TABLE IF NOT EXISTS public.mis_pokemones
(
    pokedex integer,
    fecha_captura date,
    lugar character varying(20),
    huevo boolean,
    peso double precision,
    "estatura " double precision
);

ALTER TABLE IF EXISTS public.mis_pokemones
    ADD FOREIGN KEY (pokedex)
    REFERENCES public.pokemones (pokedex) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;