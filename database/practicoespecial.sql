-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2022 a las 23:15:09
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
  `imagen` varchar(50) CHARACTER SET latin1 NOT NULL,
  `idTipoDeProducto` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`nombre`, `precio`, `descripcion`, `imagen`, `idTipoDeProducto`, `idProducto`) VALUES
('NVIDIA RTX 2060', 90000, 'Una placa de video que anda re piola papa', 'img/task/634662021767e.jpg', 5, 1),
('NVIDIA RTX 3060', 115000, 'Una placa de video que anda re piola papa x2', 'img/task/6346620c04c8b.jpg', 5, 2),
('Ryzen 5 5600X', 50000, 'SE LA BANCA RE PIOLA PAPA', 'img/task/6346621858930.jpg', 6, 3),
('Ryzen 5 3600', 40000, 'SE LA BANCA RE PIOLA PAPA X2', 'img/task/6346622744cbe.jpg', 6, 4),
('Intel i5 10400F', 25000, 'Es el proce del Kino papa', 'img/task/634662b31af0c.jpg', 6, 5),
('Ryzen 5 7600x', 100000, 'El mas nuevito papa', 'img/task/634662433bbbb.jpg', 6, 6),
('Intel i3 10100F', 20000, 'Chiquito pero poderoso', 'img/task/6346624c184cb.jpg', 6, 7);

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
('Gabinete', 11),
('Prueba', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `contrasenia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `email`, `contrasenia`) VALUES
(1, 'Tuzio', 'ea@ea.com', '$2a$12$HNAaeFEeYxZsxhAJ5znhDOdhrHoZaUIq6hlyaEZ5dw9oOAImBcudC');

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
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tipodeproductos`
--
ALTER TABLE `tipodeproductos`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
