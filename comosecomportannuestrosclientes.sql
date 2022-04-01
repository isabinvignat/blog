--Requerimiento 1
CREATE DATABASE unidad2;
psql -U postgres unidad2<C:\Users\ibinv\OneDrive\Desktop\entendiendocomosecomportannuestrosclientes\unidad2.sql

--Requerimiento 2
UPDATE producto SET stock  = stock + 5 WHERE producto.id=9;
BEGIN;
INSERT INTO compra (cliente_id, fecha) VALUES (1,'2022-04-01');
INSERT INTO detalle_compra (producto_id, compra_id, cantidad) VALUES (9, (SELECT max(id) FROM compra), 5);
UPDATE producto SET stock  = stock - 5 WHERE producto.id=9;
COMMIT;
SELECT * FROM producto
ROLLBACK;

--Requerimiento 3
BEGIN;
INSERT INTO compra (cliente_id, fecha) VALUES (2, '2022-04-01');
INSERT INTO detalle_compra (producto_id, compra_id, cantidad) VALUES (2, (SELECT max(id) FROM compra),3);
UPDATE producto SET stock =stock - 3 WHERE producto.id=1;

SELECT * FROM producto;
ROLLBACK;

BEGIN;
INSERT INTO compra (cliente_id, fecha) VALUES (2, '2022-04-01');
INSERT INTO detalle_compra (producto_id, compra_id, cantidad) VALUES (2, (SELECT max(id) FROM compra),3);
UPDATE producto SET stock =stock - 3 WHERE producto.id=2;
SELECT * FROM producto;
ROLLBACK;

BEGIN;
INSERT INTO compra (cliente_id, fecha) VALUES (2,'2022-04-01');
INSERT INTO detalle_compra (producto_id, compra_id, cantidad) VALUES (2, (SELECT max(id) FROM compra),3);
UPDATE producto SET stock =stock - 3 WHERE producto.id=2;
SELECT * FROM producto;
ROLLBACK;

BEGIN;
INSERT INTO compra (cliente_id, fecha) VALUES (2,'2022-04-01');
INSERT INTO detalle_compra (producto_id, compra_id, cantidad) VALUES (8, (SELECT max(id) FROM compra),3);
UPDATE producto SET stock =stock - 3 WHERE producto.id=8;
SELECT * FROM producto;
ROLLBACK;

--Requerimiento 4
\set AUTOCOMMIT off
\echo :AUTOCOMMIT
off

INSERT INTO cliente (nombre, email) VALUES ('usuario11', 'usuario011@gmail.com');
SELECT * FROM cliente;

ROLLBACK;

INSERT INTO cliente (nombre, email) VALUES ('usuario12', 'usuario012@gmail.com');
SELECT * FROM cliente;

ROLLBACK;

\set AUTOCOMMIT


