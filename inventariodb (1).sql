-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2024 a las 01:11:38
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
-- Base de datos: `inventariodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `ID` int(11) NOT NULL,
  `SalarioMinimo` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallesreferencia`
--

CREATE TABLE `detallesreferencia` (
  `ID` int(11) NOT NULL,
  `ReferenciaID` int(11) NOT NULL,
  `PiezaID` int(11) DEFAULT NULL,
  `MaterialID` int(11) DEFAULT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `referencia` int(10) NOT NULL,
  `tip_material` varchar(50) NOT NULL,
  `proveedor` varchar(60) DEFAULT NULL,
  `unimedi` varchar(10) DEFAULT NULL,
  `Costo` double(18,2) NOT NULL,
  `Cantidad` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`ID`, `Nombre`, `referencia`, `tip_material`, `proveedor`, `unimedi`, `Costo`, `Cantidad`) VALUES
(1, 'Cuero Beigue', 0, '', NULL, NULL, 1.00, 3000.00),
(2, 'Cuero Champan ', 0, '', NULL, NULL, 2.00, 4000.00),
(8, 'cuero graso sabana', 20103456, 'Cuero', 'armando', 'decimetros', 0.00, 0.00),
(9, 'prueba', 0, 'Cuero', 'prueba', 'decimetro', 0.00, 0.00),
(10, 'prueba 2', 0, 'Herraje', 'prueba 2', 'unidad', 0.00, 0.00),
(11, 'prueba3', 0, 'Tela', 'prueba3', 'prueba3', 0.00, 0.00),
(12, 'cuero graso beige', 234565, 'Cuero', 'armando', 'decimetro', 0.00, 0.00),
(13, 'prueba material 4', 23456789, 'Cuero', 'armando', 'decimetro', 0.00, 0.00),
(14, 'prueba armando', 1234567890, 'Herraje', 'armando', 'decimetro', 0.00, 0.00),
(15, 'prueba no mas', 1234567890, 'Tela', 'jose alejandro', 'metros', 0.00, 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piezas`
--

CREATE TABLE `piezas` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Costo` decimal(18,2) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(10) NOT NULL,
  `Nombre_prodcuto` varchar(60) NOT NULL,
  `Descrip_product` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='tabla de productos';

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `Nombre_prodcuto`, `Descrip_product`) VALUES
(1, 'abrazadera', 'tirilla para bolso'),
(2, 'PORTA_TARJETAS O  PORTA_DOCUMENTOS', 'pORTA DOCUMENTOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(10) NOT NULL COMMENT 'id de proveedor',
  `nom_proveedor` varchar(100) NOT NULL,
  `dir_proveedor` varchar(100) NOT NULL,
  `tel_proveedor` varchar(10) NOT NULL,
  `email_proveedor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nom_proveedor`, `dir_proveedor`, `tel_proveedor`, `email_proveedor`) VALUES
(1, 'armando', '', '', ''),
(2, 'prueba', 'prueba', '123456', 'prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referencias`
--

CREATE TABLE `referencias` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `CostoTotal` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `referencias`
--

INSERT INTO `referencias` (`ID`, `Nombre`, `CostoTotal`) VALUES
(1, 'ytytyty', 900.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `detallesreferencia`
--
ALTER TABLE `detallesreferencia`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `piezas`
--
ALTER TABLE `piezas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`) USING BTREE;

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `referencias`
--
ALTER TABLE `referencias`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallesreferencia`
--
ALTER TABLE `detallesreferencia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `piezas`
--
ALTER TABLE `piezas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id de proveedor', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `referencias`
--
ALTER TABLE `referencias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
