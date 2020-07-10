-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2020 a las 14:06:26
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `culdampolla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `Nom` text NOT NULL,
  `Codi_Postal` text NOT NULL,
  `Telefon` int(10) NOT NULL,
  `e-mail` varchar(30) NOT NULL,
  `Data_registre` date NOT NULL,
  `ulleres_id` int(11) NOT NULL,
  `client_nou` tinyint(1) NOT NULL,
  `recomanador_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id_client`, `Nom`, `Codi_Postal`, `Telefon`, `e-mail`, `Data_registre`, `ulleres_id`, `client_nou`, `recomanador_id`) VALUES
(8, 'Client1', '090909090', 9999999, 'email1@email.com', '2020-07-01', 4, 0, NULL),
(9, 'Client2', '09090909090', 89789678, 'email1@email.com', '2020-07-01', 3, 1, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleat`
--

CREATE TABLE `empleat` (
  `id_empleat` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `ulleres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleat`
--

INSERT INTO `empleat` (`id_empleat`, `client_id`, `ulleres_id`) VALUES
(1, 8, 3),
(2, 9, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveidor`
--

CREATE TABLE `proveidor` (
  `id_proveidor` int(11) NOT NULL,
  `Nom` text NOT NULL,
  `Carrer` varchar(150) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Pis` varchar(3) NOT NULL,
  `Porta` varchar(3) NOT NULL,
  `Ciutat` varchar(150) NOT NULL,
  `Codi_Postal` int(10) NOT NULL,
  `Pais` text NOT NULL,
  `Telefon` int(20) NOT NULL,
  `Fax` int(20) NOT NULL,
  `NIF` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveidor`
--

INSERT INTO `proveidor` (`id_proveidor`, `Nom`, `Carrer`, `Numero`, `Pis`, `Porta`, `Ciutat`, `Codi_Postal`, `Pais`, `Telefon`, `Fax`, `NIF`) VALUES
(1, 'proveidor1', 'carrer1', 1, '1', '1', 'Ciutat1', 11111111, 'Pais1', 111111111, 111111111, '111111111a'),
(2, 'Proveidor2', 'Carrer2', 2, '2', '2', 'Ciutat2', 222222222, 'Pais2', 222222222, 222222222, '222222222b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ulleres`
--

CREATE TABLE `ulleres` (
  `id_ulleres` int(11) NOT NULL,
  `marca` text NOT NULL,
  `graduacio_dreta` varchar(5) NOT NULL,
  `graduacio_esq` varchar(5) NOT NULL,
  `montura_flotant` tinyint(1) NOT NULL,
  `montura_metal-lica` tinyint(1) NOT NULL,
  `montura_pasta` tinyint(1) NOT NULL,
  `color_montura` text NOT NULL,
  `color_vidre_esq` text NOT NULL,
  `color_vidre_dret` text NOT NULL,
  `preu` int(11) NOT NULL,
  `proveidor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ulleres`
--

INSERT INTO `ulleres` (`id_ulleres`, `marca`, `graduacio_dreta`, `graduacio_esq`, `montura_flotant`, `montura_metal-lica`, `montura_pasta`, `color_montura`, `color_vidre_esq`, `color_vidre_dret`, `preu`, `proveidor_id`) VALUES
(3, 'Ulleres1', '3', '1', 1, 0, 0, 'negre', 'vermell', 'blau', 1, 2),
(4, 'marc2', '1', '4', 0, 0, 1, 'GRIs', 'blanc', 'negre', 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `ulleres_id` (`ulleres_id`),
  ADD KEY `recomanador_id` (`recomanador_id`);

--
-- Indices de la tabla `empleat`
--
ALTER TABLE `empleat`
  ADD PRIMARY KEY (`id_empleat`),
  ADD KEY `id_empleat` (`id_empleat`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `ulleres_id` (`ulleres_id`);

--
-- Indices de la tabla `proveidor`
--
ALTER TABLE `proveidor`
  ADD PRIMARY KEY (`id_proveidor`),
  ADD KEY `id_proveidor` (`id_proveidor`);

--
-- Indices de la tabla `ulleres`
--
ALTER TABLE `ulleres`
  ADD PRIMARY KEY (`id_ulleres`),
  ADD KEY `id_ulleres` (`id_ulleres`),
  ADD KEY `proveidor_id` (`proveidor_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `empleat`
--
ALTER TABLE `empleat`
  MODIFY `id_empleat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proveidor`
--
ALTER TABLE `proveidor`
  MODIFY `id_proveidor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ulleres`
--
ALTER TABLE `ulleres`
  MODIFY `id_ulleres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`ulleres_id`) REFERENCES `ulleres` (`id_ulleres`) ON UPDATE CASCADE,
  ADD CONSTRAINT `clients_ibfk_2` FOREIGN KEY (`recomanador_id`) REFERENCES `clients` (`id_client`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleat`
--
ALTER TABLE `empleat`
  ADD CONSTRAINT `empleat_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id_client`) ON UPDATE CASCADE,
  ADD CONSTRAINT `empleat_ibfk_2` FOREIGN KEY (`ulleres_id`) REFERENCES `ulleres` (`id_ulleres`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ulleres`
--
ALTER TABLE `ulleres`
  ADD CONSTRAINT `ulleres_ibfk_1` FOREIGN KEY (`proveidor_id`) REFERENCES `proveidor` (`id_proveidor`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
