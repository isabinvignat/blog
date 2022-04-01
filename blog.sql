--Requerimiento 1
CREATE DATABASE blog;
--Requerimiento 2
CREATE TABLE usuarios (id SERIAL, email VARCHAR(50), PRIMARY KEY (id));
CREATE TABLE post (id SERIAL, usuario_id INT, título VARCHAR(50), fecha DATE, PRIMARY KEY (id), FOREIGN KEY (usuario_id) REFERENCES usuarios (id));
CREATE TABLE comentarios(id SERIAL PRIMARY KEY, usuario_id INT NOT NULL REFERENCES usuarios(id), post_id INT NOT NULL REFERENCES post(id), texto VARCHAR(50) NOT NULL, fecha DATE);
--Requerimiento 3
\copy usuarios FROM 'C:\Users\ibinv\OneDrive\Desktop\blog\usuarios.csv' csv header;
\copy post FROM 'C:\Users\ibinv\OneDrive\Desktop\blog\post.csv' csv header;
\copy comentarios FROM 'C:\Users\ibinv\OneDrive\Desktop\blog\comentarios.csv' csv header;
--Requerimiento 4
SELECT usuarios.email, usuarios.id, post.título
FROM usuarios
JOIN post ON usuarios.id = post.usuario_id
WHERE usuarios.id = '5';

--Requerimiento 5

