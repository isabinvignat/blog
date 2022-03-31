--Requerimiento 1
CREATE DATABASE blog;

--Requerimiento 2
CREATE TABLE usuario (id SERIAL, email VARCHAR(25), PRIMARY KEY (id) );
CREATE TABLE post (id SERIAL, usuario_id VARCHAR(25), titulo TEXT, fecha DATE, PRIMARY KEY (id) );
CREATE TABLE comentario (id SERIAL, usuario_id VARCHAR(25), titulo TEXT, fecha DATE, PRIMARY KEY (id) );

--Requerimiento 3
INSERT INTO usuario (id, email) VALUES ('1', 'usuario01@hotmail.com');
INSERT INTO usuario (id, email) VALUES ('2', 'usuario02@gmail.com');
INSERT INTO usuario (id, email) VALUES ('3', 'usuario03@gmail.com');
INSERT INTO usuario (id, email) VALUES ('4', 'usuario04@hotmail.com');
INSERT INTO usuario (id, email) VALUES ('5', 'usuario05@yahoo.com');
INSERT INTO usuario (id, email) VALUES ('6', 'usuario06@hotmail.com');
INSERT INTO usuario (id, email) VALUES ('7', 'usuario07@yahoo.com');
INSERT INTO usuario (id, email) VALUES ('8', 'usuario08@yahoo.com');
INSERT INTO usuario (id, email) VALUES ('9', 'usuario09@yahoo.com');

INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('1', '1', 'Post 1: Esto es malo','2020-06-29');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('2', '5', 'Post 2: Esto es malo','2020-06-20');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('3', '1', 'Post 3: Esto es excelente','2020-05-30');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('4', '9', 'Post 4: Esto es bueno','2020-05-09');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('5', '7', 'Post 5: Esto es bueno','2020-07-10');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('6', '5', 'Post 6 : Esto es excelente','2020-07-18');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('7', '8', 'Post 7 : Esto es excelente','2020-07-07');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('8', '5', 'Post 8 : Esto es excelente','2020-05-14');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('9', '2', 'Post 9 : Esto es bueno','2020-05-08');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('10', '6', 'Post 10 : Esto es bueno','2020-06-02');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('11', '4', 'Post 11 : Esto es bueno','2020-05-05');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('12', '9', 'Post 12 : Esto es malo','2020-07-23');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('13', '5', 'Post 13 : Esto es excelente','2020-05-30');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('14', '5', 'Post 14 : Esto es excelente','2020-05-01');
INSERT INTO post (id, usuario_id, titulo, fecha) VALUES ('15', '7', 'Post 15 : Esto es malo','2020-06-17');

INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('1', '3', '6','Este es el comentario 1','2020-07-08');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('2', '4', '2','Este es el comentario 2','2020-06-07');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('3', '6', '4','Este es el comentario 3','2020-06-16');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('4', '2', '13','Este es el comentario 4','2020-06-15');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('5', '6', '6','Este es el comentario 5','2020-05-14');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('6', '3', '3','Este es el comentario 6','2020-07-08');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('7', '6', '1','Este es el comentario 7','2020-05-22');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('8', '6', '7','Este es el comentario 8','2020-07-09');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('9', '8', '13','Este es el comentario 9','2020-06-30');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('10', '8', '6','Este es el comentario 10','2020-06-19');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('11', '5', '1','Este es el comentario 11','2020-05-09');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('12', '8', '15','Este es el comentario 12','2020-06-17');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('13', '1', '19','Este es el comentario 13','2020-05-01');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('14', '2', '5','Este es el comentario 14','2020-05-31');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('15', '4', '3','Este es el comentario 15','2020-06-28');

DROP TABLE comentario;

CREATE TABLE comentario (id SERIAL, post_id VARCHAR(25),usuario_id VARCHAR(25), titulo TEXT, fecha DATE, PRIMARY KEY (id) );

INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('1', '3', '6','Este es el comentario 1','2020-07-08');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('2', '4', '2','Este es el comentario 2','2020-06-07');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('3', '6', '4','Este es el comentario 3','2020-06-16');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('4', '2', '13','Este es el comentario 4','2020-06-15');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('5', '6', '6','Este es el comentario 5','2020-05-14');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('6', '3', '3','Este es el comentario 6','2020-07-08');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('7', '6', '1','Este es el comentario 7','2020-05-22');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('8', '6', '7','Este es el comentario 8','2020-07-09');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('9', '8', '13','Este es el comentario 9','2020-06-30');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('10', '8', '6','Este es el comentario 10','2020-06-19');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('11', '5', '1','Este es el comentario 11','2020-05-09');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('12', '8', '15','Este es el comentario 12','2020-06-17');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('13', '1', '19','Este es el comentario 13','2020-05-01');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('14', '2', '5','Este es el comentario 14','2020-05-31');
INSERT INTO comentario (id, usuario_id, titulo, fecha) VALUES ('15', '4', '3','Este es el comentario 15','2020-06-28');

DROP TABLE comentario;

CREATE TABLE comentario (id SERIAL, post_id VARCHAR(25),usuario_id VARCHAR(25), titulo TEXT, fecha DATE, PRIMARY KEY (id) );

INSERT INTO comentario (id,post_id usuario_id, titulo, fecha) VALUES ('1', '3', '6','Este es el comentario 1','2020-07-08');
INSERT INTO comentario (id,post_id usuario_id, titulo, fecha) VALUES ('2', '4', '2','Este es el comentario 2','2020-06-07');
INSERT INTO comentario (id,post_id,usuario_id, titulo, fecha) VALUES ('3', '6', '4','Este es el comentario 3','2020-06-16');
INSERT INTO comentario (id,post_id, usuario_id, titulo, fecha) VALUES ('4', '2', '13','Este es el comentario 4','2020-06-15');
INSERT INTO comentario (id,post_id,usuario_id, titulo, fecha) VALUES ('5', '6', '6','Este es el comentario 5','2020-05-14');
INSERT INTO comentario (id,post_id usuario_id, titulo, fecha) VALUES ('6', '3', '3','Este es el comentario 6','2020-07-08');
INSERT INTO comentario (id,post_id usuario_id, titulo, fecha) VALUES ('7', '6', '1','Este es el comentario 7','2020-05-22');
INSERT INTO comentario (id,post_id usuario_id, titulo, fecha) VALUES ('8', '6', '7','Este es el comentario 8','2020-07-09');
INSERT INTO comentario (id,post_id, usuario_id, titulo, fecha) VALUES ('9', '8', '13','Este es el comentario 9','2020-06-30');
INSERT INTO comentario (id,post_id, usuario_id, titulo, fecha) VALUES ('10', '8', '6','Este es el comentario 10','2020-06-19');
INSERT INTO comentario (id, post_id,usuario_id, titulo, fecha) VALUES ('11', '5', '1','Este es el comentario 11','2020-05-09');
INSERT INTO comentario (id,post_id, usuario_id, titulo, fecha) VALUES ('12', '8', '15','Este es el comentario 12','2020-06-17');
INSERT INTO comentario (id,post_id, usuario_id, titulo, fecha) VALUES ('13', '1', '19','Este es el comentario 13','2020-05-01');
INSERT INTO comentario (id,post id,usuario_id, titulo, fecha) VALUES ('14', '2', '5','Este es el comentario 14','2020-05-31');
INSERT INTO comentario (id,post_id,usuario_id, titulo, fecha) VALUES ('15', '4', '3','Este es el comentario 15','2020-06-28');