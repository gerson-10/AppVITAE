-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-05-2020 a las 01:22:20
-- Versión del servidor: 5.7.30-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbappvitae`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_solicitud`
--

CREATE TABLE `tb_solicitud` (
  `ID_SOLICITUD` int(11) NOT NULL,
  `NOMBREINGRESA` varchar(200) DEFAULT NULL,
  `CORREOINGRESA` varchar(50) DEFAULT NULL,
  `RUTAPDF` varchar(200) DEFAULT NULL,
  `NOMBREARCHIVO` varchar(80) DEFAULT NULL,
  `MOTIVO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='regsitra los nombramientos solicitados desde el interior';

--
-- Volcado de datos para la tabla `tb_solicitud`
--

INSERT INTO `tb_solicitud` (`ID_SOLICITUD`, `NOMBREINGRESA`, `CORREOINGRESA`, `RUTAPDF`, `NOMBREARCHIVO`, `MOTIVO`) VALUES
(1, ' GERSON RUANO', ' GERSON2@GMAIL.COM', 'Archivos/TAREA INVESTIGACIÃ“N.pdf', 'TAREA INVESTIGACIÃ“N.pdf', ''),
(2, ' GERSON RUANO', ' GERSON2@GMAIL.COM', 'Archivos/Ventas de Produccion  2018.pdf', 'Ventas de Produccion  2018.pdf', 'personal'),
(6, ' GERSON RUANO', ' GERSON@GMAIL.COM', 'Archivos/dht11_tiempoReal.ino', 'dht11_tiempoReal.ino', '3EQWRW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `CORREOE` varchar(80) NOT NULL,
  `CLAVE` varchar(300) DEFAULT NULL,
  `NOMBRECOMPLETO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de usuarios del sistema de inscripciones';

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`CORREOE`, `CLAVE`, `NOMBRECOMPLETO`) VALUES
('GERSON@GMAIL.COM', '3614f7b8bf42dbb37b040c9387ddc1f0', 'GERSON RUANO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `edad` int(3) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_solicitud`
--
ALTER TABLE `tb_solicitud`
  ADD PRIMARY KEY (`ID_SOLICITUD`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`CORREOE`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_solicitud`
--
ALTER TABLE `tb_solicitud`
  MODIFY `ID_SOLICITUD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
