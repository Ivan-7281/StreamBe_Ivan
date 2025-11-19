-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2025 a las 20:57:14
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
-- Estructura de tabla para la tabla `puntajes`
--

CREATE TABLE `puntajes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `puntaje` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `juego` varchar(50) NOT NULL,
  `tiempo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puntajes`
--

INSERT INTO `puntajes` (`id`, `usuario_id`, `puntaje`, `fecha`, `juego`, `tiempo`) VALUES
(1, 3, 1, '2025-11-06 23:18:16', 'Desconocido', 0),
(2, 3, 1, '2025-11-06 23:20:08', 'Desconocido', 0),
(3, 3, 0, '2025-11-06 23:20:21', 'Desconocido', 0),
(4, 3, 1, '2025-11-06 23:20:35', 'Desconocido', 0),
(5, 3, 0, '2025-11-06 23:20:52', 'Desconocido', 0),
(6, 4, 1, '2025-11-06 23:23:34', 'Desconocido', 0),
(7, 4, 0, '2025-11-06 23:26:34', 'Desconocido', 0),
(8, 4, 0, '2025-11-08 21:32:39', 'Desconocido', 0),
(9, 4, 1, '2025-11-08 21:38:01', 'Desconocido', 0),
(10, 4, 0, '2025-11-08 21:38:12', 'Desconocido', 0),
(11, 4, 2, '2025-11-08 21:42:20', 'Desconocido', 0),
(12, 4, 1, '2025-11-08 21:44:16', 'Desconocido', 0),
(13, 4, 6, '2025-11-08 21:46:00', 'Desconocido', 0),
(14, 5, 1, '2025-11-09 00:59:22', 'Desconocido', 0),
(15, 5, 2, '2025-11-09 21:52:46', 'Desconocido', 0),
(16, 5, 1, '2025-11-09 22:10:04', 'Desconocido', 0),
(17, 5, 0, '2025-11-09 22:11:46', 'Desconocido', 0),
(18, 5, 1, '2025-11-09 22:13:18', 'Desconocido', 0),
(19, 5, 2, '2025-11-09 22:14:20', 'Desconocido', 0),
(20, 5, 0, '2025-11-09 22:14:33', 'Desconocido', 0),
(21, 5, 0, '2025-11-09 22:15:04', 'Desconocido', 0),
(22, 5, 1, '2025-11-09 22:15:37', 'Desconocido', 0),
(23, 5, 1, '2025-11-09 22:19:30', 'Desconocido', 0),
(24, 5, 1, '2025-11-09 22:20:58', 'Desconocido', 0),
(25, 5, 1, '2025-11-09 22:33:04', 'Desconocido', 0),
(26, 5, 1, '2025-11-09 22:33:22', 'Desconocido', 0),
(27, 5, 1, '2025-11-09 22:37:15', 'Desconocido', 0),
(28, 5, 1, '2025-11-09 22:44:31', 'Desconocido', 0),
(29, 5, 1, '2025-11-09 22:44:52', 'Desconocido', 0),
(30, 5, 1, '2025-11-09 22:47:50', 'Desconocido', 0),
(31, 5, 1, '2025-11-09 22:50:49', 'Desconocido', 0),
(32, 3, 0, '2025-11-19 17:15:10', 'Desconocido', 0),
(33, 3, 2, '2025-11-19 17:28:33', 'Desconocido', 0),
(34, 3, 0, '2025-11-19 17:29:03', 'Desconocido', 0),
(35, 3, 1, '2025-11-19 17:29:24', 'Desconocido', 0),
(36, 3, 0, '2025-11-19 17:31:35', 'Desconocido', 0),
(37, 3, 2, '2025-11-19 17:38:40', 'Desconocido', 0),
(38, 6, 6, '2025-11-19 18:23:53', 'Desconocido', 0),
(39, 6, 1, '2025-11-19 18:25:17', 'Desconocido', 0),
(40, 6, 4, '2025-11-19 18:25:41', 'Desconocido', 0),
(41, NULL, 0, '2025-11-19 18:28:44', 'Desconocido', 0),
(42, 6, 10, '2025-11-19 18:30:34', 'Desconocido', 0),
(43, 6, 3, '2025-11-19 18:34:14', 'Desconocido', 0),
(44, 6, 4, '2025-11-19 18:36:42', 'Desconocido', 0),
(45, 6, 4, '2025-11-19 18:37:53', '', 0),
(46, 6, 4, '2025-11-19 18:41:31', '', 0),
(47, 6, 2, '2025-11-19 18:42:49', '', 0),
(48, 6, 2, '2025-11-19 18:48:00', '', 0),
(49, 6, 2, '2025-11-19 18:52:25', '', 0),
(50, 6, 4, '2025-11-19 18:54:28', '', 0),
(51, 6, 3, '2025-11-19 18:55:38', '', 0),
(52, 6, 12, '2025-11-19 18:56:36', '', 0),
(53, 7, 2, '2025-11-19 19:22:34', '', 0),
(54, 7, 3, '2025-11-19 19:28:29', '', 0),
(55, 7, 4, '2025-11-19 19:31:09', '', 0),
(56, 7, 2, '2025-11-19 19:41:29', '', 0),
(57, 7, 2, '2025-11-19 19:54:19', '', 0),
(58, 7, 1, '2025-11-19 19:55:16', '', 0),
(59, 7, 4, '2025-11-19 19:55:55', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contrasena`) VALUES
(1, 'Naval125', '$2y$10$ySM1yMDf.mf6IBEDqm6vmO2sQOq3kTY1SemF7dJE3SyDvP5.zLHLq'),
(2, 'dssda', '$2y$10$Ds0f/IwglAxdc1rzIkCF5OL89zt.WHMeSas95Ht7PKF3ce/0w.x7i'),
(3, 'tuki', '$2y$10$Nyh7R/nNNoJVYzxYu6w6B.QDSlzS1Lg9rcIAwbyb5uDINirk70Kdu'),
(4, 'lara', '$2y$10$Sw8Q4hF2Gg5n2rn.yI8MVuKy/uuohHOYlHNlTkxotHJ0fQjKxjdae'),
(5, 'dim', '$2y$10$LBOYm/dABSyL9Q..x8SZzeWQ6fGk/5rw2l9UIBuMvoni6i6gHTg2i'),
(6, 'tron', '$2y$10$KDqTlDAZ2dIHuPYbLd8IK.7D0GN8Ehkw.U1KXBus0xVj7wJy7BsTe'),
(7, 'alan', '$2y$10$wlPXlcHwBWH9CB7BcjOIBeHxA844uLE8Pe.UuSxcaLE1w/i.Pmtpm');

--
-- Índices para tablas volcadas
--

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
-- AUTO_INCREMENT de la tabla `puntajes`
--
ALTER TABLE `puntajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `puntajes`
--
ALTER TABLE `puntajes`
  ADD CONSTRAINT `puntajes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
