-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2025 a las 02:22:12
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `enfocar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `nombre`, `usuario`, `email`, `contrasena`, `dni`, `creado_en`) VALUES
(2, 'nmnmnmnm', 'gg', 'asdasda@gmail.com', '$2y$10$0TFSDXprPlQl2V8OEBRGcOtpuqolEbdYGABrV7jW8wfQaxmPIILtO', '54984565', '2025-11-20 19:43:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_puntos`
--

CREATE TABLE `historial_puntos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `puntos` int(11) NOT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_puntos`
--

INSERT INTO `historial_puntos` (`id`, `usuario_id`, `puntos`, `fecha`) VALUES
(70, 22, 0, '2025-11-23 17:13:40'),
(71, 22, 1, '2025-11-23 17:13:54'),
(72, 21, 2, '2025-11-23 17:14:40'),
(73, 20, 2, '2025-11-23 17:15:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id`, `nombre`, `estado`) VALUES
(1, 'Mecanografia', 1),
(2, 'Anomalias', 1),
(3, 'Patrones', 1),
(4, 'Pentominó', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntajes`
--

CREATE TABLE `puntajes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `puntaje` int(11) NOT NULL,
  `tiempo` int(11) DEFAULT NULL,
  `game_id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puntajes`
--

INSERT INTO `puntajes` (`id`, `usuario_id`, `puntaje`, `tiempo`, `game_id`, `fecha`) VALUES
(133, 22, 0, 5, 3, '2025-11-23 20:13:40'),
(134, 22, 1, 13, 3, '2025-11-23 20:13:54'),
(135, 21, 2, 16, 1, '2025-11-23 20:14:40'),
(136, 20, 2, 12, 2, '2025-11-23 20:15:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contrasena`, `nombre`, `dni`, `email`, `estado`) VALUES
(18, 'tuki', '$2y$10$vvjzdbj/BQ80FJ9T6c08hO12F8amzqNvX6By894u/ChSEqs03nxJK', 'asdasdasd', '23567000', 'weqwe@gmail.com', 1),
(19, 'lara', '$2y$10$If8Cv/9z6lFEG9hX6IgR6u4OVcC5D/5StqPBxyxCIXXlUaM40i9zm', 'jhlkjhlhjl', '32895214', 'kjhglkfhjg@gmail.com', 1),
(20, 'turo', '$2y$10$BpoF3F1hcZlni53rZhB9o.sQNx2eE6JqgY1V8jibQXSTeNCDCdV1m', 'el turo', '54358452', 'turo3@gmail.com', 1),
(21, 'alfa', '$2y$10$oWW3elXqr5V3JQvhduVLJ.ArnzPekM4wZWTX5f9K6pHbmhI8oe8Hy', 'ghfhfhfgh', '21654984', 'alfa1@gmail.com', 1),
(22, 'tu', '$2y$10$WsANLGKaiN4q.HmfHj7nOeC9XuvoqnOg/pmu2hToQD.NczbzySHEG', 'tu', '25665452', 'tu7@gmail.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `historial_puntos`
--
ALTER TABLE `historial_puntos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puntajes`
--
ALTER TABLE `puntajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `historial_puntos`
--
ALTER TABLE `historial_puntos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `puntajes`
--
ALTER TABLE `puntajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial_puntos`
--
ALTER TABLE `historial_puntos`
  ADD CONSTRAINT `historial_puntos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `puntajes`
--
ALTER TABLE `puntajes`
  ADD CONSTRAINT `puntajes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
