-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-03-2020 a las 18:35:44
-- Versión del servidor: 10.2.30-MariaDB
-- Versión de PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u185562691_sr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercios`
--

CREATE TABLE `comercios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `telefono` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `adicional` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `contacto` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `horario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ubicacion` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `comercios`
--

INSERT INTO `comercios` (`id`, `nombre`, `tipo`, `telefono`, `adicional`, `contacto`, `horario`, `ubicacion`, `fecha`) VALUES
(1, 'Cevichera San Rafael', 9, '83775646', 'Ceviches y comidas con mariscos', 'Jason Pérez', 'De jueves a domingo de 10:00 am a 5:00 pm', 'Residencial Amberes', '2020-03-20 22:52:34'),
(2, 'Restaurant Buen día', 9, '83775646', 'Comida China e internacional', 'Ana', 'De Lunes a domingo de 11:00 am a 11:00 pm', '50 mts sur del Palí', '2020-03-20 22:52:34'),
(4, 'Lavacar Carro limpio', 15, '83775646', 'Lavado de autos y motos', 'Ana', 'De Lunes a domingo de 8:00 am a 11:00 pm', 'Frente al Megasuper', '2020-03-20 22:52:34'),
(23, 'Librería Pepito', 14, '55555555', 'Libros de cuentos', 'Pepito', '8:00 am a 12:00md', 'SR', '2020-03-21 01:37:58'),
(24, 'Carnicería San Rafael', 8, '55555555', 'Carnes de cerdo, res y pollo', 'Guiselle', '8:00 a 5:00 pm', 'San Rafael Abajo', '2020-03-21 01:49:08'),
(79, 'Pepe', 14, '10', 'Debe', 'Hay', '5', 'Hay', '2020-03-21 04:44:39'),
(80, 'Restaurant Buen día 2', 9, '83775646', 'Comida China e internacional', 'Ana', 'De Lunes a domingo de 11:00 am a 11:00 pm', '50 mts sur del Palí', '2020-03-20 22:52:34'),
(81, '', 14, '', '', '', '', '', '2020-03-21 21:58:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `tipo` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `tipo`) VALUES
(1, 'Pulpería'),
(2, 'Panadería'),
(3, 'Super/miniSuper'),
(4, 'Verdulería'),
(5, 'Farmacia'),
(6, 'Ferretería'),
(7, 'Veterinaria'),
(8, 'Carnicería'),
(9, 'Soda/Restaurant'),
(10, 'Otro'),
(11, 'Salud'),
(12, 'Belleza/estética'),
(13, 'Librería'),
(14, 'Bazar'),
(15, 'Lavacar'),
(16, 'Lavandería'),
(17, 'Mecánico automotriz');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comercios`
--
ALTER TABLE `comercios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comercios`
--
ALTER TABLE `comercios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
