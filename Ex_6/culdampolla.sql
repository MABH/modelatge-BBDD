-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2020 a las 09:30:11
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
  `client_nou` tinyint(1) NOT NULL,
  `recomanador_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cristal_der`
--

CREATE TABLE `cristal_der` (
  `id_cristal_der` int(11) NOT NULL,
  `color` varchar(15) NOT NULL,
  `graduacio` varchar(15) NOT NULL,
  `preu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cristal_izq`
--

CREATE TABLE `cristal_izq` (
  `id_cristal_izq` int(11) NOT NULL,
  `color` varchar(15) NOT NULL,
  `graduacio` varchar(15) NOT NULL,
  `preu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleat`
--

CREATE TABLE `empleat` (
  `id_empleat` int(11) NOT NULL,
  `Nom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `usuari_id` int(11) NOT NULL,
  `ulleres_id` int(11) NOT NULL,
  `empleat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `montura`
--

CREATE TABLE `montura` (
  `id_montura` int(11) NOT NULL,
  `color` varchar(15) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `preu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ulleres`
--

CREATE TABLE `ulleres` (
  `id_ulleres` int(11) NOT NULL,
  `marca` text NOT NULL,
  `preu_total` int(11) NOT NULL,
  `proveidor_id` int(11) NOT NULL,
  `cristal_der_id` int(11) NOT NULL,
  `cristal_izq_id` int(11) NOT NULL,
  `montura_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `recomanador_id` (`recomanador_id`);

--
-- Indices de la tabla `cristal_der`
--
ALTER TABLE `cristal_der`
  ADD PRIMARY KEY (`id_cristal_der`),
  ADD KEY `id_cristal_der` (`id_cristal_der`);

--
-- Indices de la tabla `cristal_izq`
--
ALTER TABLE `cristal_izq`
  ADD PRIMARY KEY (`id_cristal_izq`),
  ADD KEY `id_cristal_izq` (`id_cristal_izq`);

--
-- Indices de la tabla `empleat`
--
ALTER TABLE `empleat`
  ADD PRIMARY KEY (`id_empleat`),
  ADD KEY `id_empleat` (`id_empleat`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_factura` (`id_factura`),
  ADD KEY `usuari_id` (`usuari_id`),
  ADD KEY `ulleres_id` (`ulleres_id`),
  ADD KEY `empleat_id` (`empleat_id`);

--
-- Indices de la tabla `montura`
--
ALTER TABLE `montura`
  ADD PRIMARY KEY (`id_montura`),
  ADD KEY `id_montura` (`id_montura`);

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
  ADD KEY `proveidor_id` (`proveidor_id`),
  ADD KEY `cristal_der_id` (`cristal_der_id`),
  ADD KEY `cristal_izq_id` (`cristal_izq_id`),
  ADD KEY `montura_id` (`montura_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cristal_der`
--
ALTER TABLE `cristal_der`
  MODIFY `id_cristal_der` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cristal_izq`
--
ALTER TABLE `cristal_izq`
  MODIFY `id_cristal_izq` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleat`
--
ALTER TABLE `empleat`
  MODIFY `id_empleat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `montura`
--
ALTER TABLE `montura`
  MODIFY `id_montura` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`recomanador_id`) REFERENCES `clients` (`id_client`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cristal_der`
--
ALTER TABLE `cristal_der`
  ADD CONSTRAINT `cristal_der_ibfk_1` FOREIGN KEY (`id_cristal_der`) REFERENCES `ulleres` (`cristal_der_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`usuari_id`) REFERENCES `clients` (`id_client`) ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`empleat_id`) REFERENCES `empleat` (`id_empleat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`ulleres_id`) REFERENCES `ulleres` (`id_ulleres`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ulleres`
--
ALTER TABLE `ulleres`
  ADD CONSTRAINT `ulleres_ibfk_1` FOREIGN KEY (`proveidor_id`) REFERENCES `proveidor` (`id_proveidor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ulleres_ibfk_2` FOREIGN KEY (`montura_id`) REFERENCES `montura` (`id_montura`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ulleres_ibfk_3` FOREIGN KEY (`cristal_izq_id`) REFERENCES `cristal_izq` (`id_cristal_izq`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
