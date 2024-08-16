-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2024 a las 01:53:51
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
-- Base de datos: `hospital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion_diagnostico`
--

CREATE TABLE `atencion_diagnostico` (
  `Atencion_M` int(10) NOT NULL,
  `Diagnostico_P` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnostico_paciente`
--

CREATE TABLE `diagnostico_paciente` (
  `ID_Visita` int(10) NOT NULL,
  `Id_diapa` int(10) DEFAULT NULL,
  `ID_Diagnostico` int(10) DEFAULT NULL,
  `Descripcion_Diagnosticos` varchar(100) DEFAULT NULL,
  `Fecha_Diagnostico` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `diagnostico_paciente`
--

INSERT INTO `diagnostico_paciente` (`ID_Visita`, `Id_diapa`, `ID_Diagnostico`, `Descripcion_Diagnosticos`, `Fecha_Diagnostico`) VALUES
(1, NULL, 2342, 'Paciente con la pierna rota', '0000-00-00 00:00:00'),
(2, NULL, 2342, 'Paciente con la pierna rota', '2024-05-25 05:00:00'),
(3, NULL, 2342, 'Paciente con la pierna rota', '2024-05-25 05:00:00'),
(4, NULL, 1203, 'Paciente con cancer de pulmon leve', '2024-03-03 10:00:00'),
(5, NULL, 3278, 'Paciente con el brazo izq fracturado', '2024-10-09 08:00:00'),
(6, NULL, 2912, 'Paciente con perdida de vista', '2024-06-20 23:00:00'),
(7, NULL, 5432, 'Paciente con el pecho apuñalado', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichero_historico`
--

CREATE TABLE `fichero_historico` (
  `ID_Paciente` int(10) NOT NULL,
  `Id_fichi` int(10) DEFAULT NULL,
  `Fecha_Inicio` datetime DEFAULT NULL,
  `Datos_Paciente` varchar(50) DEFAULT NULL,
  `Datos_Medico` varchar(50) DEFAULT NULL,
  `Actorizaciones` varchar(50) DEFAULT NULL,
  `Antecedentes` varchar(50) DEFAULT NULL,
  `Fecha_Salida` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fichero_historico`
--

INSERT INTO `fichero_historico` (`ID_Paciente`, `Id_fichi`, `Fecha_Inicio`, `Datos_Paciente`, `Datos_Medico`, `Actorizaciones`, `Antecedentes`, `Fecha_Salida`) VALUES
(1, NULL, '0000-00-00 00:00:00', 'Luis comenzo sus terapias de pulmones', ' Jose Alberto', 'SI', 'Sano', '0000-00-00 00:00:00'),
(2, NULL, '2024-01-10 00:00:00', 'Luis comenzo sus terapias de pulmones', ' Jose Alberto', 'SI', 'Sano', '2024-08-12 00:00:00'),
(3, NULL, '2024-01-10 00:00:00', 'Luis comenzo sus terapias de pulmones', 'Jose Alberto', 'SI', 'Sano', '2024-12-05 00:00:00'),
(4, NULL, '2024-12-21 00:00:00', 'Bryan termino sus terapias de cancer', 'Luisa Camila', 'Completas', 'Sano', '2024-10-15 00:00:00'),
(5, NULL, '2024-05-22 00:00:00', 'Johan comenzo sus terapias de ruptura de pierna', 'Sergio Alferez', 'Incompletas', 'Sano', '2024-08-18 00:00:00'),
(6, NULL, '2024-09-04 00:00:00', 'Sebastian comenzo sus terapias de apuntes', 'Laura Mendez', 'Si', 'Sano', '2024-03-21 00:00:00'),
(7, NULL, '2024-10-29 00:00:00', 'Luisa comenzo sus terapias para la perdida de vita', 'Sandy Sanchez ', 'Completas', 'Sano', '2024-08-31 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `ID_Medico` int(10) NOT NULL,
  `Id_med` int(10) DEFAULT NULL,
  `Nombres` varchar(25) DEFAULT NULL,
  `Apellidos` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`ID_Medico`, `Id_med`, `Nombres`, `Apellidos`) VALUES
(1, NULL, 'Albet Camilo', 'Correa Lopez'),
(2, NULL, 'Albet Camilo', 'Correa Lopez'),
(3, NULL, 'Albet Camilo', 'Correa Lopez'),
(4, NULL, 'Camila Sofia', 'Snaider Mendez'),
(5, NULL, 'Andrea Sofia', 'Dueñas Vega'),
(6, NULL, 'Andres Camilo', 'Rueda Albarez'),
(7, NULL, 'Lissana Andry', 'Mendez Vega');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos_atencion`
--

CREATE TABLE `medicos_atencion` (
  `ID_Atencion` int(10) NOT NULL,
  `Id_medat` int(10) DEFAULT NULL,
  `Fecha_Medica` datetime DEFAULT NULL,
  `Hora_Medica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicos_atencion`
--

INSERT INTO `medicos_atencion` (`ID_Atencion`, `Id_medat`, `Fecha_Medica`, `Hora_Medica`) VALUES
(1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, NULL, '2024-01-23 00:00:00', '2023-12-24 08:00:00'),
(3, NULL, '2024-01-23 00:00:00', '2024-01-23 08:00:00'),
(4, NULL, '2024-04-10 00:00:00', '2024-04-10 10:00:00'),
(5, NULL, '2024-07-21 00:00:00', '2024-07-21 12:00:00'),
(6, NULL, '2024-10-07 00:00:00', '2024-10-07 22:00:00'),
(7, NULL, '2024-12-28 00:00:00', '2024-12-28 17:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `N_Seguridad` int(15) NOT NULL,
  `Id_Pac` int(15) DEFAULT NULL,
  `CI` varchar(12) DEFAULT NULL,
  `Nombres` varchar(25) DEFAULT NULL,
  `Apellidos` varchar(25) DEFAULT NULL,
  `F_Nacimiento` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`N_Seguridad`, `Id_Pac`, `CI`, `Nombres`, `Apellidos`, `F_Nacimiento`) VALUES
(1, NULL, 'De Acuerdo', 'Juan Jose', ' Torres Alegria', '0000-00-00 00:00:00'),
(2, NULL, 'De Acuerdo', 'Juan Jose', ' Torres Alegria', '2000-07-12 00:00:00'),
(3, NULL, 'De Acuerdo', 'Juan Jose', ' Torres Alegria', '2000-07-12 00:00:00'),
(4, NULL, 'De Acuerdo', 'Andres Camilo', 'Rueda Rojas', '1995-12-24 00:00:00'),
(5, NULL, 'Desacuerdo', 'Ricardo', ' Tapia Wayne', '1996-12-01 00:00:00'),
(6, NULL, 'Desacuerdo', 'Jose Luis', ' Caños Torres', '2001-10-09 00:00:00'),
(7, NULL, 'De Acuerdo', 'Nicol Sofia', 'Ramos Mazorco', '2006-02-14 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantas_camas`
--

CREATE TABLE `plantas_camas` (
  `N_Plantas` int(15) NOT NULL,
  `Id_plca` int(15) DEFAULT NULL,
  `Nom_Paciente` varchar(20) DEFAULT NULL,
  `Num_Camas` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `plantas_camas`
--

INSERT INTO `plantas_camas` (`N_Plantas`, `Id_plca`, `Nom_Paciente`, `Num_Camas`) VALUES
(1, NULL, 'Luis', 4),
(2, NULL, 'Luis', 4),
(3, NULL, 'Luis', 4),
(4, NULL, 'Bruce', 2),
(5, NULL, 'Louis', 6),
(6, NULL, 'Jeisson', 7),
(7, NULL, 'Nicolas', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas_visitas`
--

CREATE TABLE `tarjetas_visitas` (
  `Num_Tarjeta` int(10) NOT NULL,
  `Id_tarv` int(10) DEFAULT NULL,
  `Hora_Comienzo` datetime DEFAULT NULL,
  `Hora_Fin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarjetas_visitas`
--

INSERT INTO `tarjetas_visitas` (`Num_Tarjeta`, `Id_tarv`, `Hora_Comienzo`, `Hora_Fin`) VALUES
(1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, NULL, '2024-05-06 10:00:00', '2024-02-02 13:30:00'),
(5, NULL, '2024-05-06 10:00:00', '2024-02-02 13:30:00'),
(6, NULL, '2023-08-12 06:00:00', '2024-12-28 13:30:00'),
(7, NULL, '2021-03-20 17:00:00', '2023-05-22 16:45:00'),
(8, NULL, '2022-11-18 12:00:00', '2020-03-11 13:35:00'),
(9, NULL, '2023-01-26 20:00:00', '2024-06-25 11:30:00'),
(10, NULL, '2022-08-30 04:00:00', '2023-10-03 15:30:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atencion_diagnostico`
--
ALTER TABLE `atencion_diagnostico`
  ADD PRIMARY KEY (`Atencion_M`),
  ADD KEY `fk_siete` (`Diagnostico_P`);

--
-- Indices de la tabla `diagnostico_paciente`
--
ALTER TABLE `diagnostico_paciente`
  ADD PRIMARY KEY (`ID_Visita`);

--
-- Indices de la tabla `fichero_historico`
--
ALTER TABLE `fichero_historico`
  ADD PRIMARY KEY (`ID_Paciente`),
  ADD KEY `fk_ocho` (`Id_fichi`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`ID_Medico`),
  ADD KEY `fk_cinco` (`Id_med`);

--
-- Indices de la tabla `medicos_atencion`
--
ALTER TABLE `medicos_atencion`
  ADD PRIMARY KEY (`ID_Atencion`),
  ADD KEY `fk_seis` (`Id_medat`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`N_Seguridad`),
  ADD KEY `fk_cuatro` (`Id_Pac`);

--
-- Indices de la tabla `plantas_camas`
--
ALTER TABLE `plantas_camas`
  ADD PRIMARY KEY (`N_Plantas`),
  ADD KEY `fk_uno` (`Id_plca`);

--
-- Indices de la tabla `tarjetas_visitas`
--
ALTER TABLE `tarjetas_visitas`
  ADD PRIMARY KEY (`Num_Tarjeta`),
  ADD KEY `fk_dos` (`Id_tarv`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atencion_diagnostico`
--
ALTER TABLE `atencion_diagnostico`
  MODIFY `Atencion_M` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `diagnostico_paciente`
--
ALTER TABLE `diagnostico_paciente`
  MODIFY `ID_Visita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `fichero_historico`
--
ALTER TABLE `fichero_historico`
  MODIFY `ID_Paciente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `ID_Medico` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `medicos_atencion`
--
ALTER TABLE `medicos_atencion`
  MODIFY `ID_Atencion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `N_Seguridad` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `plantas_camas`
--
ALTER TABLE `plantas_camas`
  MODIFY `N_Plantas` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tarjetas_visitas`
--
ALTER TABLE `tarjetas_visitas`
  MODIFY `Num_Tarjeta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atencion_diagnostico`
--
ALTER TABLE `atencion_diagnostico`
  ADD CONSTRAINT `fk_siete` FOREIGN KEY (`Diagnostico_P`) REFERENCES `diagnostico_paciente` (`ID_Visita`);

--
-- Filtros para la tabla `fichero_historico`
--
ALTER TABLE `fichero_historico`
  ADD CONSTRAINT `fk_ocho` FOREIGN KEY (`Id_fichi`) REFERENCES `pacientes` (`N_Seguridad`),
  ADD CONSTRAINT `fk_tres` FOREIGN KEY (`Id_fichi`) REFERENCES `pacientes` (`N_Seguridad`);

--
-- Filtros para la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD CONSTRAINT `fk_cinco` FOREIGN KEY (`Id_med`) REFERENCES `medicos_atencion` (`ID_Atencion`);

--
-- Filtros para la tabla `medicos_atencion`
--
ALTER TABLE `medicos_atencion`
  ADD CONSTRAINT `fk_seis` FOREIGN KEY (`Id_medat`) REFERENCES `atencion_diagnostico` (`Atencion_M`);

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `fk_cuatro` FOREIGN KEY (`Id_Pac`) REFERENCES `medicos` (`ID_Medico`);

--
-- Filtros para la tabla `plantas_camas`
--
ALTER TABLE `plantas_camas`
  ADD CONSTRAINT `fk_uno` FOREIGN KEY (`Id_plca`) REFERENCES `pacientes` (`N_Seguridad`);

--
-- Filtros para la tabla `tarjetas_visitas`
--
ALTER TABLE `tarjetas_visitas`
  ADD CONSTRAINT `fk_dos` FOREIGN KEY (`Id_tarv`) REFERENCES `pacientes` (`N_Seguridad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
