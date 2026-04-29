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