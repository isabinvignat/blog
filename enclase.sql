-- Definimos qué tabla vamos a insertar datos
INSERT INTO Directorio_telefonico
-- Explicitamos cuáles son las columnas a insertar
(nombre, apellido, numero_telefono, edad)
-- Con la instrucción VALUES logramos asociada cada columna con un
valor específico
VALUES ('Juan', 'Perez', '12345678', 21);

INSERT INTO Directorio_telefonico
(nombre, apellido, numero_telefono, edad) VALUES
('Fabian', 'Salas', '32846352',21);
INSERT INTO Directorio_telefonico
(nombre, apellido, numero_telefono, edad) VALUES
('John', 'Rodriguez', '23764362', 21);
INSERT INTO Directorio_telefonico
(nombre, apellido, numero_telefono, edad) VALUES
('Braulio', 'Fuentes', '23781363', 19);

-- Realicemos el mismo procedimiento en la tabla Agenda
INSERT INTO Agenda (nick, numero_telefonico) VALUES ('Juanito',
'12345678');