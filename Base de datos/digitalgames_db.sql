-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2022 a las 03:37:07
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

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
(27, 6, 18),
(28, 2, 19),
(29, 3, 19),
(30, 4, 19),
(31, 6, 19),
(32, 1, 20),
(33, 2, 20),
(34, 3, 20),
(35, 4, 20),
(36, 5, 20),
(37, 2, 22),
(38, 3, 22),
(39, 4, 22),
(40, 1, 23),
(41, 2, 23),
(42, 3, 23),
(43, 4, 23),
(44, 5, 23),
(45, 6, 23),
(46, 1, 24),
(47, 2, 24),
(48, 3, 24),
(49, 2, 25),
(50, 3, 25),
(51, 6, 25),
(52, 2, 26),
(53, 3, 26),
(54, 4, 26),
(55, 5, 26),
(56, 6, 26),
(57, 2, 27),
(58, 3, 27),
(59, 4, 27),
(60, 5, 27),
(61, 6, 27),
(62, 1, 28),
(63, 2, 28),
(64, 3, 28),
(65, 4, 28),
(66, 5, 28),
(67, 6, 28),
(68, 2, 29),
(69, 2, 30),
(70, 3, 30),
(71, 4, 30),
(72, 5, 30),
(73, 6, 30),
(74, 2, 31),
(75, 3, 31),
(76, 4, 31),
(77, 6, 31),
(78, 2, 32),
(79, 3, 32),
(80, 2, 33),
(81, 3, 33),
(82, 4, 33),
(83, 6, 33),
(84, 2, 34),
(85, 4, 34),
(86, 6, 34),
(87, 2, 35),
(88, 2, 36),
(89, 2, 37),
(90, 4, 37),
(91, 2, 38),
(92, 3, 38),
(93, 4, 38),
(94, 2, 39),
(95, 2, 40),
(96, 4, 40),
(97, 1, 41),
(98, 2, 41),
(99, 3, 41),
(100, 4, 41),
(101, 5, 41),
(102, 6, 41),
(103, 1, 42),
(104, 2, 42),
(105, 4, 42),
(106, 6, 42),
(107, 2, 43),
(108, 4, 43),
(109, 2, 44),
(110, 4, 44),
(111, 2, 45),
(112, 3, 45),
(113, 4, 45),
(114, 2, 46),
(115, 4, 46),
(116, 6, 46);

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
(16, 'FAR CRY 6', '2021-10-07 00:00:00', 'https://dixgamer.com/wp-content/uploads/2021/07/far-cry-6.jpg  ', 'FAR CRY 6 ', 'Far Cry 6 es un videojuego de acción y disparos en mundo abierto protagonizado por Dani Rojas, un guerrillero local (a elegir entre hombre o mujer) de Yara que lucha por la liberación de su nación contra Antón Castillo —interpretado por Giancarlo Esposito, Gus Fring en la recordada Breaking Bad— y su hijo. Desarrollado por Ubisoft Toronto, Far Cry 6 ambienta su acción en Yara, un paraíso tropical detenido en el tiempo en el que el jugador ha de luchar contra las tropas de su tiránico gobernante a través a junglas, playas y Esperanza, la caótica capital de este ficticio país del Caribe, valiéndose para ello de armas improvisadas, vehículos y, una vez más, nuevos compañeros animales.  UbiSoft entrega al usuario un juego donde se mantiene parte de los pilares de la saga, invitando a recorrer una vasta y variada extensión de terreno con nuevas formas de transporte como caballos y tanques, sin olvidarnos de coches clásicos, deportivos, motos y quads, lanchas y embarcaciones, helicópteros y aviones, etc. La variedad también deja su huella en el arsenal disponible, con la posibilidad de encontrar armas estrambóticas como un lanza-CD. Todo lo necesario para liderar, solo o en cooperativo, la revolución que acabe con Castillo junto a rebeldes como Clara García, líder del grupo revolucionario Libertad, y Juan Cortez, ex espía de la KGB y maestro de la guerrilla.', 0, 0, 3599, 'https://areajugones.sport.es/wp-content/uploads/2020/07/far-cry-6-screenshot-1.jpg ', 'https://gamek.mediacdn.vn/133514250583805952/2021/10/7/photo-1-16336019135841694396223.jpeg', 'https://www.gamingcoffee.com/wp-content/uploads/2020/07/fc1.jpg', 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2021/10/far-cry-6-embargo-dia-6-octubre-2489267.jpg?itok=f9IvVSQR', 'https://www.youtube.com/embed/fE0cBXPshZo'),
(17, 'SPIDER-MAN', '2018-09-07 00:00:00', 'https://i.3djuegos.com/juegos/13417/spiderman_ps4__nombre_provisional_/fotos/ficha/spiderman_ps4__nombre_provisional_-4004812.webp  ', 'SPIDER-MAN ', 'Spiderman protagoniza este videojuego de acción desarrollado por Insomniac Games, los autores de Resistance y Ratchet & Clank entre otros, en exclusiva para PS4. La historia de esta aventura es totalmente original y nos pone en el rol de un Peter Parker experimentado y maduro que debe lidiar con los problemas que suponen el tener que salvar Manhattan de los peores criminales o villanos y compatibilizarlo con su vida personal. De hecho, el trepamuros de Marvel se enfrenta a varios de sus peores enemigos, poniendo a pruebas las habilidades del alter-ego más acrobático de Parker.  En el espectacular Marvel\'s Spider-Man te esperan saltos, combos de combates, carreras y acrobacias aprovechando el uso de técnicas de Parkour y muchas, muchas telarañas gestionadas por un extenso y variado sistema de combos y habilidades que ofrecen gran libertad de movimientos y posibilidades. Spiderman en PlayStation 4 cuenta con intensa acción, pero también con mecánicas de sigilo y un apartado visual impactante y muy cinematográfico para crear unas cinemáticas de auténtico infarto. El lanzamiento del videojuego de Spiderman para PS4 tuvo lugar el 7 de septiembre de 2018.', 40, 1, 7500, 'https://i.3djuegos.com/juegos/13417/spiderman_ps4__nombre_provisional_/fotos/set/spiderman_ps4__nombre_provisional_-5721085.webp ', 'https://i.3djuegos.com/juegos/13417/spiderman_ps4__nombre_provisional_/fotos/set/spiderman_ps4__nombre_provisional_-5721076.webp', 'https://i.3djuegos.com/juegos/13417/spiderman_ps4__nombre_provisional_/fotos/set/spiderman_ps4__nombre_provisional_-5721079.webp', 'https://i.3djuegos.com/juegos/13417/spiderman_ps4__nombre_provisional_/fotos/set/spiderman_ps4__nombre_provisional_-5721082.webp', 'https://www.youtube.com/embed/4rKFkLeRF3Q'),
(18, 'UNCHARTED 4', '0000-00-00 00:00:00', 'https://i.3djuegos.com/juegos/8184/uncharted_4/fotos/ficha/uncharted_4-4946893.webp    ', 'UNCHARTED 4  ', ' Uncharted 4: El Desenlace del Ladrón es un juego exclusivo de PS4 creado por Naughty Dog, y editado por Sony Interactive Entertainment. Un videojuego que viene a cerrar las aventuras del conocido buscador de tesoros tan conocido en consolas PlayStation. El título es una aventura de acción y exploración en tercera persona protagonizada por Nathan Drake, que en esta entrega de la saga se plantea un dilema existencial tras todas las hazañas vividas en los anteriores videojuegos. De hecho ahondamos en el pasado del héroe, puesto que a lo largo de la campaña conocemos a su hermano Sam Drake, una de las grandes novedades y un punto de mucha importancia a la hora de ahondar en la fascinante génesis de este auténtico Indiana Jones de las videoconsolas.  Acción, aventuras y plataformas con ritmo cinematográfico de manos de los creadores de The Last of Us y Crash Bandicoot, entre muchos otros, que eleva el listón de espectacularidad de los juegos anteriores con un sinfín de escenas de ritmo trepidante dispuestas a llevarnos al límite en tiroteos, acrobacias y secuencias de plataformas. En Uncharted 4: A Thief\'s End no faltan a su cita unos rompecabezas que ponen a prueba nuestra capacidad para \"darle al coco\", ni tampoco algunas ideas y mecánicas jugables nuevas como el hecho de que podemos escoger qué dice el héroe en algunos diálogos.  ¿El punto fuerte de Uncharted 4? El coqueteo de este episodio con el mundo abierto, con varios capítulos que nos dejan enormes cotas de libertad para recorrerlos y explorarlos a nuestro gusto, incluyendo el mano de vehículos como jeeps o lanchas motoras. Adicionalmente a su modo de juego individual, el principal reclamo del programa, Uncharted 4 tiene modo multijugador de carácter competitivo para hasta 10 jugadores, como algunas de las entregas anteriores, y participa en la Liga Oficial PlayStation. ', 0, 1, 4800, 'https://i.3djuegos.com/juegos/8184/uncharted_4/fotos/set/uncharted_4-3573429.webp  ', 'https://i.3djuegos.com/juegos/8184/uncharted_4/fotos/set/uncharted_4-3379056.webp', 'https://i.3djuegos.com/juegos/8184/uncharted_4/fotos/set/uncharted_4-3379046.webp', 'https://i.3djuegos.com/juegos/8184/uncharted_4/fotos/set/uncharted_4-3379052.webp', 'https://www.youtube.com/embed/hh5HV4iic1Y'),
(19, 'FIFA 23', '2022-10-01 00:00:00', 'https://d3ugyf2ht6aenh.cloudfront.net/stores/873/723/products/32569cd3-cbdf-4fcc-a3c4-c32466911aba-7c8c4467ea9785d48716590506362607-1024-1024.jpeg  ', 'FIFA 23    ', 'FIFA 23 es un simulador de fútbol de EA Sports, el último bajo esta denominación, que busca ofrecer al usuario el mejor videojuego de fútbol de la historia con más características, modos de juego, contenido del Mundial, clubes, ligas, competiciones y jugadores. Desde la firma norteamericana apuestan por llevar el juego del mundo al campo, con la tecnología HyperMotion2 que ofrece una experiencia de juego aún más realista, tanto la Copa del Mundo masculina como la femenina, que llegarán al juego más adelante en forma de actualización, la incorporación de equipos femeninos, funciones de juego cruzado, y mucho más.  FIFA 23 garantiza a sus jugadores disfrutar de una autenticidad única con más de 19.000 jugadores, más de 700 equipos, 100 estadios y más de 30 ligas, así como un curioso crossover con Ted Lasso. Las principales mejoras del videojuego están en el modo Carrera, que ha sumado numerosas novedades para permitir llevar a tu crack a lo más alto del fútbol mundial. ¿Prefieres hacerlo desde el punto de vista del entrenador? No dudes en convertirte en Ancelotti y dirigir a tu equipo a por otra Champions League. Más allá de lo meramente futbolístico, FIFA también te invita a seguir la vida de tu protagonista gestionando sus relaciones con sus compañeros, negocios y otros campos lejos del fútbol.  Volta y Clubes Pro también regresan, ofreciendo la primera una experiencia más desenfadada del fútbol callejero y el segundo la posibilidad de jugar junto a otros 21 futbolistas un partido virtual. ¿Podrás llevar a lo más alto a tu equipo? ¡No te muevas de tu posición! FIFA 23 es una producción muy completa en la que cualquier fan del fútbol puede encontrar su lugar.    ', 0, 1, 7000, 'https://i.3djuegos.com/juegos/18521/fifa_23/fotos/set/fifa_23-5731454.webp    ', 'https://i.3djuegos.com/juegos/18521/fifa_23/fotos/set/fifa_23-5731469.webp', 'https://i.3djuegos.com/juegos/18521/fifa_23/fotos/set/fifa_23-5718183.webp', 'https://i.3djuegos.com/juegos/18521/fifa_23/fotos/set/fifa_23-5709192.webp', 'https://www.youtube.com/embed/oIfJ5otWchw'),
(20, 'GTA V', '2018-04-03 00:00:00', 'https://sm.ign.com/ign_es/screenshot/r/rockstar-hace-publica-la-caratula-de-gta-5/rockstar-hace-publica-la-caratula-de-gta-5_e852.jpg', 'Grand Theft Auto V  ', 'GTA 5 es la quinta entrega de la exitosa saga de videojuegos sandbox desarrollada por Rockstar Games, Grand Theft Auto. Con millones de ventas a sus espaldas y uno de los mundos abiertos más ricos hasta la fecha, Grand Theft Auto V transporta al jugador a Los Santos, una extensa y soleada metrópolis en declive que lucha por mantenerse a flote en una era de incertidumbre económica y realities baratos que referencia de una forma paródica a la Los Ángeles de nuestro tiempo.  En este contexto tan crítico y sarcástico de la sociedad actual, tres criminales muy diferentes barajan sus probabilidades de éxito: Franklin, un estafador callejero en busca de mucho dinero; Michael, profesional ex convicto con un retiro muy diferente al que imaginaba; y por último Trevor, un maníaco violento cuya motivación pasa por encontrar drogas baratas que meterse y propinar nuevos atracos. Los tres unidos crean una banda en la que se lo jugarán al todo o nada para lograr el gran golpe de sus vidas: hacerse ricos.  Y es que GTA 5 combina historia y jugabilidad de una nueva forma vista en la serie. Los jugadores entran y salen repetidamente de las vidas de los tres personajes, participando en todos los aspectos de la historia entrelazada del juego. Un mundo abierto gigantesco repleto de posibilidades y experiencias: desde atracos, persecuciones policiales, carreras y tiroteos, hasta actividades más pintorescas como saltar en paracaídas, jugar al tenis o al golf entre otros. Además el título de Rockstar incluye un potente modo multijugador llamado GTA Online, un juego de mundo abierto dinámico y persistente para 16 jugadores (30 en PS4, Xbox One y PC) que comparte el contenido y la mecánica con Grand Theft Auto V, pero que se expande con nuevos contenidos adicionales de forma continua.  ', 0, 1, 8900, 'https://i.3djuegos.com/juegos/5065/grand_theft_auto_v/fotos/set/grand_theft_auto_v-2357428.webp  ', 'https://i.3djuegos.com/juegos/5065/grand_theft_auto_v/fotos/set/grand_theft_auto_v-2357430.webp', 'https://i.3djuegos.com/juegos/5065/grand_theft_auto_v/fotos/set/grand_theft_auto_v-2357444.webp', 'https://i.3djuegos.com/juegos/5065/grand_theft_auto_v/fotos/set/grand_theft_auto_v-2357446.webp', 'https://www.youtube.com/embed/QkkoHAzjnUs'),
(22, 'CALL OF DUTY', '2022-10-28 00:00:00', 'http://d3ugyf2ht6aenh.cloudfront.net/stores/498/047/products/call-of-duty-modern-warfare-2-capaing1-10f0c7a022a22f905015957141934157-640-0.png', 'Call of Duty: Modern Warfare 2 (2022) ', 'Call of Duty: Modern Warfare 2 (2022) es una versión reimaginada del MW2 de 2009: el shooter bélico de Activision nos devuelve a la Task Force 141 en el modo campaña, donde personajes como Price, Soap o Ghost forman equipo para dar caza a al líder emergente de la organización terrorista Al-Qatala. Todo ello, con una versión superior del motor gráfico IW Engine que cuenta con una IA mejorada, así como numerosos ajustes para las físicas del agua y el sonido espacial. El juego arrastra mecánicas que han aparecido en la franquicia a lo largo de entregas más recientes, de tal forma que además del sprint táctico también figuran el cuerpo a tierra o la posibilidad de apoyar el arma en casi cualquier superficie entre otras cosas.  Para el multijugador, Infinity Ward prepara la lista de juego debutante \"foso en tercera persona\" así como otras dos ambientadas en mapas grandes con vehículos y milicianos controlados por la máquina (\"guerra terrestre\" e \"invasión\") para 32 jugadores en lugar de 12 como el resto de modos. Por supuesto, el programa de soporte postlanzamiento va estrechamente vinculado al futuro de Call of Duty: Warzone 2.0, que es un cliente separado alojando la acción al estilo battle royale pero con numerosos contenidos compartidos entre ambos títulos. ', 0, 1, 5800, 'https://i.3djuegos.com/juegos/18491/call_of_duty_modern_warfare_2/fotos/set/call_of_duty_modern_warfare_2-5765383.webp ', 'https://i.3djuegos.com/juegos/18491/call_of_duty_modern_warfare_2/fotos/set/call_of_duty_modern_warfare_2-5765386.webp', 'https://i.3djuegos.com/juegos/18491/call_of_duty_modern_warfare_2/fotos/set/call_of_duty_modern_warfare_2-5765389.webp', 'https://i.3djuegos.com/juegos/18491/call_of_duty_modern_warfare_2/fotos/set/call_of_duty_modern_warfare_2-5765392.webp', 'https://www.youtube.com/embed/VWqqQUhzSDg'),
(23, 'TNMT', '2022-08-30 00:00:00', 'https://i.3djuegos.com/juegos/18405/teenage_mutant_ninja_turtles_the_cowabunga_collection/fotos/ficha/teenage_mutant_ninja_turtles_the_cowabunga_collection-5710631.webp', 'TNMT: The Cowabunga Collection', 'Teenage Mutant Ninja Turtles: The Cowabunga Collection es un recopilatorio de Konami de varios clásicos arcade de las Tortugas Ninja de Nintendo Entertainment System, Super NES, Sega Mega Drive y Nintendo Gameboy. Desarrollado por Digital Eclipse, el pack incluye los juegos arcade de Cowabunga Collection (Teenage Mutant Ninja Turtles y Teenage Mutant Ninja Turtles: Turtles in Time), os juegos de 8 bits TMNT II: The Arcade Game, TMNT III: The Manhattan Project, y los de 16 bits TMNT IV: Turtles in Time, y The Hyperstone Heist. Incorpora además soporte multijugador.', 15, 0, 3600, 'https://i.3djuegos.com/juegos/18405/teenage_mutant_ninja_turtles_the_cowabunga_collection/fotos/set/teenage_mutant_ninja_turtles_the_cowabunga_collection-5733969.webp', 'https://i.3djuegos.com/juegos/18405/teenage_mutant_ninja_turtles_the_cowabunga_collection/fotos/set/teenage_mutant_ninja_turtles_the_cowabunga_collection-5733972.webp', 'https://i.3djuegos.com/juegos/18405/teenage_mutant_ninja_turtles_the_cowabunga_collection/fotos/set/teenage_mutant_ninja_turtles_the_cowabunga_collection-5733975.webp', 'https://i.3djuegos.com/juegos/18405/teenage_mutant_ninja_turtles_the_cowabunga_collection/fotos/set/teenage_mutant_ninja_turtles_the_cowabunga_collection-5733978.webp', 'https://www.youtube.com/embed/R-78FD9xvc0'),
(24, 'THE LAST OF US', '2020-06-19 00:00:00', 'https://i.3djuegos.com/juegos/14236/the_last_of_us_2/fotos/ficha/the_last_of_us_2-4977782.webp', 'The Last of Us 2', 'The Last of Us 2 para PS4 es un videojuego de acción y aventuras, con elementos de supervivencia, enmarcado en un mundo postapocalíptico donde habitan unos seres infectados. Al igual que la primera parte, esta continuación o Part II de The Last of Us busca hacerse fuerte en mecánicas jugables como la exploración o el combate con un fuerte elemento táctico, no sólo plantando cara a los zombies y criaturas de pesadilla de su mundo de infectados, sino también ofreciendo resistencia a los humanos... Peores en algunos casos que las más infernales de las criaturas, y caracterizados por su crueldad.  Esta secuela de la premiada obra de Naughty Dog lanzada originalmente en 2013 para PS3 (y remasterizada posteriormente en PlayStation 4), promete una historia al nivel de sus personajes, de gran intensidad, desgarradora y emocional protagonizada por Ellie, aunque también hay partes jugables para Joel. Neil Druckmann, principal guionista del estudio creador de la serie Uncharted, ya ha prometido que la historia de The Last of Us: Part II girará alrededor del odio, en contraposición a un juego original donde la temática principal era el amor. The Last of Us 2 (TLoU2) es actualmente uno de los juegos más esperados de PS4 y PS4 Pro.  La campaña, protagonizada por Ellie, está llena de sorpresas que no te desvelaremos para evitar spoilers, pero puedes esperar muchos giros argumentales en una historia que puedes superar en unas 25-30 horas para conocer el desenlace de la primera parte. Uno de los videojuegos más recordados de PlayStation 3, que tiene secuela en PS4 y que tiene todavía a día de hoy a la espera su prometido apartado multijugador. El videojuego se alzó con el GOTY 2020 en los The Game Awards, y también fue elegido como el mejor título del año para los lectores de 3DJuegos.  El videojuego sigue mezclando los elementos de sigilo que tan bien funcionaron en la primera parte, y lo hace con un estilo todavía más cinematográfico para este The Last of Us: Parte 2. Con un planteamiento violentísimo y una manera de mezclar las cinemáticas con las partes jugables muy propia de Naughty Dog, padres de la saga Uncharted. El videojuego destaca, además, por algunos aspectos en los que brilla tradicionalmente el estudio norteamericano como, por ejemplo, la cuidada dirección artística, la poderosa banda sonora compuesta por el cinematográfico Gustavo Santaolalla o la potencia tecnológica y narrativa de la experiencia.', 65, 1, 12350, 'https://i.3djuegos.com/juegos/14236/the_last_of_us_2/fotos/set/the_last_of_us_2-5168892.webp', 'https://i.3djuegos.com/juegos/14236/the_last_of_us_2/fotos/set/the_last_of_us_2-5168895.webp', 'https://i.3djuegos.com/juegos/14236/the_last_of_us_2/fotos/set/the_last_of_us_2-5168904.webp', 'https://i.3djuegos.com/juegos/14236/the_last_of_us_2/fotos/set/the_last_of_us_2-5147615.webp', 'https://www.youtube.com/embed/VSLSvEjDm5s'),
(25, '13 SENTINELS', '2020-09-10 00:00:00', 'https://i.3djuegos.com/juegos/12413/13_sentinels_aegis_rim/fotos/ficha/13_sentinels_aegis_rim-5232600.webp', '13 Sentinels: Aegis Rim', '13 Sentinels: Aegis Rim es un videojuego de acción, aventura y ciencia ficción cargado de épica, protagonizado por 13 jóvenes estudiantes que se enfrentan a la amenaza de los kaijus a bordo de gigantescos robots de combate con un gran arsenal de armas, los Centinelas, y han de luchar por salvar el futuro de la humanidad.  Obra de Vanillaware, autores de los aclamados Odin Sphere y Dragon\'s Crown, 13 Sentinels: Aegis Rim ofrece una historia de giros y misterios constantes con la compañía de ese estilo artístico en 2D tan característico de la compañía, junto con unos combates de estrategia en 3D repletos de emoción a bordo de los mechas.', 0, 0, 9825, 'https://i.3djuegos.com/juegos/12413/13_sentinels_aegis_rim/fotos/set/13_sentinels_aegis_rim-5232619.webp', 'https://i.3djuegos.com/juegos/12413/13_sentinels_aegis_rim/fotos/set/13_sentinels_aegis_rim-5232634.webp', 'https://i.3djuegos.com/juegos/12413/13_sentinels_aegis_rim/fotos/set/13_sentinels_aegis_rim-5232637.webp', 'https://i.3djuegos.com/juegos/12413/13_sentinels_aegis_rim/fotos/set/13_sentinels_aegis_rim-5232640.webp', 'https://www.youtube.com/embed/6KIGjyI5CDo'),
(26, 'YAKUZA', '2020-11-10 00:00:00', 'https://i.3djuegos.com/juegos/16521/yakuza__2019_/fotos/ficha/yakuza__2019_-5298206.webp', 'Yakuza: Like a Dragon', 'Cambio de protagonista y también cambio en la acción para la serie Yakuza con Yakuza: Like a Dragon (Yakuza 7), un RPG con combates por turnos que nos pone en la piel de Ichiban Kasuga (un miembro de la yakuza de bajo nivel), quien tras pasar cerca de 20 años en prisión, regresa a Yokohama para descubrir que su jefe ha sido asesinado. A partir de ahí los fans de la serie Yakuza pueden esperar todo aquello que ha hecho grande a esta franquicia de Sega.', 25, 0, 6985, 'https://i.3djuegos.com/juegos/16521/yakuza__2019_/fotos/set/yakuza__2019_-5297873.webp', 'https://i.3djuegos.com/juegos/16521/yakuza__2019_/fotos/set/yakuza__2019_-5297855.webp', 'https://i.3djuegos.com/juegos/16521/yakuza__2019_/fotos/set/yakuza__2019_-5297919.webp', 'https://i.3djuegos.com/juegos/16521/yakuza__2019_/fotos/set/yakuza__2019_-5297927.webp', 'https://www.youtube.com/embed/hkygiqC7ulQ'),
(27, 'GHOST', '2022-07-22 00:00:00', 'https://i.3djuegos.com/juegos/15027/proyecto_sucker_punch/fotos/ficha/proyecto_sucker_punch-5215558.webp', 'Ghost of Tsushima', 'Ghost of Tsushima es un videojuego de acción y aventura en mundo abierto protagonizado por un samurai maltratado, luchando contra probabilidades abrumadoras durante la invasión a Japón del ejército mongol en el año 1274. Desarrollado en exclusiva para PS4 por Sucker Punch, autores de la serie inFAMOUS, Ghost of Tsushima garantiza hacer un buen trato de su narrativa así como las habilidades de tal mítica figura guerrera durante el Japón feudal, inspirándose para ello en grandes películas, con especial mención a Akira Kurosawa, así como en pinturas, carteles y otros juegos.  Sucker Punch asegura con Ghost of Tsushima su mayor apuesta hasta la fecha, un vasto entorno rico y lleno de sorpresas con hasta tres regiones distintas con más de cuarenta biomas y cientos de puntos de interés para recorrer atravesando bosques, terrenos pantanosos y paisajes montañosos helados con personajes profundos y lugares históricos, pero también con oponentes a los que desafiar en una experiencia de combate samurái que apuesta a dar una gran inmersión al usuario, con tiempo para el sigilo y el tiro con arco además de para usar la katana. Todo lo necesario para que Jin, protagonista de su historia, forje un nuevo camino para proteger a su gente y recuperar su hogar.  No es el único atractivo de la producción de PlayStation Studios, además de un Modo Foto realmente especial dada la ambientación y el mimo por el detalle de sus responsables, Ghost of Tsushima cuenta con Legends, un cooperativo para cuatro jugadores donde elegir entre cuatro clases (samurái, cazador, ronin o asesino) para participar en misiones o en un modo supervivencia de oleadas.', 15, 1, 7859, 'https://i.3djuegos.com/juegos/15027/proyecto_sucker_punch/fotos/set/proyecto_sucker_punch-5271324.webp', 'https://i.3djuegos.com/juegos/15027/proyecto_sucker_punch/fotos/set/proyecto_sucker_punch-5271336.webp', 'https://i.3djuegos.com/juegos/15027/proyecto_sucker_punch/fotos/set/proyecto_sucker_punch-5271354.webp', 'https://i.3djuegos.com/juegos/15027/proyecto_sucker_punch/fotos/set/proyecto_sucker_punch-5271357.webp', 'https://www.youtube.com/embed/jT9edKarhc8'),
(28, 'DRAGON QUEST', '2018-09-04 00:00:00', 'https://i.3djuegos.com/juegos/11107/dragon_quest_xi/fotos/ficha/dragon_quest_xi-4729975.webp', 'Dragon Quest XI', 'Dragon Quest XI: Ecos de un Pasado Perdido es el undécimo episodio de una de las sagas de rol más míticas de Japón, Dragon Quest. El título permite jugar la misma historia en Nintendo 3DS, Nintendo Switch y PS4, y conmemora el 30 aniversario de la franquicia de Yuji Hori y Toriyama. En esta ocasión el JRPG está protagonizado por un joven de 16 años, que emprende un viaje para conocer la verdad sobre su destino en compañía de un variopinto grupo de personajes. Entre las principales novedades o diferencias entre Dragon Quest 11 y entregas precedentes, destacan sus grandes entornos y mejoras en el combate, Zone, que potencia a aliados y monstruos, y Link, que encadena ataques de héroes.', 0, 1, 5000, 'https://i.3djuegos.com/juegos/11107/dragon_quest_xi/fotos/set/dragon_quest_xi-4649257.webp', 'https://i.3djuegos.com/juegos/11107/dragon_quest_xi/fotos/set/dragon_quest_xi-4649260.webp', 'https://i.3djuegos.com/juegos/11107/dragon_quest_xi/fotos/set/dragon_quest_xi-4649263.webp', 'https://i.3djuegos.com/juegos/11107/dragon_quest_xi/fotos/set/dragon_quest_xi-4649266.webp', 'https://www.youtube.com/embed/Bmy3IkNPZjE'),
(29, 'GOD OF WAR', '2018-04-20 00:00:00', 'https://i.3djuegos.com/juegos/11552/god_of_war_ps4__nombre_temporal_/fotos/ficha/god_of_war_ps4__nombre_temporal_-3754796.webp    ', 'God of War  ', 'Vídeojuego de la saga God of War que responde al escueto nombre de God of War, y que traslada su fórmula jugable desde la antigua Grecia de las aventuras de Kratos a una ambientación nórdica de lo más llamativa donde retorna su carismático protagonista en una historia de padre e hijo que promete recuperar una parte de la humanidad perdida del espartano gracias a la presencia de su vástago, de nombre Atreus, y que es parte capital de la campaña individual, como siempre, punto fundamental del atractivo de esta legendaria serie de hack and slash con contextos mitológicos tras de sí. De hecho, y tras el experimento del on-line de God of War Ascension, desde Sony se ha garantizado que en esta entrega no habrá elemento multijugador.  El título no pierde ni un ápice de la violencia que ha caracterizado a la IP hasta la fecha, y mezcla con enorme fluidez potentes secuencias de carácter cinemático con escenas puramente in-game caracterizadas por una visceralidad descomunal. Eso sí, en lugar de la cámara fija y el estilo Hack and Slash de entregas anteriores, en esta ocasión Sony Santa Monica apuesta por una perspectiva más propia del género de acción y aventuras y un planteamiento más abierto (sin llegar a ser un sandbox) para el debut de una de las franquicias estrella de la marca PlayStation en PS4.  Enorme expectación la que ha rodeado desde su anuncio al retorno del espartano más conocido de la historia de los videojuegos, con un vídeo de presentación que superó con facilidad las 15 millones de reproducciones en YouTube y con especial interés por parte de los aficionados a la hora de conocer cómo se adaptará Kratos a la mitología nórdica tras haberse barajado incluso el antiguo Egipto como posible ambientación. También levanta expectación el factor de las \\\"rutas alternativas\\\" de juego que desde los responsables de este título destinado en exclusiva a PlayStation 4 y PS4 Pro prometen para aderezar su modo historia. Firmado por el equipo del juego original casi en su totalidad, con contadas aunque notables excepciones como el creador de la franquicia David Jaffe, el respeto y el cariño por la marca están garantizados en este God of War.  ', 0, 0, 1897, 'https://i.3djuegos.com/juegos/11552/god_of_war_ps4__nombre_temporal_/fotos/set/god_of_war_ps4__nombre_temporal_-4011886.webp  ', 'https://i.3djuegos.com/juegos/11552/god_of_war_ps4__nombre_temporal_/fotos/set/god_of_war_ps4__nombre_temporal_-4011888.webp', 'https://i.3djuegos.com/juegos/11552/god_of_war_ps4__nombre_temporal_/fotos/set/god_of_war_ps4__nombre_temporal_-4011890.webp', 'https://i.3djuegos.com/juegos/11552/god_of_war_ps4__nombre_temporal_/fotos/set/god_of_war_ps4__nombre_temporal_-4011902.webp', 'https://www.youtube.com/embed/K0u_kAWLJOA'),
(30, 'SEKIRO', '2019-03-21 00:00:00', 'https://i.3djuegos.com/juegos/15431/shadows_die_twice/fotos/ficha/shadows_die_twice-4816854.webp', 'Sekiro: Shadows Die Twice', 'Sekiro: Shadows Die Twice es un juego de acción y aventuras en tercera persona con elementos de rol con el inconfundible estilo del estudio responsable de Dark Souls y Bloodborne. Los autores de Dark Souls y Activision parecen recuperar del olvido la mítica serie Tenchu para adentrarnos en el mundo de finales de 1500, la era Sengoku en Japón; un periodo brutal y sangriento en constante conflicto entre la vida y la muerte.  From Software nos pone con Sekiro: Shadows Die Twice a los mandos de un guerrero de noble corazón, cuya misión es rescatar a su amo, un joven señor, al tiempo que busca la venganza sobre su archienemigo. En el papel de “Sekiro” o “el lobo de un solo brazo”, los jugadores descubrirán las distintas formas de enfrentarse en combate a los enemigos de forma estratégica en este título que reinterpreta la fórmula clásica de los Souls para desarrollar un combate inigualable acompañado de mecánicas de sigilo.', 15, 0, 5894, 'https://i.3djuegos.com/juegos/15431/shadows_die_twice/fotos/set/shadows_die_twice-4823027.webp', 'https://i.3djuegos.com/juegos/15431/shadows_die_twice/fotos/set/shadows_die_twice-4823030.webp', 'https://i.3djuegos.com/juegos/15431/shadows_die_twice/fotos/set/shadows_die_twice-4823039.webp', 'https://i.3djuegos.com/juegos/15431/shadows_die_twice/fotos/set/shadows_die_twice-4823057.webp', 'https://www.youtube.com/embed/rXMX4YJ7Lks'),
(31, 'FIFA 22', '2021-10-01 00:00:00', 'https://i.3djuegos.com/juegos/17805/fifa_22/fotos/ficha/fifa_22-5479209.webp', 'FIFA 22', 'FIFA 22 es un videojuego de simulación de fútbol aún por presentar de EA Sports que llegará a las tiendas a finales del 2021 para PC y consolas. Aunque las ediciones de las consolas de la octava generación y PC son bastante continuistas, esta nueva entrega tiene como abanderada la tecnología Hypermotion, que permite lograr un comportamiento más realista de los jugadores dentro del campo y que es exclusiva de las versiones de nueva generación. Además, se han realizado cambios significativos en modalidades ya presentes como VOLTA (que prescinde del aspecto narrativo para ofrecer un arcade puro) o el modo carrera que ahora nos permite crear un club desde cero.  De nuevo, nos encontramos ante una edición cargada de contenidos como viene siendo habitual en la serie. FIFA 22 cuenta con casi la totalidad de licencias de los principales campeonatos y equipos del mundo, y eso incluye la UEFA Champions League en exclusiva tras la renovación del acuerdo con la UEFA por parte de la compaía norteamericana. Por último, FIFA 22 sigue vinculado a Ultimate Team, su exitoso y lucrativo modo de juego con cartas donde poder formar el equipo de tus sueños.', 50, 0, 8975, 'https://i.3djuegos.com/juegos/17805/fifa_22/fotos/set/fifa_22-5527595.webp', 'https://i.3djuegos.com/juegos/17805/fifa_22/fotos/set/fifa_22-5527553.webp', 'https://i.3djuegos.com/juegos/17805/fifa_22/fotos/set/fifa_22-5527607.webp', 'https://i.3djuegos.com/juegos/17805/fifa_22/fotos/set/fifa_22-5527541.webp', 'https://www.youtube.com/embed/o1igaMv46SY'),
(32, 'Nioh 2', '2018-02-21 00:00:00', 'https://i.3djuegos.com/juegos/15969/nioh_2/fotos/ficha/nioh_2-5102583.webp', 'Nioh 2', 'Team Ninja y Koei Tecmo se unen de nuevo para hacer realidad Nioh 2, una aventura de rol y acción que te lleva al Japón feudal en la piel de (Hideyoshi (mitad samurái, mitad Yokai), que deberá luchar contra peligrosos yokais dispuestos a segar tu alma. Tras el periplo de William Adams, en Nioh 2 toca encarar un nuevo desafío en el que el mismísimo Kou Shibusawa, mítico desarrollador japonés al frente de Koei, reinterpretará la historia del mítico samurái occidental creada por Akira Kurosawa. Un viaje por el traicionero periodo Sengoku y las profundidades del Oscuro Reino de los demonios.  Nioh 2: The Complete Edition es la última edición del aclamado juego de rol de acción de Team Ninja y es compatible con 4K Ultra-HD dando soporte para monitores de 44Hz prometiendo un juego suave como la seda a una velocidad constante de 120 FPS en sistemas compatibles. En su versión de PC agrega la opción de control y personalización de mouse y teclado. Esta versión agrega además soporte HDR, adaptabilidad a monitor de pantalla ancha y compatibilidad con DLSS.', 5, 0, 8975, 'https://i.3djuegos.com/juegos/15969/nioh_2/fotos/set/nioh_2-5101590.webp', 'https://i.3djuegos.com/juegos/15969/nioh_2/fotos/set/nioh_2-5101593.webp', 'https://i.3djuegos.com/juegos/15969/nioh_2/fotos/set/nioh_2-5101599.webp', 'https://i.3djuegos.com/juegos/15969/nioh_2/fotos/set/nioh_2-5101602.webp', 'https://www.youtube.com/embed/seySY0C4Vjg'),
(33, 'Persona 5', '2020-03-31 00:00:00', 'https://i.3djuegos.com/juegos/16371/persona_5_reloaded/fotos/ficha/persona_5_reloaded-5087524.webp', 'Persona 5: Royal', 'Persona 5: Royal es la nueva versión del JRPG de Atlus de 2016, una aventura que nos pone al mando de los Ladrones Fantasma de Corazones, un grupo de héroes inadaptados, que se adentran en el Metaverso para robar los deseos distorsionados de la gente, y curar a una sociedad moderna corrompida.  Una edición definitiva cargada de contenido, con dos personajes nuevos y un capítulo adicional de la trama que amplían la aventura con más horas, así como nuevas mecánicas de juego, nuevas ubicaciones con actividades, y multitud de mejoras en aspectos como la exploración, el combate y el día a día de nuestro personaje.', 0, 1, 7842, 'https://i.3djuegos.com/juegos/16371/persona_5_reloaded/fotos/set/persona_5_reloaded-4886057.webp', 'https://i.3djuegos.com/juegos/16371/persona_5_reloaded/fotos/set/persona_5_reloaded-4886060.webp', 'https://i.3djuegos.com/juegos/16371/persona_5_reloaded/fotos/set/persona_5_reloaded-4886063.webp', 'https://i.3djuegos.com/juegos/16371/persona_5_reloaded/fotos/set/persona_5_reloaded-4886066.webp', 'https://www.youtube.com/embed/SKpSpvFCZRw'),
(34, 'Lego Harry Potter Collection', '2018-10-20 00:00:00', 'https://i.3djuegos.com/juegos/13743/lego_harry_potter_collection/fotos/ficha/lego_harry_potter_collection-3540428.webp', 'Lego Harry Potter Collection', 'Hogwarts se viste de gala para recibir una nueva recopilación de Lego con Lego Harry Potter Collection, que recopila los dos videojuegos de la pasada generación en un mismo pack para permitir vivir todas las aventuras de Harry Potter, Hermione y Ron en un mismo videojuego. Sigue las andanzas del mago inglés desde su entrada en Hogwarts hasta el desenlace del malvado Lord Voldemort con el encanto y el tono clásico de las aventuras de Lego con Harry Potter Collection.', 35, 1, 4215, 'https://image.api.playstation.com/vulcan/img/rnd/202007/0219/bhT16enEcVf2T1an3We9GtJb.jpg', 'https://images.nintendolife.com/screenshots/93292/large.jpg', 'https://i0.wp.com/www.almadigitales.net/wp-content/uploads/2021/01/legoharrypottercollection1.jpg?fit=1920%2C1080&ssl=1', 'http://www.nintendoworldreport.com/media/48767/4/4.jpg', 'https://www.youtube.com/embed/JVnZ7F1LzLY'),
(35, 'Until Dawn', '2018-08-26 00:00:00', 'https://i.3djuegos.com/juegos/9130/until_dawn/fotos/ficha/until_dawn-2940847.webp', 'Until Dawn', 'Terror y decisiones son el alma de Until Dawn, este videojuego exclusivo para PS4 protagonizado por ocho adolescentes atrapados que deben intentar sobrevivir. Until Dawn es un título donde no falta un lugar inhóspito, un grupo de adolescentes y un misterio con grandes dosis de tensión que tanto gustan a los aficionados al terror teenager. Básicamente, Until Dawn es un homenaje de los videojuegos al género slasher y al terror adolescente con grandes valores audiovisuales y que, además, es rejugable porque cada partida puede ser muy distinta de la anterior', 0, 0, 3658, 'https://wisegeek.ru/kartinki/aae/1301-1600/1459-2.jpg', 'https://wisegeek.ru/kartinki/aae/1301-1600/1459-1.jpg', 'https://wisegeek.ru/kartinki/aae/1301-1600/1459-78.jpg', 'https://static.wikia.nocookie.net/until-dawn/images/0/0c/Machete.png/revision/latest?cb=20161127190918', 'https://www.youtube.com/embed/7i56sXYBy-c'),
(36, 'Detroit: Become Human', '2018-05-25 00:00:00', 'https://i.3djuegos.com/juegos/12503/detroit/fotos/ficha/detroit-3970991.webp', 'Detroit: Become Human', 'Detroit: Become Human es un videojuego de los creadores de Heavy Rain y Beyond: Dos Almas. En el título de Quantic Dream y David Cage, exclusivo para PlayStation 4, el jugador controla a Connor y Kara para vivir una aventura de ciencia ficción en la que la tecnología y las elecciones son las protagonistas.  Detroit: Become Human sitúa al jugador en la ciudad de Detroit en el año 2038, un futuro distópico donde el tejido industrial ha tomado impulso gracias a la introducción de los androides. Los androides han comenzado a comportarse como si realmente estuvieran vivos, y en este momento como jugadores tomaremos el control de Kara, Connor y Markus, tres androides cuyas decisiones determinarán el destino tanto de los androides como el de la Humanidad.  El videojuego Detroit Become Human sigue el sello de identidad de Quantic Dream, donde el jugador tendrá que tomar decisiones que cambiarán el transcurso de la historia: decisiones morales y grandes dilemas y asumir las consecuencias, ya que en algunos casos esto puede significar vivir o morir.  La versión de PS4 Pro de Detroit Become Human PS4 Pro mejora iluminación y la resolución del juego hasta los 2160p, mientras que los menús se ven a 4K.', 25, 0, 9871, 'https://i.3djuegos.com/juegos/12503/detroit/fotos/set/detroit-4554639.webp', 'https://i.3djuegos.com/juegos/12503/detroit/fotos/set/detroit-4554636.webp', 'https://i.3djuegos.com/juegos/12503/detroit/fotos/set/detroit-4554648.webp', 'https://i.3djuegos.com/juegos/12503/detroit/fotos/set/detroit-4554651.webp', 'https://www.youtube.com/embed/euULGCe8Y50'),
(37, 'ONRUSH', '2018-06-05 00:00:00', 'https://i.3djuegos.com/juegos/15327/onrush/fotos/ficha/onrush-4036812.webp', 'ONRUSH', 'Onrush es un juego de carreras desarrollado por Codemasters, editora británica con experiencia en títulos de alta velocidad. Presenta una jugabilidad más directa, arcade y desenfadada con pinceladas de Motorstorm, donde jugar con estilo es más importante que llegar a la línea de meta en primer lugar. Así pues, Onrush nos invita a realizar piruetas, visitar circuitos imposibles y asegurarnos de que nuestros rivales muerdan el polvo con nuestros turbos y derribes.', 80, 1, 7845, 'https://i.3djuegos.com/juegos/15327/onrush/fotos/set/onrush-4006999.webp', 'https://i.3djuegos.com/juegos/15327/onrush/fotos/set/onrush-4036790.webp', 'https://i.3djuegos.com/juegos/15327/onrush/fotos/set/onrush-4007003.webp', 'https://i.3djuegos.com/juegos/15327/onrush/fotos/set/onrush-4007005.webp', 'https://www.youtube.com/embed/38aIMNJKS-g'),
(38, 'Final Fantasy VII Remake', '2020-04-10 00:00:00', 'https://i.3djuegos.com/juegos/12156/final_fantasy_vii_remake/fotos/ficha/final_fantasy_vii_remake-4976605.webp', 'Final Fantasy VII Remake', 'Final Fantasy VII Remake es la reimaginación de la obra clásica de Square Soft de 1998. Tras más de veinte años de espera, el ansiado remake llega en distintas partes, con esta primera comprendiendo el arco de Midgar y expandiendo los eventos que ahí se producen en la aventura original. Cloud, un ex-miembro de SOLDADO, se une al grupo ecoterrorista de Avalancha con el fin de detonar una bomba en el corazón del reactor Mako de Shinra, un extractor de la energía vital del planeta utilizado en pos del progreso y la tecnología.  En esta nueva versión del juego cambiamos los combates por turnos por un nuevo sistema de batalla renovado y muy profundo que aunque acerca el combate hacia la acción, mantiene sus componentes más estratégicos, así como el gran sistema de Materias creado en la obra original para potenciar las habilidades de los personajes. El remake también expande la historia original, poniendo más compromiso en los mensajes ecológicos y políticos que se atisbaban en este primer arco, mientras profundiza en los primeros personajes que conocemos: Cloud, Barret, Tifa y Aeris.', 40, 1, 1547, 'https://i.3djuegos.com/juegos/12156/final_fantasy_vii_remake/fotos/set/final_fantasy_vii_remake-5107571.webp', 'https://i.3djuegos.com/juegos/12156/final_fantasy_vii_remake/fotos/set/final_fantasy_vii_remake-5107574.webp', 'https://i.3djuegos.com/juegos/12156/final_fantasy_vii_remake/fotos/set/final_fantasy_vii_remake-5107583.webp', 'https://i.3djuegos.com/juegos/12156/final_fantasy_vii_remake/fotos/set/final_fantasy_vii_remake-5107550.webp', 'https://www.youtube.com/embed/mDa45U8AKYU'),
(39, 'Bloodborne', '2018-03-25 00:00:00', 'https://i.3djuegos.com/juegos/11033/project_beast/fotos/ficha/project_beast-2739558.webp', 'Bloodborne', 'Bloodborne es un videojuego exclusivo para PS4 de los creadores de Demon\'s Souls y la trilogía Dark Souls, FromSoftware. El videojuego nos traslada al siglo XIX, a una especie de oscuro y tétrico Londres victoriano donde encontraremos todos los ingredientes de la saga Souls: exploración, un online distintivo y unos enfrentamientos a vida o muerte. La gran diferencia es que Bloodborne se orienta al combate ofensivo, arrebatándonos el escudo de entre las manos y obligándonos a atacar con las numerosas armas de fuego y nuevos movimientos.', 0, 0, 7543, 'https://i.3djuegos.com/juegos/11033/project_beast/fotos/set/project_beast-2737911.webp', 'https://i.3djuegos.com/juegos/11033/project_beast/fotos/set/project_beast-2737917.webp', 'https://i.3djuegos.com/juegos/11033/project_beast/fotos/set/project_beast-2737923.webp', 'https://i.3djuegos.com/juegos/11033/project_beast/fotos/set/project_beast-2737925.webp', 'https://www.youtube.com/embed/G203e1HhixY'),
(40, ' One Piece: World Seeker', '2019-03-15 00:00:00', 'https://i.3djuegos.com/juegos/15417/one_piece_world_seeker/fotos/ficha/one_piece_world_seeker-4671372.webp', 'One Piece: World Seeker', 'One Piece: World Seeker es un videojuego de acción y aventuras que conmemora los 20 años de historia del conocido manga de Eiichiro Oda. Este título de PS4, un videojuego dramático y de mundo abierto, nos permite revivir las grandes aventuras de Monkey D. Luffy y su tripulación pirata, los conocidos Piratas del Sombrero de Paja.  Como es habitual en One Piece, en World Seeker encontraremos fortalezas colosales, podremos estirar nuestros brazos y piernas para colgarnos de árboles, torres, edificios y aprovechar esta elasticidad para tomar impulso y sacar partido; incluso podemos girar nuestras piernas para, literalmente, flotar en el aire.  El sistema de combate de One Piece World Seeker nos permite luchar a largas distancias con certeros puñetazos y patadas, pudiendo aplicar cargas de energía a nuestros brazos, contando, como no, con el Jet Bazooka o el clásico Gomu Gomu no Gatling.', 0, 0, 2589, 'https://i.3djuegos.com/juegos/15417/one_piece_world_seeker/fotos/set/one_piece_world_seeker-4815337.webp', 'https://i.3djuegos.com/juegos/15417/one_piece_world_seeker/fotos/set/one_piece_world_seeker-4815340.webp', 'https://i.3djuegos.com/juegos/15417/one_piece_world_seeker/fotos/set/one_piece_world_seeker-4815346.webp', 'https://i.3djuegos.com/juegos/15417/one_piece_world_seeker/fotos/set/one_piece_world_seeker-4815331.webp', 'https://www.youtube.com/embed/4QkK4YcZrSc');
INSERT INTO `products` (`id`, `name`, `releasedata`, `img`, `fullname`, `description`, `discount`, `freeShipping`, `price`, `capture1`, `capture2`, `capture3`, `capture4`, `video`) VALUES
(41, 'Fortnite', '2018-07-28 00:00:00', 'data:image/jpeg;base64,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', 'Fortnite', 'Fortnite es un videojuego de Epic Games que presenta una apariencia cartoon que nos transporta a un rico mundo sandbox en el que explorar, hurgar o construir y, por último, sobrevivir. De hecho... ¿Quieres sobrevivir a los peligros de la noche? Construye durante el día y a toda prisa una fortaleza, aún usando para ello escombros, y reza para que sea resistente. Fortnite es, básicamente, un mundo de \"construcción de acción\", donde equipos de hasta 4 jugadores pueden explorar su mundo destruíble, reunir recursos y colaborar para construir impresionantes fuertes y armas tan alocadas como eficaces para poder sobrevivir.  En el juego de Epic puedes elegir el héroe que quieras entre sus más de 100 disponibles que se encuentran divididos en cuatro clases: Soldados, Constructores, Ninjas y Trotamundos. Entre sus herramientas tenemos ejes hidráulicos, fusiles de francotirador, plataformas lanzamisiles, torretas de ametralladoras y muchas más que puedes subir de nivel e ir desbloqueando. Además el juego Fortnite cuenta con una divertida modalidad llamada Fortnite Battle Royale, un modo multijugador competitivo de 100 jugadores completamente gratuito con un intenso combate jugador contra jugador. También pueden comprarse buenos packs de fundadores y contenidos, eso sin contar con los abundantes contenidos extra que llegan con las actualizaciones de Fortnite cada semana.', 0, 1, 4589, 'https://i.3djuegos.com/juegos/8298/fortnite/fotos/set/fortnite-5085600.webp', 'https://i.3djuegos.com/juegos/8298/fortnite/fotos/set/fortnite-4993564.webp', 'https://i.3djuegos.com/juegos/8298/fortnite/fotos/set/fortnite-5085603.webp', 'https://i.3djuegos.com/juegos/8298/fortnite/fotos/set/fortnite-4993550.webp', 'https://www.youtube.com/embed/-oFkQ5XTP6c'),
(42, 'Minecraft', '2018-11-18 00:00:00', 'http://d3ugyf2ht6aenh.cloudfront.net/stores/001/067/161/products/minecraft-cover-web1-01db749348e1b562fd15757793326663-640-0.png', 'Minecraft', 'Minecraft, más que un simple videojuego, es todo un fenómeno social, de hecho el segundo juego más vendido de la historia por detrás de Tetris es este sandbox diseñado por Markus \"Notch\" Persson y desarrollado por Mojang, más tarde adquirido por Microsoft. La propuesta invita a los jugadores a sobrevivir, crear y explorar un mundo abierto generado proceduralmente, dividido en biomas y compuesto íntegramente por bloques, tanto en personajes como entorno y objetos, confiriendo una estética pixel art a su mundo en 3D.  Con la libertad y la originalidad por bandera, Minecraft ofrece modo creativo con herramientas y bloques suficientes para construir casi cualquier mecanismo imaginable; así como un modo supervivencia donde los jugadores, en la piel de Steve, luchan sin parar contra los mobs (creepers, zombies, arañas, esqueletos, Enderman) por aguantar vivos un día más; y también compartir tales mundos en modo multijugador tanto cooperativo como PvP. Minecraft ha llevado su popularidad a consolas y compatibles de séptima y octava generación, y también posee un modo historia (Minecraft: Story Mode) desarrollado por Telltale Games.', 25, 1, 3658, 'https://i.3djuegos.com/juegos/7069/minecraft/fotos/set/minecraft-1479841.webp', 'https://i.3djuegos.com/juegos/7069/minecraft/fotos/set/minecraft-1479845.webp', 'https://i.3djuegos.com/juegos/7069/minecraft/fotos/set/minecraft-1479843.webp', 'https://i.3djuegos.com/juegos/7069/minecraft/fotos/set/minecraft-1479855.webp', 'https://www.youtube.com/embed/jMe3tdyjouM?list=TLPQMTAxMTIwMjI0l3yRZh1i7w'),
(43, 'Assassin\'s Creed IV: Jackdaw', '2018-03-27 00:00:00', 'data:image/jpeg;base64,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', 'Assassin\'s Creed IV: Jackdaw', 'Edición especial de Assassin\'s Creed IV: Black Flag que además del juego original incluye el DLC Grito de Libertad, el pack de 3 DLCs para personalizar tu navío y el pack de jugadores y personalización para multijugador.', 0, 0, 2457, 'https://static.wikia.nocookie.net/assassinscreed/images/4/4a/Trust_is_Earned_1.png/revision/latest?cb=20140201141331', 'https://www.hd-tecnologia.com/imagenes/articulos/2013/07/Assassins-Creed-4-Black-Flag-Novedades-4.jpg', 'https://static.ubi.com/0071/Assassins_Creed_4_Black_Flag/000096682_enGB_cabin_2.jpg', 'https://static.wikia.nocookie.net/theassassinscreed/images/4/47/AC4_Jackdaw.png/revision/latest?cb=20131128124905&path-prefix=es', 'https://www.youtube.com/embed/WFxjmpsNzJc?list=TLPQMTAxMTIwMjI0l3yRZh1i7w'),
(44, ' Far Cry 5', '2018-03-27 00:00:00', 'https://media.vandal.net/m/48289/far-cry-5-20183131312_1.jpg', 'Far Cry 5', 'Ambientado en la región de Hope County, en Montana, Far Cry 5 es la quinta entrega numerada de la saga de videojuegos de Ubisoft, Far Cry. Una marca que nos ha llevado por ambientaciones modernas y también prehistóricas, así como a través de lugares de lo más exótico. En esta ocasión el videojuego de acción y aventura o shooter nos lleva de la mano a Estados Unidos para explorar sorprendentes horizontes en un planteamiento de mundo abierto en el que los disparos, los vehículos y los animales salvajes siguen teniendo una importancia capital.  En Far Cry 5 tenemos que plantar cara a la secta Eden\'s Gate (Las Puertas del Edén), que es un peligroso culto del Día del Juicio final liderado por Joseph Seed, un auténtico villano en la tradición de otros enemigos legendarios de la saga como Pagan Min o el memorable Vaas Montenegro. Por supuesto este malvado personaje no está solo, y está acompañado por todo su ejército de esbirros, los Heraldos, que nos obligan a dar lo mejor de nosotros mismos en su planteamiento de acción en primera persona que esta vez admite superar su campaña individual en formato cooperativo. Definida por Ubisoft como la más grande y personalizable entrega de Far Cry hasta la fecha, FC5 ofrece vehículos de todo tipo: desde muscle cars, hasta ATV, aviones y muchos más medios de locomoción con los que recorrer su gigantesco mundo.  Far Cry 5 es, resumiendo, un cóctel de sectas, América Profunda y toda la acción y el desmadre de la saga Far Cry de Ubisoft, con un Joseph Seed como protagonista que ofrece muchas horas de entretenimiento.', 0, 0, 6584, 'https://i.3djuegos.com/juegos/14863/far_cry_5__nombre_provisional_/fotos/set/far_cry_5__nombre_provisional_-3996570.webp', 'https://i.3djuegos.com/juegos/14863/far_cry_5__nombre_provisional_/fotos/set/far_cry_5__nombre_provisional_-3996578.webp', 'https://i.3djuegos.com/juegos/14863/far_cry_5__nombre_provisional_/fotos/set/far_cry_5__nombre_provisional_-3996590.webp', 'https://i.3djuegos.com/juegos/14863/far_cry_5__nombre_provisional_/fotos/set/far_cry_5__nombre_provisional_-3996588.webp', 'https://www.youtube.com/embed/4hVME3O9wf4?list=TLPQMTAxMTIwMjI0l3yRZh1i7w'),
(45, 'Riders Republic', '2021-10-28 00:00:00', 'https://visualgamesuy.com/wp-content/uploads/2021/05/riders-republic-ps4-portada.jpg', 'Riders Republic', 'Riders Republic de Ubisoft es un videojuego de deportes extremos que combina la acción de Steep y Trials Rising para crear una alocada experiencia multijugador, donde hasta 50 jugadores compiten en frenéticas carreras en bicicletas, esquís y wingsuit a través de una gran variedad de escenarios naturales de Estados Unidos como Bryce Canyon o Yosemite Valley. Puedes disfrutar de retos en solitario, o apostar por los modos cooperativos y competitivos de Riders Republic, que incluye arenas donde competir por equipos de 6 vs 6. Con amplias opciones de personalización, puedes diseñar al deportista de tus sueños usando prendas de vestir estrafalarias y hasta disfraces de lo más variopintos. Este juego de deportes extremos sale en PC, PlayStation, Xbox y Stadia.', 0, 1, 1478, 'https://i.3djuegos.com/juegos/17536/riders_republic/fotos/set/riders_republic-5505392.webp', 'https://i.3djuegos.com/juegos/17536/riders_republic/fotos/set/riders_republic-5505386.webp', 'https://i.3djuegos.com/juegos/17536/riders_republic/fotos/set/riders_republic-5505401.webp', 'https://i.3djuegos.com/juegos/17536/riders_republic/fotos/set/riders_republic-5505411.webp', 'https://www.youtube.com/embed/5-cK95kS6M0?list=TLPQMTAxMTIwMjI0l3yRZh1i7w'),
(46, 'Hello Neighbor', '2018-12-06 00:00:00', 'https://juegosdigitalesargentina.com/files/images/productos/1544723229-hello-neighbor-ps4-primaria.jpeg', 'Hello Neighbor: Hide and Seek', 'Tras un aceptable recimiento del público de su primera entrega, Hello Neighbor: Hide and Seek se lanza buscando explicar al usuario el misterioso pasado del vecino justo antes del comienzo de la historia del juego original. En esta ocasión, los personajes jugables de Hello Neighbor: Hide and Seek serán los propios hijos del famoso vecino.', 35, 1, 3589, 'https://i.3djuegos.com/juegos/16153/hello_neighbor_hide_and_seek/fotos/set/hello_neighbor_hide_and_seek-4738573.webp', 'https://i.3djuegos.com/juegos/16153/hello_neighbor_hide_and_seek/fotos/set/hello_neighbor_hide_and_seek-4738561.webp', 'https://i.3djuegos.com/juegos/16153/hello_neighbor_hide_and_seek/fotos/set/hello_neighbor_hide_and_seek-4738570.webp', 'https://i.3djuegos.com/juegos/16153/hello_neighbor_hide_and_seek/fotos/set/hello_neighbor_hide_and_seek-4738567.webp', 'src=\"https://www.youtube.com/embed/eut-ehTyUJs?list=TLPQMTAxMTIwMjI0l3yRZh1i7w');

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
(22, 18, 6),
(23, 19, 4),
(24, 20, 1),
(25, 20, 5),
(26, 20, 6),
(27, 22, 1),
(28, 22, 5),
(29, 23, 1),
(30, 23, 6),
(31, 23, 7),
(32, 24, 1),
(33, 24, 6),
(34, 25, 1),
(35, 25, 6),
(36, 26, 1),
(37, 26, 6),
(38, 27, 1),
(39, 27, 6),
(40, 28, 6),
(41, 28, 7),
(42, 29, 1),
(43, 29, 6),
(44, 30, 1),
(45, 30, 6),
(46, 31, 4),
(47, 32, 1),
(48, 32, 7),
(49, 32, 8),
(50, 33, 1),
(51, 33, 7),
(52, 34, 1),
(53, 34, 6),
(54, 35, 1),
(55, 35, 6),
(56, 36, 6),
(57, 37, 3),
(58, 38, 1),
(59, 38, 7),
(60, 39, 1),
(61, 39, 7),
(62, 39, 8),
(63, 40, 1),
(64, 40, 6),
(65, 41, 1),
(66, 41, 5),
(67, 41, 6),
(68, 41, 7),
(69, 42, 1),
(70, 42, 6),
(71, 42, 10),
(72, 43, 1),
(73, 43, 6),
(74, 44, 1),
(75, 44, 6),
(76, 45, 4),
(77, 46, 1),
(78, 46, 6);

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
(18, 2, 15),
(19, 1, 16),
(20, 1, 17),
(20, 2, 18),
(22, 1, 19),
(22, 2, 20),
(23, 1, 21),
(23, 2, 22),
(24, 1, 23),
(24, 2, 24),
(25, 4, 25),
(26, 1, 26),
(26, 2, 27),
(26, 4, 28),
(27, 4, 29),
(28, 4, 30),
(29, 1, 31),
(30, 4, 32),
(31, 1, 33),
(32, 1, 34),
(32, 2, 35),
(32, 4, 36),
(33, 4, 37),
(34, 1, 38),
(35, 1, 39),
(36, 1, 40),
(37, 1, 41),
(38, 1, 42),
(38, 2, 43),
(39, 1, 44),
(40, 1, 45),
(40, 4, 46),
(41, 1, 47),
(42, 1, 48),
(43, 1, 49),
(44, 1, 50),
(45, 1, 51),
(46, 2, 52);

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
(18, 3, 18),
(19, 1, 19),
(19, 2, 20),
(20, 1, 21),
(20, 2, 22),
(22, 1, 23),
(22, 2, 24),
(23, 1, 25),
(23, 2, 26),
(23, 3, 27),
(24, 1, 28),
(25, 1, 29),
(26, 1, 30),
(27, 1, 31),
(28, 1, 32),
(29, 1, 33),
(30, 1, 34),
(31, 1, 35),
(31, 2, 36),
(31, 3, 37),
(32, 1, 38),
(32, 3, 39),
(33, 1, 40),
(34, 1, 41),
(34, 2, 42),
(34, 3, 43),
(35, 1, 44),
(36, 1, 45),
(37, 1, 46),
(37, 3, 47),
(38, 1, 48),
(39, 1, 49),
(39, 3, 50),
(40, 1, 51),
(41, 1, 52),
(41, 2, 53),
(41, 3, 54),
(42, 1, 55),
(42, 2, 56),
(43, 1, 57),
(43, 2, 58),
(44, 1, 59),
(44, 2, 60),
(45, 1, 61),
(45, 2, 62),
(46, 1, 63);

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
(10, 'Ignacio Menguez', 'nachomenguez22@gmail.com', '$2b$10$duL4PN1.PE4MouK/wDdVIOa8e0k4Z2qGFlGTIeVh07BprS2AUBaeC', NULL, '199768201_691792018849576_145844266768873327_n.jpg', 1),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `products_has_genders`
--
ALTER TABLE `products_has_genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `products_has_lenguages`
--
ALTER TABLE `products_has_lenguages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `products_has_players`
--
ALTER TABLE `products_has_players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
