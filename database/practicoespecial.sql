-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2022 a las 00:38:14
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practicoespecial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `nombre` varchar(40) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` int(11) NOT NULL,
  `idTipoDeProducto` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`nombre`, `precio`, `descripcion`, `imagen`, `idTipoDeProducto`, `idProducto`) VALUES
('NVIDIA RTX 2060', 90000, 'Una placa de video que anda re piola papa', 0, 5, 1),
('NVIDIA RTX 3060', 115000, 'Una placa de video que anda re piola papa x2', 0, 5, 2),
('Ryzen 5 5600', 50000, 'SE LA BANCA RE PIOLA PAPA', 0, 6, 3),
('Ryzen 5 3600', 40000, 'SE LA BANCA RE PIOLA PAPA X2', 0, 6, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodeproductos`
--

CREATE TABLE `tipodeproductos` (
  `tipoDeProducto` varchar(40) NOT NULL,
  `idTipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipodeproductos`
--

INSERT INTO `tipodeproductos` (`tipoDeProducto`, `idTipo`) VALUES
('Placa de video', 5),
('Procesador', 6),
('Memoria RAM', 7),
('Motherboard', 8),
('Discos', 9),
('Fuente', 10),
('Gabinete', 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idTipoDeProducto` (`idTipoDeProducto`);

--
-- Indices de la tabla `tipodeproductos`
--
ALTER TABLE `tipodeproductos`
  ADD PRIMARY KEY (`idTipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipodeproductos`
--
ALTER TABLE `tipodeproductos`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idTipoDeProducto`) REFERENCES `tipodeproductos` (`idTipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
