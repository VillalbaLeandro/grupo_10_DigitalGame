-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2022 a las 14:15:48
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
-- Base de datos: `digitalgames_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compatibilities`
--

CREATE TABLE `compatibilities` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compatibilities`
--

INSERT INTO `compatibilities` (`id`, `name`) VALUES
(1, 'PS3'),
(2, 'PS4'),
(3, 'PS5'),
(4, 'XBOX 360'),
(5, 'XBOX ONE'),
(6, 'NINTENDO SWITCH');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compatibilities_has_products`
--

CREATE TABLE `compatibilities_has_products` (
  `compatibilities_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genders`
--

INSERT INTO `genders` (`id`, `name`) VALUES
(1, 'Accion'),
(2, 'Arcade'),
(3, 'Carreras'),
(4, 'Deportes'),
(5, 'Disparos'),
(6, 'Aventura'),
(7, 'De Rol'),
(8, 'MMORPG'),
(9, 'Terror'),
(10, 'Estrategia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenguages`
--

CREATE TABLE `lenguages` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lenguages`
--

INSERT INTO `lenguages` (`id`, `name`) VALUES
(1, 'Español'),
(2, 'Ingles'),
(3, 'Otro'),
(4, 'Multilenguaje');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`id`, `name`) VALUES
(1, '1 Jugador'),
(2, 'Multijugador'),
(3, 'Cooperativo'),
(4, 'Mundo Abierto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `releasedata` datetime NOT NULL,
  `img` text NOT NULL,
  `fullname` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `discount` int(11) NOT NULL,
  `freeShipping` tinyint(4) NOT NULL,
  `price` int(11) NOT NULL,
  `capture1` text NOT NULL,
  `capture2` text NOT NULL,
  `capture3` text NOT NULL,
  `capture4` text NOT NULL,
  `video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_has_genders`
--

CREATE TABLE `products_has_genders` (
  `products_id` int(11) NOT NULL,
  `genders_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_has_lenguages`
--

CREATE TABLE `products_has_lenguages` (
  `products_id` int(11) NOT NULL,
  `lenguages_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_has_players`
--

CREATE TABLE `products_has_players` (
  `products_id` int(11) NOT NULL,
  `players_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compatibilities`
--
ALTER TABLE `compatibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compatibilities_has_products`
--
ALTER TABLE `compatibilities_has_products`
  ADD PRIMARY KEY (`compatibilities_id`,`products_id`),
  ADD KEY `fk_compatibilities_has_products_products1_idx` (`products_id`),
  ADD KEY `fk_compatibilities_has_products_compatibilities_idx` (`compatibilities_id`);

--
-- Indices de la tabla `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lenguages`
--
ALTER TABLE `lenguages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products_has_genders`
--
ALTER TABLE `products_has_genders`
  ADD PRIMARY KEY (`products_id`,`genders_id`),
  ADD KEY `fk_products_has_genders_genders1_idx` (`genders_id`),
  ADD KEY `fk_products_has_genders_products1_idx` (`products_id`);

--
-- Indices de la tabla `products_has_lenguages`
--
ALTER TABLE `products_has_lenguages`
  ADD PRIMARY KEY (`products_id`,`lenguages_id`),
  ADD KEY `fk_products_has_lenguages_lenguages1_idx` (`lenguages_id`),
  ADD KEY `fk_products_has_lenguages_products1_idx` (`products_id`);

--
-- Indices de la tabla `products_has_players`
--
ALTER TABLE `products_has_players`
  ADD PRIMARY KEY (`products_id`,`players_id`),
  ADD KEY `fk_products_has_players_players1_idx` (`players_id`),
  ADD KEY `fk_products_has_players_products1_idx` (`products_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compatibilities`
--
ALTER TABLE `compatibilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `lenguages`
--
ALTER TABLE `lenguages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compatibilities_has_products`
--
ALTER TABLE `compatibilities_has_products`
  ADD CONSTRAINT `fk_compatibilities_has_products_compatibilities` FOREIGN KEY (`compatibilities_id`) REFERENCES `compatibilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_compatibilities_has_products_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `products_has_genders`
--
ALTER TABLE `products_has_genders`
  ADD CONSTRAINT `fk_products_has_genders_genders1` FOREIGN KEY (`genders_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_products_has_genders_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `products_has_lenguages`
--
ALTER TABLE `products_has_lenguages`
  ADD CONSTRAINT `fk_products_has_lenguages_lenguages1` FOREIGN KEY (`lenguages_id`) REFERENCES `lenguages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_products_has_lenguages_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `products_has_players`
--
ALTER TABLE `products_has_players`
  ADD CONSTRAINT `fk_products_has_players_players1` FOREIGN KEY (`players_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_products_has_players_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
