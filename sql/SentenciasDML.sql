
-- Agregar un registro en una tabla
-- Se puede de varias maneras

-- Agregar un registro llenando todas las columnas
INSERT INTO ciudades VALUES (1, 'Bogotá');

-- Agregar un registro en una columna
-- Depende de las demas columnas, si permiten nulos, o como el ID si es autoincrementable
INSERT INTO ciudades(nombre_ciudad) VALUES ('Medellin');

-- Agregar varios registros
INSERT INTO departamentos(nombre_departamento) VALUES 
('Cundinamarca'),
('Antioqui');

-- Editar registro
UPDATE departamentos
SET nombre_departamento = 'Antioquia'
WHERE nombre_departamento = 'Antioqui';

UPDATE departamentos SET nombre_departamento = 'Antioquia' WHERE id_departamento = 2 ;


-- Borrar Registros
DELETE FROM departamentos WHERE nombre_departamento = 'Antioquia';

-- Leer Registros
-- SELECT columna1, column2 FROM nombre_tabla WHERE condicion
-- *  => todas las columnas
SELECT * FROM departamentos WHERE 1;
SELECT nombre_departamento FROM departamentos ;



INSERT INTO grupo(nombre_grupo) VALUES
('A'), ('B'), ('C'), ('D'), ('E'); 

INSERT INTO tipo_vehiculo(nombre_tipo_vehiculo) VALUES
('Vans'),('Mini bus'),('Buseta'),('Bus');

INSERT INTO tipo_servicio(nombre_tipo_servicio) VALUES
('GOLD'),('DUO bus'),('Vans'),('Directo');

INSERT INTO marca(nombre_marca) VALUES
('chevrolet'),('toyota'),('kia'),('mazda'),('Renault');

INSERT INTO tipo_combustible(nombre_tipo_combustible) VALUES
('diesel'),('gasolina');

INSERT INTO tipo_documento(nombre_tipo_documento) VALUES
('cedula de ciudadania'),('cedula extranjera'),('registro civil'),('pasaporte');

INSERT INTO tipo_recorrido(nombre_tipo_recorrido) VALUES
('Departamental (Nacional)'),('Interdepartamental (Urbano)');