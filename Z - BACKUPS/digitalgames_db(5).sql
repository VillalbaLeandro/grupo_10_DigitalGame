-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2022 a las 16:47:20
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
CREATE DATABASE IF NOT EXISTS `digitalgames_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `digitalgames_db`;

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
  `id` int(11) NOT NULL,
  `compatibilities_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compatibilities_has_products`
--

INSERT INTO `compatibilities_has_products` (`id`, `compatibilities_id`, `products_id`) VALUES
(1, 1, 1),
(2, 3, 1);

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

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `releasedata`, `img`, `fullname`, `description`, `discount`, `freeShipping`, `price`, `capture1`, `capture2`, `capture3`, `capture4`, `video`) VALUES
(1, 'FAR CRY 6', '2021-07-10 00:00:00', 'https://dixgamer.com/wp-content/uploads/2021/07/far-cry-6.jpg', 'FAR CRY 6', 'Far Cry 6 es un videojuego de acción y disparos en mundo abierto protagonizado por Dani Rojas, un guerrillero local (a elegir entre hombre o mujer) de Yara que lucha por la liberación de su nación contra Antón Castillo —interpretado por Giancarlo Esposito, Gus Fring en la recordada Breaking Bad— y su hijo. Desarrollado por Ubisoft Toronto, Far Cry 6 ambienta su acción en Yara, un paraíso tropical detenido en el tiempo en el que el jugador ha de luchar contra las tropas de su tiránico gobernante a través a junglas, playas y Esperanza, la caótica capital de este ficticio país del Caribe, valiéndose para ello de armas improvisadas, vehículos y, una vez más, nuevos compañeros animales.  UbiSoft entrega al usuario un juego donde se mantiene parte de los pilares de la saga, invitando a recorrer una vasta y variada extensión de terreno con nuevas formas de transporte como caballos y tanques, sin olvidarnos de coches clásicos, deportivos, motos y quads, lanchas y embarcaciones, helicópteros y aviones, etc. La varieda', 20, 0, 9500, 'https://areajugones.sport.es/wp-content/uploads/2020/07/far-cry-6-screenshot-1.jpg', 'https://gamek.mediacdn.vn/133514250583805952/2021/10/7/photo-1-16336019135841694396223.jpeg', 'https://www.gamingcoffee.com/wp-content/uploads/2020/07/fc1.jpg', 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2021/10/far-cry-6-embargo-dia-6-octubre-2489267.jpg?itok=f9IvVSQR', 'https://www.youtube.com/embed/fE0cBXPshZo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_has_genders`
--

CREATE TABLE `products_has_genders` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `genders_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products_has_genders`
--

INSERT INTO `products_has_genders` (`id`, `products_id`, `genders_id`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_has_lenguages`
--

CREATE TABLE `products_has_lenguages` (
  `products_id` int(11) NOT NULL,
  `lenguages_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products_has_lenguages`
--

INSERT INTO `products_has_lenguages` (`products_id`, `lenguages_id`, `id`) VALUES
(1, 1, 1),
(1, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_has_players`
--

CREATE TABLE `products_has_players` (
  `products_id` int(11) NOT NULL,
  `players_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products_has_players`
--

INSERT INTO `products_has_players` (`products_id`, `players_id`, `id`) VALUES
(1, 1, 1),
(1, 3, 2);

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
  ADD PRIMARY KEY (`id`),
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_has_genders_genders1_idx` (`genders_id`),
  ADD KEY `fk_products_has_genders_products1_idx` (`products_id`);

--
-- Indices de la tabla `products_has_lenguages`
--
ALTER TABLE `products_has_lenguages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_has_lenguages_lenguages1_idx` (`lenguages_id`),
  ADD KEY `fk_products_has_lenguages_products1_idx` (`products_id`);

--
-- Indices de la tabla `products_has_players`
--
ALTER TABLE `products_has_players`
  ADD PRIMARY KEY (`id`),
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
-- AUTO_INCREMENT de la tabla `compatibilities_has_products`
--
ALTER TABLE `compatibilities_has_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `products_has_genders`
--
ALTER TABLE `products_has_genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `products_has_lenguages`
--
ALTER TABLE `products_has_lenguages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `products_has_players`
--
ALTER TABLE `products_has_players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compatibilities_has_products`
--
ALTER TABLE `compatibilities_has_products`
  ADD CONSTRAINT `fk_compatibilities_has_products_compatibilities` FOREIGN KEY (`compatibilities_id`) REFERENCES `compatibilities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_compatibilities_has_products_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `products_has_genders`
--
ALTER TABLE `products_has_genders`
  ADD CONSTRAINT `fk_products_has_genders_genders1` FOREIGN KEY (`genders_id`) REFERENCES `genders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_products_has_genders_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `products_has_lenguages`
--
ALTER TABLE `products_has_lenguages`
  ADD CONSTRAINT `fk_products_has_lenguages_lenguages1` FOREIGN KEY (`lenguages_id`) REFERENCES `lenguages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_products_has_lenguages_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `products_has_players`
--
ALTER TABLE `products_has_players`
  ADD CONSTRAINT `fk_products_has_players_players1` FOREIGN KEY (`players_id`) REFERENCES `players` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_products_has_players_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
