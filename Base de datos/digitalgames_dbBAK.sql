-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2022 a las 19:22:08
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
(4, 'XBOX ONE'),
(5, 'XBOX 360'),
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
(15, 2, 16),
(16, 3, 16),
(17, 4, 16),
(18, 2, 17),
(19, 3, 17),
(20, 4, 17),
(21, 5, 17),
(22, 6, 17),
(23, 2, 18),
(24, 3, 18),
(25, 4, 18),
(26, 5, 18),
(27, 6, 18);

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
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(16, 'FAR CRY 6', '2021-07-10 00:00:00', 'https://dixgamer.com/wp-content/uploads/2021/07/far-cry-6.jpg', 'FAR CRY 6', 'Far Cry 6 es un videojuego de acción y disparos en mundo abierto protagonizado por Dani Rojas, un guerrillero local (a elegir entre hombre o mujer) de Yara que lucha por la liberación de su nación contra Antón Castillo —interpretado por Giancarlo Esposito, Gus Fring en la recordada Breaking Bad— y su hijo. Desarrollado por Ubisoft Toronto, Far Cry 6 ambienta su acción en Yara, un paraíso tropical detenido en el tiempo en el que el jugador ha de luchar contra las tropas de su tiránico gobernante a través a junglas, playas y Esperanza, la caótica capital de este ficticio país del Caribe, valiéndose para ello de armas improvisadas, vehículos y, una vez más, nuevos compañeros animales.  UbiSoft entrega al usuario un juego donde se mantiene parte de los pilares de la saga, invitando a recorrer una vasta y variada extensión de terreno con nuevas formas de transporte como caballos y tanques, sin olvidarnos de coches clásicos, deportivos, motos y quads, lanchas y embarcaciones, helicópteros y aviones, etc. La varieda', 0, 0, 3599, 'https://areajugones.sport.es/wp-content/uploads/2020/07/far-cry-6-screenshot-1.jpg', 'https://gamek.mediacdn.vn/133514250583805952/2021/10/7/photo-1-16336019135841694396223.jpeg', 'https://www.gamingcoffee.com/wp-content/uploads/2020/07/fc1.jpg', 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2021/10/far-cry-6-embargo-dia-6-octubre-2489267.jpg?itok=f9IvVSQR', 'https://www.youtube.com/embed/fE0cBXPshZo'),
(17, 'SPIDER-MAN', '2018-09-07 00:00:00', 'https://i.3djuegos.com/juegos/13417/spiderman_ps4__nombre_provisional_/fotos/ficha/spiderman_ps4__nombre_provisional_-4004812.webp', 'SPIDER-MAN', 'Spiderman protagoniza este videojuego de acción desarrollado por Insomniac Games, los autores de Resistance y Ratchet & Clank entre otros, en exclusiva para PS4. La historia de esta aventura es totalmente original y nos pone en el rol de un Peter Parker experimentado y maduro que debe lidiar con los problemas que suponen el tener que salvar Manhattan de los peores criminales o villanos y compatibilizarlo con su vida personal. De hecho, el trepamuros de Marvel se enfrenta a varios de sus peores enemigos, poniendo a pruebas las habilidades del alter-ego más acrobático de Parker.  En el espectacular Marvel\'s Spider-Man te esperan saltos, combos de combates, carreras y acrobacias aprovechando el uso de técnicas de Parkour y muchas, muchas telarañas gestionadas por un extenso y variado sistema de combos y habilidades que ofrecen gran libertad de movimientos y posibilidades. Spiderman en PlayStation 4 cuenta con intensa acción, pero también con mecánicas de sigilo y un apartado visual impactante y muy cinematográfi', 40, 1, 7500, 'https://i.3djuegos.com/juegos/13417/spiderman_ps4__nombre_provisional_/fotos/set/spiderman_ps4__nombre_provisional_-5721085.webp', 'https://i.3djuegos.com/juegos/13417/spiderman_ps4__nombre_provisional_/fotos/set/spiderman_ps4__nombre_provisional_-5721076.webp', 'https://i.3djuegos.com/juegos/13417/spiderman_ps4__nombre_provisional_/fotos/set/spiderman_ps4__nombre_provisional_-5721079.webp', 'https://i.3djuegos.com/juegos/13417/spiderman_ps4__nombre_provisional_/fotos/set/spiderman_ps4__nombre_provisional_-5721082.webp', 'https://www.youtube.com/embed/4rKFkLeRF3Q'),
(18, 'UNCHARTED 4', '2018-03-22 00:00:00', 'https://i.3djuegos.com/juegos/8184/uncharted_4/fotos/ficha/uncharted_4-4946893.webp', 'UNCHARTED 4', '', 0, 1, 4800, 'https://i.3djuegos.com/juegos/8184/uncharted_4/fotos/set/uncharted_4-3573429.webp', 'https://i.3djuegos.com/juegos/8184/uncharted_4/fotos/set/uncharted_4-3379056.webp', 'https://i.3djuegos.com/juegos/8184/uncharted_4/fotos/set/uncharted_4-3379046.webp', 'https://i.3djuegos.com/juegos/8184/uncharted_4/fotos/set/uncharted_4-3379052.webp', 'https://www.youtube.com/embed/hh5HV4iic1Y');

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
(15, 16, 1),
(16, 16, 5),
(17, 16, 6),
(18, 17, 1),
(19, 17, 6),
(20, 18, 1),
(21, 18, 5),
(22, 18, 6);

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
(16, 1, 10),
(16, 2, 11),
(17, 1, 12),
(17, 2, 13),
(18, 1, 14),
(18, 2, 15);

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
(16, 1, 13),
(16, 3, 14),
(17, 1, 15),
(18, 1, 16),
(18, 2, 17),
(18, 3, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `roll` varchar(256) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `roll`, `estado`) VALUES
(1, 'admin', 1),
(2, 'vendedor', 1),
(3, 'user', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `img_profile` varchar(256) DEFAULT 'default.jpg',
  `roles_id` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `address`, `img_profile`, `roles_id`) VALUES
(9, 'Leandro villalba', 'exemprary@gmail.com', '$2b$10$7M.3806oVUOqB1uNxjYUIeLDNXZAR4luCnKIQib.qLh5kfauPx.Xu', NULL, '1667643577309_img_.jpg', 1),
(10, 'Ignacio Menguez', 'nachomenguez22@gmail.com', '$2b$10$duL4PN1.PE4MouK/wDdVIOa8e0k4Z2qGFlGTIeVh07BprS2AUBaeC', NULL, '199768201_691792018849576_145844266768873327_n.jpg', 3),
(11, 'julieta baez', 'julietabaez@gmail.com', '$2b$10$.wKnRoDSGKI/JwgsZGOvaO0u4H7f/J8nj6Dayb8iISY8IfL0Jb4FG', NULL, 'default.jpg', 3),
(12, 'Eliana basseterre', 'elianabass@gmail.com', '$2b$10$Csk2/X4ivaMx0CeQm.G.ZO48Lu5Qezozs5EEwUD7znhpyVC1j9I2C', 'Herrera 4278', 'default.jpg', 3);

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
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

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
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_users_roles1_idx` (`roles_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `products_has_genders`
--
ALTER TABLE `products_has_genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `products_has_lenguages`
--
ALTER TABLE `products_has_lenguages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `products_has_players`
--
ALTER TABLE `products_has_players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_roles1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
