CREATE DATABASE db_transportadoraMunicipal;

CREATE TABLE ciudades(
	id_ciudad INT PRIMARY KEY AUTO_INCREMENT,
    nombre_ciudad VARCHAR(50) NOT NULL
);

CREATE TABLE departamentos(
	id_departamentos INT PRIMARY KEY AUTO_INCREMENT,
    nombre_departamentos VARCHAR(50) NOT NULL
);

ALTER TABLE departamentos RENAME COLUMN id_departamentos TO id_departamento;
ALTER TABLE departamentos RENAME COLUMN nombre_departamentos TO nombre_departamento;


CREATE TABLE oficinas(
    id_oficina  INT PRIMARY KEY AUTO_INCREMENT,
    cod_oficina VARCHAR(10) NOT NULL UNIQUE,
    id_ciudad_oficina INT NOT NULL,
    id_departamento_oficina INT NOT NULL,
    dir_completa_oficina VARCHAR(100) NOT NULL UNIQUE,
    cod_postal_oficina VARCHAR(5) NOT NULL,
    telefono_oficina VARCHAR(10) NOT NULL UNIQUE,

    FOREIGN KEY (id_ciudad_oficina) REFERENCES ciudades (id_ciudad),
    FOREIGN KEY (id_departamento_oficina) REFERENCES departamentos(id_departamento)

);

ALTER TABLE oficinas CHANGE cod_postal_oficina cod_postal_oficina VARCHAR(6) NOT NULL;
-- ALTER TABLE oficinas MODIFY cod_postal_oficina VARCHAR(6) NOT NULL;

CREATE TABLE grupo(
    id_grupo INT PRIMARY KEY AUTO_INCREMENT,
    nombre_grupo VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tipo_vehiculo(
    id_tipo_vehiculo INT PRIMARY KEY AUTO_INCREMENT,
    nombre_tipo_vehiculo VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tipo_servicio(
    id_tipo_servicio INT PRIMARY KEY AUTO_INCREMENT,
    nombre_tipo_servicio VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE marca(
    id_marca INT PRIMARY KEY AUTO_INCREMENT,
    nombre_marca VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tipo_combustible(
    id_tipo_combustible INT PRIMARY KEY AUTO_INCREMENT,
    nombre_tipo_combustible VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE coches(
    id_coche INT PRIMARY KEY AUTO_INCREMENT,
    placa_coche VARCHAR(10) NOT NULL UNIQUE,
    id_grupo_coche INT NOT NULL,
    id_tipo_vehiculo_coche INT NOT NULL,
    id_tipo_servicio_coche INT NOT NULL,
    id_marca_coche INT NOT NULL,
    modelo_coche INT(4) NOT NULL,
    num_pasajeros_coche INT(2) NOT NULL,
    id_tipo_combustible_coche INT NOT NULL,
    id_oficina_coche INT NOT NULL,

    FOREIGN KEY (id_grupo_coche) REFERENCES grupo(id_grupo),
    FOREIGN KEY (id_tipo_vehiculo_coche) REFERENCES tipo_vehiculo(id_tipo_vehiculo),
    FOREIGN KEY (id_tipo_servicio_coche) REFERENCES tipo_servicio(id_tipo_servicio),
    FOREIGN KEY (id_marca_coche) REFERENCES marca(id_marca),
    FOREIGN KEY (id_tipo_combustible_coche) REFERENCES tipo_combustible(id_tipo_combustible),
    FOREIGN KEY (id_oficina_coche) REFERENCES oficinas(id_oficina)
);