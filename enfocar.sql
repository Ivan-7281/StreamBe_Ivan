-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2025 a las 01:06:13
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
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puntajes`
--

INSERT INTO `puntajes` (`id`, `usuario_id`, `puntaje`, `fecha`) VALUES
(1, 3, 1, '2025-11-06 23:18:16'),
(2, 3, 1, '2025-11-06 23:20:08'),
(3, 3, 0, '2025-11-06 23:20:21'),
(4, 3, 1, '2025-11-06 23:20:35'),
(5, 3, 0, '2025-11-06 23:20:52'),
(6, 4, 1, '2025-11-06 23:23:34'),
(7, 4, 0, '2025-11-06 23:26:34'),
(8, 4, 0, '2025-11-08 21:32:39'),
(9, 4, 1, '2025-11-08 21:38:01'),
(10, 4, 0, '2025-11-08 21:38:12'),
(11, 4, 2, '2025-11-08 21:42:20'),
(12, 4, 1, '2025-11-08 21:44:16'),
(13, 4, 6, '2025-11-08 21:46:00'),
(14, 5, 1, '2025-11-09 00:59:22'),
(15, 5, 2, '2025-11-09 21:52:46'),
(16, 5, 1, '2025-11-09 22:10:04'),
(17, 5, 0, '2025-11-09 22:11:46'),
(18, 5, 1, '2025-11-09 22:13:18'),
(19, 5, 2, '2025-11-09 22:14:20'),
(20, 5, 0, '2025-11-09 22:14:33'),
(21, 5, 0, '2025-11-09 22:15:04'),
(22, 5, 1, '2025-11-09 22:15:37'),
(23, 5, 1, '2025-11-09 22:19:30'),
(24, 5, 1, '2025-11-09 22:20:58'),
(25, 5, 1, '2025-11-09 22:33:04'),
(26, 5, 1, '2025-11-09 22:33:22'),
(27, 5, 1, '2025-11-09 22:37:15'),
(28, 5, 1, '2025-11-09 22:44:31'),
(29, 5, 1, '2025-11-09 22:44:52'),
(30, 5, 1, '2025-11-09 22:47:50'),
(31, 5, 1, '2025-11-09 22:50:49');

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
(10, 'gg', '$2y$10$K05cmPpVfmUewpmMHtO.j.Jm/Zp00ZyBMXpeb4HZmhs9tBba4UXWq');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
