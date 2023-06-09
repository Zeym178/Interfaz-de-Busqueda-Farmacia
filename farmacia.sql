-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2023 a las 05:43:08
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `cod_pro` int(11) NOT NULL,
  `nom_pro` varchar(100) DEFAULT NULL,
  `pre_venta` decimal(10,2) DEFAULT NULL,
  `pre_compra` decimal(10,2) DEFAULT NULL,
  `fecha_venc` date DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `presentacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`cod_pro`, `nom_pro`, `pre_venta`, `pre_compra`, `fecha_venc`, `stock`, `categoria`, `proveedor`, `presentacion`) VALUES
(1, 'Paracetamol', 5.99, 2.50, '2023-09-30', 100, 'Medicamentos', 'Farmacia ABC', 'Tabletas'),
(2, 'Ibuprofeno', 3.99, 1.80, '2024-06-15', 80, 'Medicamentos', 'Farmacia XYZ', 'Tabletas'),
(3, 'Omeprazol', 8.50, 4.20, '2023-12-31', 50, 'Medicamentos', 'Farmacia ABC', 'Cápsulas'),
(4, 'Vitaminas C', 10.99, 6.50, '2025-03-20', 120, 'Suplementos', 'Farmacia XYZ', 'Tabletas'),
(5, 'Jabón Antibacterial', 2.99, 1.20, NULL, 200, 'Higiene Personal', 'Farmacia ABC', 'Barra'),
(6, 'Desinfectante de Manos', 4.50, 2.10, NULL, 150, 'Higiene Personal', 'Farmacia XYZ', 'Gel'),
(7, 'Antigripal', 7.99, 3.80, '2023-11-30', 60, 'Medicamentos', 'Farmacia ABC', 'Cápsulas'),
(8, 'Vendas Elásticas', 6.99, 3.50, NULL, 100, 'Material de Curación', 'Farmacia XYZ', 'Rollo'),
(9, 'Gel de Aloe Vera', 9.99, 5.80, NULL, 90, 'Cuidado de la Piel', 'Farmacia ABC', 'Botella'),
(10, 'Analgésico Tópico', 12.50, 8.20, NULL, 70, 'Medicamentos', 'Farmacia XYZ', 'Crema'),
(11, 'Preservativos', 3.99, 1.50, NULL, 180, 'Salud Sexual', 'Farmacia ABC', 'Caja'),
(12, 'Pastillas para la Tos', 6.50, 3.20, '2024-02-28', 40, 'Medicamentos', 'Farmacia XYZ', 'Tabletas'),
(13, 'Cepillo de Dientes', 1.99, 0.80, NULL, 250, 'Higiene Personal', 'Farmacia ABC', 'Unidad'),
(14, 'Antiséptico', 5.99, 2.50, NULL, 120, 'Cuidado de la Piel', 'Farmacia XYZ', 'Líquido'),
(15, 'Crema Hidratante', 8.99, 4.20, NULL, 100, 'Cuidado de la Piel', 'Farmacia ABC', 'Tubo'),
(16, 'Antiacné', 10.99, 6.50, '2023-10-31', 60, 'Cuidado de la Piel', 'Farmacia XYZ', 'Gel'),
(17, 'Tónico Facial', 6.99, 3.20, NULL, 80, 'Cuidado de la Piel', 'Farmacia ABC', 'Botella'),
(18, 'Gel para Piernas Cansadas', 12.99, 8.50, NULL, 50, 'Cuidado Corporal', 'Farmacia XYZ', 'Tubo'),
(19, 'Antihistamínico', 9.99, 5.80, '2023-11-15', 70, 'Medicamentos', 'Farmacia ABC', 'Tabletas'),
(20, 'Loción Solar', 14.50, 9.20, NULL, 40, 'Cuidado de la Piel', 'Farmacia XYZ', 'Botella'),
(21, 'Antiséptico Bucal', 6.99, 3.50, NULL, 90, 'Higiene Personal', 'Farmacia ABC', 'Enjuague'),
(22, 'Antiinflamatorio', 8.50, 4.20, '2024-04-30', 60, 'Medicamentos', 'Farmacia XYZ', 'Tabletas'),
(23, 'Crema para Hemorroides', 10.99, 6.50, NULL, 40, 'Cuidado de la Piel', 'Farmacia ABC', 'Tubo'),
(24, 'Termómetro Digital', 12.99, 8.50, NULL, 50, 'Suministros Médicos', 'Farmacia XYZ', 'Unidad'),
(25, 'Antialérgico', 7.99, 3.80, '2023-10-31', 70, 'Medicamentos', 'Farmacia ABC', 'Tabletas'),
(26, 'Shampoo Anticaspa', 4.99, 2.50, NULL, 120, 'Cuidado del Cabello', 'Farmacia XYZ', 'Botella'),
(27, 'Jeringas', 2.50, 1.20, NULL, 200, 'Material de Curación', 'Farmacia ABC', 'Paquete'),
(28, 'Pastillas para el Dolor de Garganta', 3.99, 1.50, '2024-03-15', 80, 'Medicamentos', 'Farmacia XYZ', 'Tabletas'),
(29, 'Loción para Después del Afeitado', 8.99, 4.20, NULL, 60, 'Cuidado de la Piel', 'Farmacia ABC', 'Botella'),
(30, 'Suplemento Vitamínico', 9.99, 5.80, NULL, 90, 'Suplementos', 'Farmacia XYZ', 'Tabletas'),
(31, 'Cepillo y Pasta de Dientes', 3.50, 1.80, NULL, 150, 'Higiene Personal', 'Farmacia ABC', 'Kit'),
(32, 'Antiarrugas', 12.50, 8.20, '2023-12-31', 40, 'Cuidado de la Piel', 'Farmacia XYZ', 'Crema'),
(33, 'Antifúngico', 6.99, 3.20, NULL, 100, 'Medicamentos', 'Farmacia ABC', 'Crema'),
(34, 'Aceite de Almendras', 5.99, 2.50, NULL, 120, 'Cuidado Corporal', 'Farmacia XYZ', 'Botella'),
(35, 'Pastillas para el Insomnio', 9.99, 5.80, '2024-02-28', 60, 'Medicamentos', 'Farmacia ABC', 'Tabletas'),
(36, 'Protector Solar Facial', 14.50, 9.20, NULL, 40, 'Cuidado de la Piel', 'Farmacia XYZ', 'Tubo'),
(37, 'Laxante', 7.99, 3.80, NULL, 70, 'Medicamentos', 'Farmacia ABC', 'Tabletas'),
(38, 'Pañales para Adulto', 12.99, 8.50, NULL, 50, 'Cuidado Personal', 'Farmacia XYZ', 'Paquete'),
(39, 'Gel Reductor', 9.99, 5.80, '2023-11-15', 70, 'Cuidado Corporal', 'Farmacia ABC', 'Tubo'),
(40, 'Colirio', 6.99, 3.50, NULL, 90, 'Medicamentos', 'Farmacia XYZ', 'Gotas'),
(41, 'Vitaminas para el Cabello', 10.99, 6.50, NULL, 80, 'Suplementos', 'Farmacia ABC', 'Cápsulas'),
(42, 'Antidiarreico', 5.99, 2.50, '2023-09-30', 100, 'Medicamentos', 'Farmacia XYZ', 'Tabletas'),
(43, 'Cremas Faciales', 12.99, 8.50, NULL, 50, 'Cuidado de la Piel', 'Farmacia ABC', 'Tarro'),
(44, 'Aparato de Presión Arterial', 35.99, 25.50, NULL, 30, 'Suministros Médicos', 'Farmacia XYZ', 'Unidad'),
(45, 'Jarabe para la Tos', 7.99, 4.20, '2024-06-15', 60, 'Medicamentos', 'Farmacia ABC', 'Frascos'),
(46, 'Crema Hidratante Corporal', 9.99, 5.80, NULL, 90, 'Cuidado Corporal', 'Farmacia XYZ', 'Botella'),
(47, 'Alcohol Antiséptico', 2.50, 1.20, NULL, 200, 'Material de Curación', 'Farmacia ABC', 'Botella'),
(48, 'Gel para Quemaduras', 6.99, 3.50, '2023-11-30', 80, 'Cuidado de la Piel', 'Farmacia XYZ', 'Tubo'),
(49, 'Suplemento de Omega 3', 14.50, 9.20, NULL, 40, 'Suplementos', 'Farmacia ABC', 'Cápsulas'),
(50, 'Crema para Pies Agrietados', 8.99, 4.20, NULL, 60, 'Cuidado de la Piel', 'Farmacia XYZ', 'Tubo'),
(51, 'Antiséptico de Manos', 3.99, 1.50, NULL, 180, 'Higiene Personal', 'Farmacia ABC', 'Gel'),
(52, 'Lociones Capilares', 6.50, 3.20, '2024-02-28', 40, 'Cuidado del Cabello', 'Farmacia XYZ', 'Botella'),
(53, 'Mascarillas Faciales', 1.99, 0.80, NULL, 250, 'Cuidado de la Piel', 'Farmacia ABC', 'Paquete'),
(54, 'Analgésico Muscular', 5.99, 2.50, NULL, 120, 'Medicamentos', 'Farmacia XYZ', 'Crema'),
(55, 'Desodorante Antitranspirante', 3.99, 1.80, NULL, 150, 'Higiene Personal', 'Farmacia ABC', 'Roll-on'),
(56, 'Cuidado Bucal', 6.99, 3.50, NULL, 100, 'Higiene Personal', 'Farmacia XYZ', 'Varios'),
(57, 'Tintura para el Cabello', 8.99, 4.20, NULL, 100, 'Cuidado del Cabello', 'Farmacia ABC', 'Botella'),
(58, 'Relajante Muscular', 10.99, 6.50, '2023-10-31', 60, 'Medicamentos', 'Farmacia XYZ', 'Tabletas'),
(59, 'Espuma Limpiadora Facial', 6.99, 3.20, NULL, 100, 'Cuidado de la Piel', 'Farmacia ABC', 'Botella'),
(60, 'Pastillas para la Migraña', 9.99, 5.80, '2023-12-31', 70, 'Medicamentos', 'Farmacia XYZ', 'Tabletas'),
(61, 'Loción Desmaquillante', 7.99, 3.80, NULL, 90, 'Cuidado de la Piel', 'Farmacia ABC', 'Botella'),
(62, 'Antiemético', 8.50, 4.20, '2024-04-30', 60, 'Medicamentos', 'Farmacia XYZ', 'Tabletas'),
(63, 'Pomada para Quemaduras', 10.99, 6.50, NULL, 40, 'Cuidado de la Piel', 'Farmacia ABC', 'Tarro'),
(64, 'Mascarilla de Oxígeno', 35.99, 25.50, NULL, 30, 'Suministros Médicos', 'Farmacia XYZ', 'Unidad'),
(65, 'Antitusivo', 7.99, 4.20, '2023-10-31', 70, 'Medicamentos', 'Farmacia ABC', 'Jarabe'),
(66, 'Loción Corporal Hidratante', 9.99, 5.80, NULL, 90, 'Cuidado Corporal', 'Farmacia XYZ', 'Botella'),
(67, 'Gasas Estériles', 2.50, 1.20, NULL, 200, 'Material de Curación', 'Farmacia ABC', 'Paquete'),
(68, 'Crema para Piel Sensible', 6.99, 3.50, '2023-11-30', 80, 'Cuidado de la Piel', 'Farmacia XYZ', 'Tubo'),
(69, 'Suplemento de Calcio', 14.50, 9.20, NULL, 40, 'Suplementos', 'Farmacia ABC', 'Tabletas'),
(70, 'Desodorante en Barra', 3.99, 1.50, NULL, 180, 'Higiene Personal', 'Farmacia XYZ', 'Barra'),
(71, 'Shampoo Anticaída', 6.50, 3.20, '2024-02-28', 40, 'Cuidado del Cabello', 'Farmacia ABC', 'Botella'),
(72, 'Tiras Reactivas para Glucosa', 1.99, 0.80, NULL, 250, 'Suministros Médicos', 'Farmacia XYZ', 'Caja'),
(73, 'Antiarrugas de Noche', 5.99, 2.50, NULL, 120, 'Cuidado de la Piel', 'Farmacia ABC', 'Tarro'),
(74, 'Desodorante para Pies', 3.99, 1.80, NULL, 150, 'Higiene Personal', 'Farmacia XYZ', 'Spray'),
(75, 'Enjuague Bucal', 6.99, 3.50, NULL, 100, 'Higiene Personal', 'Farmacia ABC', 'Botella'),
(76, 'Aceite de Coco', 8.99, 4.20, NULL, 100, 'Cuidado de la Piel', 'Farmacia XYZ', 'Botella'),
(77, 'Pastillas para el Estrés', 9.99, 5.80, '2023-12-31', 70, 'Suplementos', 'Farmacia ABC', 'Tabletas'),
(78, 'Gel para Dolor Muscular', 10.99, 6.50, NULL, 40, 'Cuidado Corporal', 'Farmacia XYZ', 'Tubo'),
(79, 'Antiácido', 4.99, 2.50, NULL, 120, 'Medicamentos', 'Farmacia ABC', 'Tabletas'),
(80, 'Pañales para Bebé', 12.99, 8.50, NULL, 50, 'Cuidado Personal', 'Farmacia XYZ', 'Paquete'),
(81, 'Pastillas para la Ansiedad', 9.99, 5.80, NULL, 70, 'Medicamentos', 'Farmacia ABC', 'Tabletas'),
(82, 'Crema para Cicatrices', 8.99, 4.20, NULL, 60, 'Cuidado de la Piel', 'Farmacia XYZ', 'Tubo'),
(83, 'Cepillo de Dientes Eléctrico', 19.99, 12.50, NULL, 30, 'Higiene Personal', 'Farmacia ABC', 'Unidad'),
(84, 'Analgésico para Migrañas', 7.99, 4.20, '2024-05-31', 80, 'Medicamentos', 'Farmacia XYZ', 'Tabletas'),
(85, 'Hidratante Labial', 3.99, 1.80, NULL, 150, 'Cuidado de la Piel', 'Farmacia ABC', 'Bálsamo'),
(86, 'Suplemento de Hierro', 10.99, 6.50, NULL, 40, 'Suplementos', 'Farmacia XYZ', 'Tabletas'),
(87, 'Colutorio Bucal', 6.99, 3.50, NULL, 90, 'Higiene Personal', 'Farmacia ABC', 'Enjuague'),
(88, 'Tónico Facial', 12.99, 8.50, '2023-11-30', 50, 'Cuidado de la Piel', 'Farmacia XYZ', 'Botella'),
(89, 'Pastillas para el Dolor de Estómago', 5.99, 3.20, NULL, 100, 'Medicamentos', 'Farmacia ABC', 'Tabletas'),
(90, 'Shampoo Anticaspa', 8.99, 4.20, NULL, 60, 'Cuidado del Cabello', 'Farmacia XYZ', 'Botella'),
(91, 'Crema para el Contorno de Ojos', 14.50, 9.20, NULL, 40, 'Cuidado de la Piel', 'Farmacia ABC', 'Tarro'),
(92, 'Desodorante Roll-on', 3.99, 1.50, NULL, 180, 'Higiene Personal', 'Farmacia XYZ', 'Roll-on'),
(93, 'Antiflatulento', 5.50, 3.50, '2024-02-28', 40, 'Medicamentos', 'Farmacia ABC', 'Tabletas'),
(94, 'Loción para el Cuerpo', 7.99, 4.50, NULL, 120, 'Cuidado Corporal', 'Farmacia XYZ', 'Botella'),
(95, 'Pastillas para la Tos', 6.99, 3.50, NULL, 100, 'Medicamentos', 'Farmacia ABC', 'Tabletas'),
(96, 'Gel Antibacterial', 4.99, 2.50, NULL, 150, 'Higiene Personal', 'Farmacia XYZ', 'Botella'),
(97, 'Mascarilla Capilar', 9.99, 6.80, '2023-12-31', 70, 'Cuidado del Cabello', 'Farmacia ABC', 'Tarro'),
(98, 'Suplemento de Vitamina C', 8.99, 4.50, NULL, 90, 'Suplementos', 'Farmacia XYZ', 'Tabletas'),
(99, 'Crema para Hemorroides', 7.50, 3.80, NULL, 80, 'Cuidado Corporal', 'Farmacia ABC', 'Tubo'),
(100, 'Protectores Diarios', 5.99, 3.20, NULL, 100, 'Cuidado Personal', 'Farmacia XYZ', 'Paquete');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`cod_pro`),
  ADD KEY `idx_categoria` (`categoria`),
  ADD KEY `idx_proveedor` (`proveedor`),
  ADD KEY `idx_fecha_venc` (`fecha_venc`);
ALTER TABLE `productos` ADD FULLTEXT KEY `idx_nom_pro` (`nom_pro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `cod_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
