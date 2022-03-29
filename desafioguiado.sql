CREATE DATABASE posts;

CREATE TABLE posts(id VARCHAR(25), nombre_usuario
VARCHAR(25), fecha_de_creacion DATE, contenido VARCHAR(255), descripcion
VARCHAR (25), PRIMARY KEY (id) );

-- Definimos qué tabla vamos a insertar datos
INSERT INTO posts
-- Explicitamos cuáles son las columnas a insertar
(id, nombre_usuario, fecha_de_creacion, contenido, descripcion)
-- Con la instrucción VALUES logramos asociada cada columna con un valor específico
VALUES ('1', 'Pamela', '2022-03-28' , 'Clases', 'Horario salida');

-- Definimos qué tabla vamos a insertar datos
INSERT INTO posts
-- Explicitamos cuáles son las columnas a insertar
(id, nombre_usuario, fecha_de_creacion, contenido, descripcion)
-- Con la instrucción VALUES logramos asociada cada columna con un valor específico
VALUES ('2', 'Pamela', '2022-03-28' , 'Clases', 'Pruebas');

-- Definimos qué tabla vamos a insertar datos
INSERT INTO posts
-- Explicitamos cuáles son las columnas a insertar
(id, nombre_usuario, fecha_de_creacion, contenido, descripcion)
-- Con la instrucción VALUES logramos asociada cada columna con un valor específico
VALUES ('3', 'Carlos', '2022-03-28' , 'Clases', 'Ayudantias');

ALTER TABLE posts
ADD titulo VARCHAR(255)

UPDATE posts
SET titulo = 'Jornada Diurna'
WHERE id = '1';

UPDATE posts
SET titulo = 'Jornada Diurna'
WHERE id = '2';

UPDATE posts
SET titulo = 'Jornada Diurna y Vespertina'
WHERE id = '3';

-- Definimos qué tabla vamos a insertar datos
INSERT INTO posts
-- Explicitamos cuáles son las columnas a insertar
(id, nombre_usuario, fecha_de_creacion, contenido, descripcion, titulo)
-- Con la instrucción VALUES logramos asociada cada columna con un valor específico
VALUES ('4', 'Pedro', '2022-03-28' , 'Clases', 'Notas','jornada diurna');

-- Definimos qué tabla vamos a insertar datos
INSERT INTO posts
-- Explicitamos cuáles son las columnas a insertar
(id, nombre_usuario, fecha_de_creacion, contenido, descripcion, titulo)
-- Con la instrucción VALUES logramos asociada cada columna con un valor específico
VALUES ('5', 'Pedro', '2022-03-28' , 'Clases', 'Notas', 'jornada vespertina');

 DELETE FROM posts WHERE nombre_usuario='Carlos';

-- Definimos qué tabla vamos a insertar datos
INSERT INTO posts
-- Explicitamos cuáles son las columnas a insertar
(id, nombre_usuario, fecha_de_creacion, contenido, descripcion, titulo)
-- Con la instrucción VALUES logramos asociada cada columna con un valor específico
VALUES ('6', 'Carlos', '2022-03-28' , 'Clases', 'Trabajos', 'jornada diurna');

--Parte 2
-- Creamos una tabla con el nombre comentarios
CREATE TABLE comentarios(
-- Definimos el campo id con el tipo de dato cadena con un largo de 25 caracteres
id VARCHAR(25),
-- Definimos el campo fecha
fecha DATE,
-- Definimos el campo hora_de_creacion
hora_de_creacion TIME,
-- Definimos el campo contenido
contenido VARCHAR(255),
-- Vinculamos una clave foránea entre nuestra columna id y su símil en la tabla posts
FOREIGN KEY (id) REFERENCES posts(id));
