-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-11-2019 a las 22:39:19
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `electroart`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `idArt` int(10) NOT NULL,
  `NombreArt` varchar(50) NOT NULL,
  `DescripcionArt` text NOT NULL,
  `ImageArt` varchar(500) NOT NULL,
  `IdCat` int(10) NOT NULL,
  `Precio` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`idArt`, `NombreArt`, `DescripcionArt`, `ImageArt`, `IdCat`, `Precio`) VALUES
(1, 'Dell Latitude', 'Computadora Laptop', 'https://cdn0.tnwcdn.com/wp-content/blogs.dir/1/files/2019/01/1-2.jpg', 1, '999.99'),
(2, 'Apple Ipad Pro', 'Tableta Apple 14', 'https://cdn.billiger.com/dynimg/OOY4UQDrVO5XFGkI3pIPJLmnDeOD-N_Ysmcqo-5Mi-SckuRs0IuR9ejJkQ1IpM081nM72QQ3rWuY4u1C023x31HiSg2GSBA-INyZ6-weRu5uKdcfGBVXg8P4TJ-c6LOU_6JUUgXkAkhAF4c0q9hDHX_ba2S4U1MtO2k8AssLQqthN9QIoC1tH24pSVuKAbAvaxNUH9srJrl/apple-ipad-pro-10-5-2017-256gb-wi-fi-space-grau-oblique.JPEG', 1, '999.99'),
(3, 'Iphone 11 pro', 'Smartphone Apple 11', 'https://i.blogs.es/1a4e70/iphone-11-pro-trasera-02/1366_2000.jpg', 2, '999.95'),
(4, 'Samsung TV OLED 75', 'Televisor pantalla plana de 75', 'https://cdn.pocket-lint.com/r/s/970x/assets/images/137516-tv-news-samsung-says-no-to-oled-tvs-for-2017-something-else-is-coming-image1-yVo8OTFXl6.jpg?', 3, '1295.95');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCat` int(10) NOT NULL,
  `NombreCat` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCat`, `NombreCat`) VALUES
(1, 'Computadora'),
(2, 'Phones'),
(3, 'TV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(10) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Tel` varchar(15) NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Nombre`, `Apellidos`, `Tel`, `Email`) VALUES
(1, 'Sunchine', 'Logroño', '787-838-8838', 'suchine@wapa.tv'),
(2, 'José', 'Agrelot', '787-232-6738', 'jagrelot@wapa.tv'),
(3, 'Raymond', 'Arrieta', '939-123-4567', 'arrieta@wapa.tv'),
(4, 'Jossué', 'Morales', '7878910925', 'jomorales@ag.inter.edu'),
(6, 'Dayna', 'Salguero Aguiar', '7878888888', 'daynammia@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procventa`
--

CREATE TABLE `procventa` (
  `idProceso` int(10) NOT NULL,
  `idVenta` int(10) NOT NULL,
  `SubTotal` decimal(13,2) NOT NULL,
  `Impuesto` decimal(13,2) NOT NULL,
  `Total` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `procventa`
--

INSERT INTO `procventa` (`idProceso`, `idVenta`, `SubTotal`, `Impuesto`, `Total`) VALUES
(14, 134, '999.95', '114.99', '1114.94'),
(18, 138, '2999.97', '345.00', '3344.97'),
(19, 139, '1295.95', '149.03', '1444.98'),
(20, 140, '1999.98', '230.00', '2229.98'),
(21, 141, '1999.90', '229.99', '2229.89'),
(22, 142, '999.95', '114.99', '1114.94'),
(23, 143, '999.99', '115.00', '1114.99'),
(24, 143, '999.99', '115.00', '1114.99'),
(25, 143, '999.99', '115.00', '1114.99'),
(26, 144, '999.99', '115.00', '1114.99'),
(27, 145, '999.99', '115.00', '1114.99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idVenta` int(10) NOT NULL,
  `FechaCompra` date NOT NULL,
  `idArt` int(10) NOT NULL,
  `idCliente` int(10) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idVenta`, `FechaCompra`, `idArt`, `idCliente`, `Cantidad`) VALUES
(134, '2019-11-10', 4, 3, 1),
(138, '2019-11-10', 1, 1, 3),
(139, '2019-11-11', 4, 4, 1),
(140, '2019-11-12', 3, 2, 2),
(141, '2019-11-16', 1, 3, 2),
(142, '2019-11-23', 4, 3, 1),
(143, '2019-11-10', 4, 2, 1),
(144, '2019-11-10', 4, 2, 1),
(145, '2019-11-10', 1, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`idArt`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `procventa`
--
ALTER TABLE `procventa`
  ADD PRIMARY KEY (`idProceso`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idVenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `idArt` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `procventa`
--
ALTER TABLE `procventa`
  MODIFY `idProceso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idVenta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
