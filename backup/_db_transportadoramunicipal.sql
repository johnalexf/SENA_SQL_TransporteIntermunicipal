-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-05-2026 a las 14:52:51
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_transportadora_municipal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `nombre_ciudad` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `nombre_ciudad`) VALUES
(1, 'Bogotá'),
(3, 'Medellin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coches`
--

CREATE TABLE `coches` (
  `id_coche` int(11) NOT NULL,
  `placa_coche` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `id_grupo_coche` int(11) NOT NULL,
  `id_tipo_vehiculo_coche` int(11) NOT NULL,
  `id_tipo_servicio_coche` int(11) NOT NULL,
  `id_marca_coche` int(11) NOT NULL,
  `modelo_coche` int(4) NOT NULL,
  `num_pasajeros_coche` int(2) NOT NULL,
  `id_tipo_combustible_coche` int(11) NOT NULL,
  `id_oficina_coche` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

CREATE TABLE `conductor` (
  `id_conductor` int(11) NOT NULL,
  `primer_nombre_conductor` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `segundo_nombre_conductor` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `primer_apellido_conductor` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `segundo_apellido_conductor` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_tipo_documento_conductor` int(11) NOT NULL,
  `documento_identidad_conductor` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion_conductor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono_conductor` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id_departamento`, `nombre_departamento`) VALUES
(3, 'Antioquia'),
(1, 'Cundinamarca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id_grupo` int(11) NOT NULL,
  `nombre_grupo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id_grupo`, `nombre_grupo`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `id_lugar` int(11) NOT NULL,
  `nombre_lugar` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `id_ciudad_lugar` int(11) NOT NULL,
  `id_departamento_lugar` int(11) NOT NULL,
  `direccion_lugar` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `nombre_marca` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `nombre_marca`) VALUES
(1, 'chevrolet'),
(3, 'kia'),
(4, 'mazda'),
(5, 'Renault'),
(2, 'toyota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficinas`
--

CREATE TABLE `oficinas` (
  `id_oficina` int(11) NOT NULL,
  `cod_oficina` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `id_ciudad_oficina` int(11) NOT NULL,
  `id_departamento_oficina` int(11) NOT NULL,
  `dir_completa_oficina` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_postal_oficina` varchar(6) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono_oficina` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recorridos`
--

CREATE TABLE `recorridos` (
  `id_recorridos` int(11) NOT NULL,
  `id_coche_recorrido` int(11) NOT NULL,
  `id_conductor_recorrido` int(11) NOT NULL,
  `id_lugar_salida_recorrido` int(11) NOT NULL,
  `id_lugar_destino_recorrido` int(11) NOT NULL,
  `km_recorridos` int(11) DEFAULT NULL,
  `id_tipo_recorrido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_combustible`
--

CREATE TABLE `tipo_combustible` (
  `id_tipo_combustible` int(11) NOT NULL,
  `nombre_tipo_combustible` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_combustible`
--

INSERT INTO `tipo_combustible` (`id_tipo_combustible`, `nombre_tipo_combustible`) VALUES
(1, 'diesel'),
(2, 'gasolina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int(11) NOT NULL,
  `nombre_tipo_documento` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id_tipo_documento`, `nombre_tipo_documento`) VALUES
(1, 'cedula de ciudadania'),
(2, 'cedula extranjera'),
(4, 'pasaporte'),
(3, 'registro civil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_recorrido`
--

CREATE TABLE `tipo_recorrido` (
  `id_tipo_recorrido` int(11) NOT NULL,
  `nombre_tipo_recorrido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_recorrido`
--

INSERT INTO `tipo_recorrido` (`id_tipo_recorrido`, `nombre_tipo_recorrido`) VALUES
(1, 'Departamental (Nacional)'),
(2, 'Interdepartamental (Urbano)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicio`
--

CREATE TABLE `tipo_servicio` (
  `id_tipo_servicio` int(11) NOT NULL,
  `nombre_tipo_servicio` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_servicio`
--

INSERT INTO `tipo_servicio` (`id_tipo_servicio`, `nombre_tipo_servicio`) VALUES
(4, 'Directo'),
(2, 'DUO bus'),
(1, 'GOLD'),
(3, 'Vans');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vehiculo`
--

CREATE TABLE `tipo_vehiculo` (
  `id_tipo_vehiculo` int(11) NOT NULL,
  `nombre_tipo_vehiculo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_vehiculo`
--

INSERT INTO `tipo_vehiculo` (`id_tipo_vehiculo`, `nombre_tipo_vehiculo`) VALUES
(4, 'Bus'),
(3, 'Buseta'),
(2, 'Mini bus'),
(1, 'Vans');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD UNIQUE KEY `nombre_ciudad` (`nombre_ciudad`);

--
-- Indices de la tabla `coches`
--
ALTER TABLE `coches`
  ADD PRIMARY KEY (`id_coche`),
  ADD UNIQUE KEY `placa_coche` (`placa_coche`),
  ADD KEY `id_grupo_coche` (`id_grupo_coche`),
  ADD KEY `id_tipo_vehiculo_coche` (`id_tipo_vehiculo_coche`),
  ADD KEY `id_tipo_servicio_coche` (`id_tipo_servicio_coche`),
  ADD KEY `id_marca_coche` (`id_marca_coche`),
  ADD KEY `id_tipo_combustible_coche` (`id_tipo_combustible_coche`),
  ADD KEY `id_oficina_coche` (`id_oficina_coche`);

--
-- Indices de la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`id_conductor`),
  ADD UNIQUE KEY `documento_identidad_conductor` (`documento_identidad_conductor`),
  ADD UNIQUE KEY `direccion_conductor` (`direccion_conductor`),
  ADD UNIQUE KEY `telefono_conductor` (`telefono_conductor`),
  ADD KEY `id_tipo_documento_conductor` (`id_tipo_documento_conductor`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id_departamento`),
  ADD UNIQUE KEY `nombre_departamento` (`nombre_departamento`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id_grupo`),
  ADD UNIQUE KEY `nombre_grupo` (`nombre_grupo`);

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`id_lugar`),
  ADD UNIQUE KEY `nombre_lugar` (`nombre_lugar`),
  ADD KEY `id_ciudad_lugar` (`id_ciudad_lugar`),
  ADD KEY `id_departamento_lugar` (`id_departamento_lugar`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`),
  ADD UNIQUE KEY `nombre_marca` (`nombre_marca`);

--
-- Indices de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  ADD PRIMARY KEY (`id_oficina`),
  ADD UNIQUE KEY `cod_oficina` (`cod_oficina`),
  ADD UNIQUE KEY `dir_completa_oficina` (`dir_completa_oficina`),
  ADD UNIQUE KEY `telefono_oficina` (`telefono_oficina`),
  ADD KEY `id_ciudad_oficina` (`id_ciudad_oficina`),
  ADD KEY `id_departamento_oficina` (`id_departamento_oficina`);

--
-- Indices de la tabla `recorridos`
--
ALTER TABLE `recorridos`
  ADD PRIMARY KEY (`id_recorridos`),
  ADD KEY `id_coche_recorrido` (`id_coche_recorrido`),
  ADD KEY `id_conductor_recorrido` (`id_conductor_recorrido`),
  ADD KEY `id_lugar_salida_recorrido` (`id_lugar_salida_recorrido`),
  ADD KEY `id_lugar_destino_recorrido` (`id_lugar_destino_recorrido`),
  ADD KEY `id_tipo_recorrido` (`id_tipo_recorrido`);

--
-- Indices de la tabla `tipo_combustible`
--
ALTER TABLE `tipo_combustible`
  ADD PRIMARY KEY (`id_tipo_combustible`),
  ADD UNIQUE KEY `nombre_tipo_combustible` (`nombre_tipo_combustible`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tipo_documento`),
  ADD UNIQUE KEY `nombre_tipo_documento` (`nombre_tipo_documento`);

--
-- Indices de la tabla `tipo_recorrido`
--
ALTER TABLE `tipo_recorrido`
  ADD PRIMARY KEY (`id_tipo_recorrido`),
  ADD UNIQUE KEY `nombre_tipo_recorrido` (`nombre_tipo_recorrido`);

--
-- Indices de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  ADD PRIMARY KEY (`id_tipo_servicio`),
  ADD UNIQUE KEY `nombre_tipo_servicio` (`nombre_tipo_servicio`);

--
-- Indices de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  ADD PRIMARY KEY (`id_tipo_vehiculo`),
  ADD UNIQUE KEY `nombre_tipo_vehiculo` (`nombre_tipo_vehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `coches`
--
ALTER TABLE `coches`
  MODIFY `id_coche` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conductor`
--
ALTER TABLE `conductor`
  MODIFY `id_conductor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `id_lugar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `oficinas`
--
ALTER TABLE `oficinas`
  MODIFY `id_oficina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recorridos`
--
ALTER TABLE `recorridos`
  MODIFY `id_recorridos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_combustible`
--
ALTER TABLE `tipo_combustible`
  MODIFY `id_tipo_combustible` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id_tipo_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_recorrido`
--
ALTER TABLE `tipo_recorrido`
  MODIFY `id_tipo_recorrido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  MODIFY `id_tipo_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  MODIFY `id_tipo_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coches`
--
ALTER TABLE `coches`
  ADD CONSTRAINT `coches_ibfk_1` FOREIGN KEY (`id_grupo_coche`) REFERENCES `grupo` (`id_grupo`),
  ADD CONSTRAINT `coches_ibfk_2` FOREIGN KEY (`id_tipo_vehiculo_coche`) REFERENCES `tipo_vehiculo` (`id_tipo_vehiculo`),
  ADD CONSTRAINT `coches_ibfk_3` FOREIGN KEY (`id_tipo_servicio_coche`) REFERENCES `tipo_servicio` (`id_tipo_servicio`),
  ADD CONSTRAINT `coches_ibfk_4` FOREIGN KEY (`id_marca_coche`) REFERENCES `marca` (`id_marca`),
  ADD CONSTRAINT `coches_ibfk_5` FOREIGN KEY (`id_tipo_combustible_coche`) REFERENCES `tipo_combustible` (`id_tipo_combustible`),
  ADD CONSTRAINT `coches_ibfk_6` FOREIGN KEY (`id_oficina_coche`) REFERENCES `oficinas` (`id_oficina`);

--
-- Filtros para la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD CONSTRAINT `conductor_ibfk_1` FOREIGN KEY (`id_tipo_documento_conductor`) REFERENCES `tipo_documento` (`id_tipo_documento`);

--
-- Filtros para la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD CONSTRAINT `lugares_ibfk_1` FOREIGN KEY (`id_ciudad_lugar`) REFERENCES `ciudades` (`id_ciudad`),
  ADD CONSTRAINT `lugares_ibfk_2` FOREIGN KEY (`id_departamento_lugar`) REFERENCES `departamentos` (`id_departamento`);

--
-- Filtros para la tabla `oficinas`
--
ALTER TABLE `oficinas`
  ADD CONSTRAINT `oficinas_ibfk_1` FOREIGN KEY (`id_ciudad_oficina`) REFERENCES `ciudades` (`id_ciudad`),
  ADD CONSTRAINT `oficinas_ibfk_2` FOREIGN KEY (`id_departamento_oficina`) REFERENCES `departamentos` (`id_departamento`);

--
-- Filtros para la tabla `recorridos`
--
ALTER TABLE `recorridos`
  ADD CONSTRAINT `recorridos_ibfk_1` FOREIGN KEY (`id_coche_recorrido`) REFERENCES `coches` (`id_coche`),
  ADD CONSTRAINT `recorridos_ibfk_2` FOREIGN KEY (`id_conductor_recorrido`) REFERENCES `conductor` (`id_conductor`),
  ADD CONSTRAINT `recorridos_ibfk_3` FOREIGN KEY (`id_lugar_salida_recorrido`) REFERENCES `lugares` (`id_lugar`),
  ADD CONSTRAINT `recorridos_ibfk_4` FOREIGN KEY (`id_lugar_destino_recorrido`) REFERENCES `lugares` (`id_lugar`),
  ADD CONSTRAINT `recorridos_ibfk_5` FOREIGN KEY (`id_tipo_recorrido`) REFERENCES `tipo_recorrido` (`id_tipo_recorrido`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
