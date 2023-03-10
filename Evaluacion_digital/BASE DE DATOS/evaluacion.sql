-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2020 a las 17:09:28
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evaluacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`) VALUES
(1, 'Literatura'),
(2, 'Sociales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegios`
--

CREATE TABLE `colegios` (
  `id_colegios` int(11) NOT NULL,
  `colegio` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `colegios`
--

INSERT INTO `colegios` (`id_colegios`, `colegio`) VALUES
(1, 'SENDA III');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionarios`
--

CREATE TABLE `cuestionarios` (
  `id` int(11) NOT NULL,
  `ci` int(12) NOT NULL,
  `ap` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `am` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `nom` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `cargo` int(1) NOT NULL,
  `id_datos` int(10) NOT NULL,
  `id_examen` int(10) NOT NULL,
  `act1` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `act2` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `act3` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `act4` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `act5` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `act6` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `act7` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `act8` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `act9` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `act10` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `resp1` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp2` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp3` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp4` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp5` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp6` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp7` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp8` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp9` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp10` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `ran1` int(3) NOT NULL,
  `ran2` int(3) NOT NULL,
  `ran3` int(3) NOT NULL,
  `ran4` int(3) NOT NULL,
  `ran5` int(3) NOT NULL,
  `ran6` int(3) NOT NULL,
  `ran7` int(3) NOT NULL,
  `ran8` int(3) NOT NULL,
  `ran9` int(3) NOT NULL,
  `ran10` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cuestionarios`
--

INSERT INTO `cuestionarios` (`id`, `ci`, `ap`, `am`, `nom`, `cargo`, `id_datos`, `id_examen`, `act1`, `act2`, `act3`, `act4`, `act5`, `act6`, `act7`, `act8`, `act9`, `act10`, `resp1`, `resp2`, `resp3`, `resp4`, `resp5`, `resp6`, `resp7`, `resp8`, `resp9`, `resp10`, `ran1`, `ran2`, `ran3`, `ran4`, `ran5`, `ran6`, `ran7`, `ran8`, `ran9`, `ran10`) VALUES
(1, 12345, 'ACOSTA', 'FLORES', 'YAIR', 3, 391, 1, '0', '10', '10', '10', '0', '10', '0', '0', '0', '0', 'Verbo', 'Verbo copulativo', 'PeriodÃ­stico', 'Determinante', 'Neutro', 'Epistolares', 'Ninguna de las anteriores', 'Sustituyen al verbo', 'Dos verbos o mÃ¡s', 'GÃ©nero poÃ©tico', 11, 6, 8, 3, 4, 7, 10, 5, 9, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dat_admin`
--

CREATE TABLE `dat_admin` (
  `id` int(11) NOT NULL,
  `ci` int(15) NOT NULL,
  `ap` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `am` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nom` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `grupo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `cargo` int(1) NOT NULL,
  `colegio` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `curso` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `paralelo` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `gestion` int(5) NOT NULL,
  `toque` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `dat_admin`
--

INSERT INTO `dat_admin` (`id`, `ci`, `ap`, `am`, `nom`, `grupo`, `cargo`, `colegio`, `nivel`, `curso`, `paralelo`, `gestion`, `toque`, `foto`) VALUES
(1, 123456, 'ORELLANA', 'MEJIA', 'WILSON', 'ADMINISTRADOR', 4, 'SENDA III', '', '', '', 2020, 'SI', 'mil.png'),
(393, 123, 'HINOJOSA', 'BOLIVAR', 'JABY', '', 3, 'SENDA III', 'SECUNDARIA', 'PRIMERO', 'A', 2020, '', 'foto.png'),
(392, 1234, 'CONDORI', 'PARRA', 'WILDER', '', 3, 'SENDA III', 'SECUNDARIA', 'PRIMERO', 'A', 2020, '', 'foto.png'),
(391, 12345, 'ACOSTA', 'FLORES', 'YAIR', '', 3, 'SENDA III', 'SECUNDARIA', 'PRIMERO', 'A', 2020, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE `examen` (
  `id` int(11) NOT NULL,
  `autor` int(10) NOT NULL,
  `categoria` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `consigna` varchar(210) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `preg1` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp1` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `preg2` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp2` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `preg3` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp3` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `preg4` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp4` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `preg5` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp5` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `preg6` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp6` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `preg7` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp7` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `preg8` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp8` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `preg9` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp9` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `preg10` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp10` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `colegio` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `curso` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `paralelo` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `gestion` int(5) NOT NULL,
  `bimestre` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_final` date NOT NULL,
  `tiempo` int(2) NOT NULL,
  `inicio` datetime NOT NULL,
  `final` datetime NOT NULL,
  `final1` datetime NOT NULL,
  `final2` datetime NOT NULL,
  `final3` datetime NOT NULL,
  `final4` datetime NOT NULL,
  `final5` datetime NOT NULL,
  `final6` datetime NOT NULL,
  `final7` datetime NOT NULL,
  `final8` datetime NOT NULL,
  `final9` datetime NOT NULL,
  `final10` datetime NOT NULL,
  `rand` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `examen`
--

INSERT INTO `examen` (`id`, `autor`, `categoria`, `titulo`, `consigna`, `estado`, `preg1`, `resp1`, `preg2`, `resp2`, `preg3`, `resp3`, `preg4`, `resp4`, `preg5`, `resp5`, `preg6`, `resp6`, `preg7`, `resp7`, `preg8`, `resp8`, `preg9`, `resp9`, `preg10`, `resp10`, `colegio`, `nivel`, `curso`, `paralelo`, `gestion`, `bimestre`, `fecha_final`, `tiempo`, `inicio`, `final`, `final1`, `final2`, `final3`, `final4`, `final5`, `final6`, `final7`, `final8`, `final9`, `final10`, `rand`) VALUES
(1, 123456, 'Literatura', 'El cuento', '', 'Publicado', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SENDA III', 'SECUNDARIA', 'PRIMERO', 'A', 2020, '1BIM', '2020-04-18', 1, '2020-04-19 16:53:36', '0000-00-00 00:00:00', '2020-04-19 16:54:36', '2020-04-19 16:55:03', '2020-04-19 16:55:10', '2020-04-19 16:55:16', '2020-04-19 16:55:24', '2020-04-19 16:55:28', '2020-04-19 16:55:32', '2020-04-19 16:55:35', '2020-04-19 16:55:38', '2020-04-19 16:55:42', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foros`
--

CREATE TABLE `foros` (
  `id` int(11) NOT NULL,
  `autor` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `categoria` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `titulo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `consigna` varchar(220) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `gestion` int(4) NOT NULL,
  `colegio` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nivel` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `curso` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `paralelo` varchar(1) COLLATE utf8mb4_spanish_ci NOT NULL,
  `bimestre` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha_final` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foros_lista`
--

CREATE TABLE `foros_lista` (
  `id` int(11) NOT NULL,
  `ci` int(20) NOT NULL,
  `ap` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `am` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cargo` int(1) NOT NULL,
  `id_foros` int(10) NOT NULL,
  `puntajes` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foros_participacion`
--

CREATE TABLE `foros_participacion` (
  `id_fp` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_foros` int(5) NOT NULL,
  `comentario` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `estrellas` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id_preguntas` int(11) NOT NULL,
  `id_examen` int(10) NOT NULL,
  `A` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `B` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `C` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `D` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `resp` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `preg` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id_preguntas`, `id_examen`, `A`, `B`, `C`, `D`, `resp`, `preg`, `numero`) VALUES
(1, 1, 'Una narraciÃ³n', 'Una diÃ¡logo', 'Un poema', 'Ninguna de las anteriores', 'Una narraciÃ³n', 'El cuento es', 1),
(2, 1, 'GÃ©nero narrativo', 'GÃ©nero poÃ©tico', 'GÃ©nero dramÃ¡tico', 'Ninguna de las anteriores', 'GÃ©nero narrativo', 'La poesÃ­a perternece al ', 2),
(3, 1, 'Determinante', 'Indeterminante', 'Neutro', 'Ninguna de las anteriores', 'Determinante', 'El arrticulo es una palabra', 3),
(4, 1, 'Determinante', 'Indeterminante', 'Neutro', 'Ninguna de las anteriores', 'Determinante', 'Las preposiciones son', 4),
(5, 1, 'Sustituyen al sustantivo', 'Sustituyen al verbo', 'Sustituyen al adverbio', 'Ninguna de las anteriores', 'Sustituyen al sustantivo', 'Los pronombres', 5),
(6, 1, 'Verbo copulativo', 'Verbo infinitivo', 'Verbo subjuntivo', 'Ninguna de las anteriores', 'Verbo copulativo', 'La palabra  \"ES\" es un', 6),
(7, 1, 'Epistolares', 'de oficina', 'de correspondencia', 'Ninguna de las anteriores', 'Epistolares', 'Las correspondencias y cartas pertenecen al tipo de textos', 7),
(8, 1, 'PeriodÃ­stico', 'Narrativos', 'CronolÃ³gicos', 'Ninguna de las anteriores', 'PeriodÃ­stico', 'El periÃ³dico pertenece al tipo de texto', 8),
(9, 1, 'Un solo verbo', 'Dos verbos o mÃ¡s', 'Dos verbos solamente', 'Ninguna de las anteriores', 'Un solo verbo', 'La oraciÃ³n simple tiene', 9),
(10, 1, 'tres puntos seguidos', 'cuatro puntos seguidos', '2 puntos seguidos', 'Ninguna de las anteriores', 'tres puntos seguidos', 'Los puntos suspensivos  consiste en ', 10),
(11, 1, 'Verbo', 'Sustantivo propio', 'Adverbio', 'Pronombre', 'Sustantivo propio', 'Automovil es un', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `id` int(11) NOT NULL,
  `autor` int(15) NOT NULL,
  `categoria` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `titulo` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `gestion` int(5) NOT NULL,
  `colegio` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nivel` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `curso` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `paralelo` varchar(1) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha_final` date NOT NULL,
  `bimestre` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos_lista`
--

CREATE TABLE `trabajos_lista` (
  `id` int(11) NOT NULL,
  `ci` int(15) NOT NULL,
  `ap` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `am` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nom` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cargo` int(1) NOT NULL,
  `id_trabajos` int(5) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `archivo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `puntaje` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colegios`
--
ALTER TABLE `colegios`
  ADD PRIMARY KEY (`id_colegios`);

--
-- Indices de la tabla `cuestionarios`
--
ALTER TABLE `cuestionarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dat_admin`
--
ALTER TABLE `dat_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `foros`
--
ALTER TABLE `foros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `foros_lista`
--
ALTER TABLE `foros_lista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `foros_participacion`
--
ALTER TABLE `foros_participacion`
  ADD PRIMARY KEY (`id_fp`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id_preguntas`);

--
-- Indices de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trabajos_lista`
--
ALTER TABLE `trabajos_lista`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `colegios`
--
ALTER TABLE `colegios`
  MODIFY `id_colegios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cuestionarios`
--
ALTER TABLE `cuestionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dat_admin`
--
ALTER TABLE `dat_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT de la tabla `examen`
--
ALTER TABLE `examen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `foros`
--
ALTER TABLE `foros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `foros_lista`
--
ALTER TABLE `foros_lista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `foros_participacion`
--
ALTER TABLE `foros_participacion`
  MODIFY `id_fp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id_preguntas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trabajos_lista`
--
ALTER TABLE `trabajos_lista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
