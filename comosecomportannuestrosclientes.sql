--Requerimiento 1
CREATE DATABASE unidad2;
--Requerimiento 2
psql -U postgres unidad2<C:\Users\ibinv\OneDrive\Desktop\entendiendocomosecomportannuestrosclientes\unidad2.sql
--Requerimiento 3
BEGIN;
INSERT INTO compra (id, cliente_id, fecha) VALUES (1, 4,'2020-02-12');
UPDATE producto SET stock = stock - 5 WHERE id = 9;
COMMIT;
--lo de arriba me generó error
SELECT * FROM producto WHERE id=9
