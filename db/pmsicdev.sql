-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-09-2015 a las 03:57:42
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pmsicdev`
--
CREATE DATABASE IF NOT EXISTS `pmsicdev` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `pmsicdev`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_business_units`
--

DROP TABLE IF EXISTS `mt_business_units`;
CREATE TABLE IF NOT EXISTS `mt_business_units` (
  `business_unit_id` int(10) NOT NULL,
  `business_unit_code` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `business_unit_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_business_units`
--

INSERT INTO `mt_business_units` (`business_unit_id`, `business_unit_code`, `business_unit_name`) VALUES(0, '-', '-');
INSERT INTO `mt_business_units` (`business_unit_id`, `business_unit_code`, `business_unit_name`) VALUES(1, 'Asesoría', 'Asesoría');
INSERT INTO `mt_business_units` (`business_unit_id`, `business_unit_code`, `business_unit_name`) VALUES(2, 'HCM', 'HCM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_commercial`
--

DROP TABLE IF EXISTS `mt_commercial`;
CREATE TABLE IF NOT EXISTS `mt_commercial` (
  `commercial_id` int(10) NOT NULL,
  `commercial_code` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `commercial_name` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_commercial`
--

INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(0, '-', '-');
INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(1, 'APEREZ', 'Agustín Perez');
INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(2, 'BSALGADO', 'Bernat Salgado');
INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(3, 'DFERNANDEZ', 'Daniel Fernandez');
INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(4, 'FDIAZ', 'Felix Diaz');
INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(5, 'JSENCIANES', 'Jerónimo Sencianes');
INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(6, 'MLOPEZ', 'Maite Lopez');
INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(7, 'MMENENDEZ', 'Marcos Menendez');
INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(8, 'MLOPEZ', 'Maite Lopez');
INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(9, 'MLOBATO', 'Maribel Lobato');
INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(10, 'SLOPEZ', 'Susana Lopez');
INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(11, 'TTORMO', 'Toni Tormo');
INSERT INTO `mt_commercial` (`commercial_id`, `commercial_code`, `commercial_name`) VALUES(12, 'XGIL', 'Xavier Gil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_customers`
--

DROP TABLE IF EXISTS `mt_customers`;
CREATE TABLE IF NOT EXISTS `mt_customers` (
  `customer_id` int(11) NOT NULL,
  `customer_code` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `customer_name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `resource_id` int(10) NOT NULL,
  `distributor_id` int(10) NOT NULL,
  `business_unit_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_customers`
--

INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(1, 'Acerinox', 'Acerinox Europa, S.A.U', 16, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(2, 'Lactalis', 'Grupo Lactalis Iberia, S.A', 16, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(3, 'Smurfit Kappa', 'Smurfit Kappa Iberoamerican S.A', 16, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(4, 'Zoetis', 'Zoetis Spain, S.L', 16, 1, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(5, 'Wolters Kluwer', 'Wolters Kluwer S.A', 0, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(6, 'TSC', 'Transport Sanitari Catalunya S.L', 12, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(7, 'Visionlab', 'Visionlab S.A', 0, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(8, 'Jumairah', 'Jumeirah Mallorca', 18, 2, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(9, 'Umivale', 'Umivale (Mútia de Accidentes de Trabajo)', 13, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(10, 'Palacios Alimentación', 'Grupo Empresarial Palacios Alimentación S.A', 11, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(11, 'Lex', 'Lex Asesores, S.L', 12, 0, 1);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(12, 'At. Least', 'At. Least, S.A', 13, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(13, 'Betón Catalán', 'Betón Catalán, S.A', 12, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(14, 'Redur', 'Redur S.A', 16, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(15, 'Hoteles Mac', 'Hoteles Mac, S.L', 18, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(16, 'Comexi Group', 'Comexi Group Industries S.A.U', 12, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(17, 'Atesa', 'Atesa, S.L', 17, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(18, 'DSV', 'DSV Road Spain, S.A.U', 0, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(19, 'Otsuka', 'Otsuka Pharmaceutical, S.A', 15, 3, 1);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(20, 'Goldman Sachs', 'Goldman Sachs', 14, 4, 1);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(21, 'Lafarge', 'Lafarge Cementos S.A.U', 16, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(22, 'Evo Banco', 'Evo Banco, S.A.U', 16, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(23, 'Mantequerias Arias', 'Mantequerías Arias S.A', 16, 0, 2);
INSERT INTO `mt_customers` (`customer_id`, `customer_code`, `customer_name`, `resource_id`, `distributor_id`, `business_unit_id`) VALUES(24, 'E&Y', 'EEYE Estudios Empresariales, A.I.E', 14, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_distributors`
--

DROP TABLE IF EXISTS `mt_distributors`;
CREATE TABLE IF NOT EXISTS `mt_distributors` (
  `distributor_id` int(10) NOT NULL,
  `distributor_code` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `distributor_name` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_distributors`
--

INSERT INTO `mt_distributors` (`distributor_id`, `distributor_code`, `distributor_name`) VALUES(0, '-', '-');
INSERT INTO `mt_distributors` (`distributor_id`, `distributor_code`, `distributor_name`) VALUES(1, 'NGA', 'Northgate Arinso, S.A');
INSERT INTO `mt_distributors` (`distributor_id`, `distributor_code`, `distributor_name`) VALUES(2, 'DSI', 'Distribuciones y Servicios Infomratios S.A');
INSERT INTO `mt_distributors` (`distributor_id`, `distributor_code`, `distributor_name`) VALUES(3, 'Grupo Constant', 'Grupo Constant, S.A');
INSERT INTO `mt_distributors` (`distributor_id`, `distributor_code`, `distributor_name`) VALUES(4, 'E&Y', 'EEYE Estudios Empresariales, A.I.E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_projects`
--

DROP TABLE IF EXISTS `mt_projects`;
CREATE TABLE IF NOT EXISTS `mt_projects` (
  `project_id` int(11) NOT NULL,
  `project_code` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `project_name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `project_description` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `project_type_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `request_type_id` int(10) NOT NULL,
  `project_status_id` int(10) NOT NULL,
  `project_estimated_start_date` date DEFAULT NULL COMMENT 'Not used now.',
  `project_estimated_end_date` date DEFAULT NULL COMMENT 'Not used now.',
  `project_start_date` date DEFAULT NULL COMMENT 'Not used now.',
  `project_end_date` date DEFAULT NULL COMMENT 'Not used now.',
  `project_phase_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_projects`
--

INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(1, '-', 'Superior Categoría', ' ', 3, 1, 2, 1, '2015-08-28', '2015-08-28', '2015-08-28', '2015-08-28', 4);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(2, '-', 'a3EQUIPO - BOLD', ' ', 3, 1, 1, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(3, '-', 'Auditoría', ' ', 4, 3, 1, 1, NULL, NULL, NULL, NULL, 5);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(4, '-', 'a3EQUIPO - BOLD', ' ', 3, 2, 1, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(5, 'TA4861', 'SAP', ' ', 2, 2, 1, 1, NULL, NULL, NULL, NULL, 4);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(6, '-', 'Informes varios', '', 4, 2, 1, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(7, 'TA4232', 'Arreglo datos', '', 6, 1, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(8, 'TA4233', 'Comedor', '', 3, 1, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(9, 'TA4234', 'Agrupaciones', '', 3, 1, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(10, 'TA4249', 'Agrupaciones', '', 4, 1, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(11, 'TA4259', 'Presencia', '', 3, 1, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(12, 'TA4261', 'Costes', '', 3, 1, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(13, 'TA4262', 'Superior categoría', '', 3, 1, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(14, '-', 'Informes varios', '', 4, 1, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(15, '-', 'Superior categoría', '', 3, 3, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(16, 'TA4981', 'Superior categoría', '', 3, 3, 2, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(17, '-', 'a3EQUIPO - BOLD', '', 3, 6, 1, 1, NULL, NULL, NULL, NULL, 5);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(18, 'TA4971', '-', '', 2, 6, 1, 2, NULL, NULL, NULL, NULL, 5);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(19, 'TA5031', '-', '', 1, 7, 1, 2, NULL, NULL, NULL, NULL, 3);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(20, 'TA5070', '-', '', 1, 8, 1, 1, NULL, NULL, NULL, NULL, 5);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(21, '-', 'Carga formación', '', 6, 9, 1, 2, NULL, NULL, NULL, NULL, 2);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(22, 'TA5056', 'Informe', '', 4, 10, 1, 1, NULL, NULL, NULL, NULL, 3);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(23, '-', 'Sábanas', '', 3, 11, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(24, '-', '-', '', 2, 11, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(25, 'TA4990', '-', '', 3, 12, 1, 2, NULL, NULL, NULL, NULL, 3);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(26, 'TA4966', '-', '', 3, 13, 1, 1, NULL, NULL, NULL, NULL, 5);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(27, 'TA4804', '-', '', 2, 14, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(28, 'TA5007', 'IBM - Cognos', '', 3, 14, 1, 1, NULL, NULL, NULL, NULL, 5);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(29, 'TA5174', '-', '', 1, 15, 1, 1, NULL, NULL, NULL, NULL, 8);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(30, 'TA5013', '-', '', 1, 16, 1, 1, NULL, NULL, NULL, NULL, 8);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(31, '-', '-', '', 3, 17, 1, 2, NULL, NULL, NULL, NULL, 8);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(32, 'TA4893', 'Portal 7p', '', 3, 24, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(33, 'TA4894', 'Portal 7p', '', 3, 24, 2, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(34, 'TA4942', 'Informe Empleados', '', 4, 18, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(35, 'TA4886', '-', '', 1, 19, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(36, 'TA5036', '-', '', 2, 19, 2, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(37, 'TA5069', 'Informe', '', 2, 19, 2, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(38, 'TA5136', 'Informes', '', 2, 19, 2, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(39, 'TA4558', 'SAP', '', 2, 21, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(40, 'TA4557', 'JDE', '', 2, 2, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(41, 'TA5017', 'Informe formación', '', 4, 21, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(42, 'TA4556', 'Analítica costes de produción', '', 3, 21, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(43, 'TA5106', '-', '', 1, 22, 1, 1, NULL, NULL, NULL, NULL, 8);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(44, 'TA4294', '-', '', 1, 23, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(45, 'TA4345', '-', '', 1, 23, 2, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(46, 'TA4360', '-', '', 2, 23, 2, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(47, 'TA4470', '-', 'Nuevas casuísticas a implementar', 2, 23, 2, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(48, 'TA4471', '-', 'Nuevas casuísticas a implementar', 2, 23, 2, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(49, 'TA4472', '-', 'Nuevas casuísticas a implementar', 2, 23, 2, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(50, 'TA4703', 'Cuadro de mando de formación', '', 4, 23, 1, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(51, 'TA4975', 'Informe cuadro de mando fomración', '', 4, 23, 2, 3, NULL, NULL, NULL, NULL, 0);
INSERT INTO `mt_projects` (`project_id`, `project_code`, `project_name`, `project_description`, `project_type_id`, `customer_id`, `request_type_id`, `project_status_id`, `project_estimated_start_date`, `project_estimated_end_date`, `project_start_date`, `project_end_date`, `project_phase_id`) VALUES(52, 'kjfdsfd', 'dsvdsv', '', 2, 18, 2, 3, NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_project_phases`
--

DROP TABLE IF EXISTS `mt_project_phases`;
CREATE TABLE IF NOT EXISTS `mt_project_phases` (
  `project_phase_id` int(10) NOT NULL,
  `project_phase_code` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `project_phase_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `project_phase_description` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_project_phases`
--

INSERT INTO `mt_project_phases` (`project_phase_id`, `project_phase_code`, `project_phase_name`, `project_phase_description`) VALUES(0, '-', '-', NULL);
INSERT INTO `mt_project_phases` (`project_phase_id`, `project_phase_code`, `project_phase_name`, `project_phase_description`) VALUES(1, 'Proyecto | Kick off', 'Proyecto | Kick off', NULL);
INSERT INTO `mt_project_phases` (`project_phase_id`, `project_phase_code`, `project_phase_name`, `project_phase_description`) VALUES(2, 'Proyecto | Planificación', 'Proyecto | Planificación', NULL);
INSERT INTO `mt_project_phases` (`project_phase_id`, `project_phase_code`, `project_phase_name`, `project_phase_description`) VALUES(3, 'Proyecto | Desarrollo', 'Proyecto | Desarrollo', NULL);
INSERT INTO `mt_project_phases` (`project_phase_id`, `project_phase_code`, `project_phase_name`, `project_phase_description`) VALUES(4, 'Proyecto | Pruebas unitarias', 'Proyecto | Pruebas unitarias', NULL);
INSERT INTO `mt_project_phases` (`project_phase_id`, `project_phase_code`, `project_phase_name`, `project_phase_description`) VALUES(5, 'Proyecto | Pruebas de usuario', 'Proyecto | Pruebas de usuario', NULL);
INSERT INTO `mt_project_phases` (`project_phase_id`, `project_phase_code`, `project_phase_name`, `project_phase_description`) VALUES(6, 'Proyecto | Formación', 'Proyecto | Formación', NULL);
INSERT INTO `mt_project_phases` (`project_phase_id`, `project_phase_code`, `project_phase_name`, `project_phase_description`) VALUES(7, 'Proyecto | Soporte arranque', 'Proyecto | Soporte arranque', NULL);
INSERT INTO `mt_project_phases` (`project_phase_id`, `project_phase_code`, `project_phase_name`, `project_phase_description`) VALUES(8, 'Proyecto | Cierre proyecto', 'Proyecto | Cierre proyecto', NULL);
INSERT INTO `mt_project_phases` (`project_phase_id`, `project_phase_code`, `project_phase_name`, `project_phase_description`) VALUES(9, 'Proyecto | Garantía', 'Proyecto | Garantía', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_project_status`
--

DROP TABLE IF EXISTS `mt_project_status`;
CREATE TABLE IF NOT EXISTS `mt_project_status` (
  `project_status_id` int(10) NOT NULL,
  `project_status_code` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `project_status_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `project_status_description` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_project_status`
--

INSERT INTO `mt_project_status` (`project_status_id`, `project_status_code`, `project_status_name`, `project_status_description`) VALUES(0, 'Undefined', 'Undefined', NULL);
INSERT INTO `mt_project_status` (`project_status_id`, `project_status_code`, `project_status_name`, `project_status_description`) VALUES(1, 'On Going', 'On Going', NULL);
INSERT INTO `mt_project_status` (`project_status_id`, `project_status_code`, `project_status_name`, `project_status_description`) VALUES(2, 'Stand By', 'Stand By', NULL);
INSERT INTO `mt_project_status` (`project_status_id`, `project_status_code`, `project_status_name`, `project_status_description`) VALUES(3, 'Closed', 'Closed', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_project_tasks`
--

DROP TABLE IF EXISTS `mt_project_tasks`;
CREATE TABLE IF NOT EXISTS `mt_project_tasks` (
  `project_id` int(10) NOT NULL,
  `project_task_id` int(10) NOT NULL,
  `project_task_code` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `project_task_name` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `project_task_todo` longtext COLLATE utf8_spanish_ci NOT NULL,
  `project_task_comment` longtext COLLATE utf8_spanish_ci,
  `project_task_request_date` date NOT NULL,
  `project_task_required_date` date NOT NULL,
  `project_task_status_id` int(10) NOT NULL,
  `project_task_created_by` int(10) NOT NULL,
  `project_task_assigned_to` int(10) NOT NULL,
  `project_phase_id` int(10) NOT NULL,
  `project_task_severity_id` int(10) NOT NULL,
  `project_task_review_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_project_tasks`
--

INSERT INTO `mt_project_tasks` (`project_id`, `project_task_id`, `project_task_code`, `project_task_name`, `project_task_todo`, `project_task_comment`, `project_task_request_date`, `project_task_required_date`, `project_task_status_id`, `project_task_created_by`, `project_task_assigned_to`, `project_phase_id`, `project_task_severity_id`, `project_task_review_date`) VALUES(1, 1, 'task_code', 'task_name', 'task_todo', 'task_comment', '2015-09-08', '2015-09-08', 2, 1, 2, 3, 3, '2015-09-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_project_task_severity`
--

DROP TABLE IF EXISTS `mt_project_task_severity`;
CREATE TABLE IF NOT EXISTS `mt_project_task_severity` (
  `project_task_severity_id` int(10) NOT NULL,
  `project_task_severity_code` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `project_task_severity_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_project_task_severity`
--

INSERT INTO `mt_project_task_severity` (`project_task_severity_id`, `project_task_severity_code`, `project_task_severity_name`) VALUES(0, '-', '-');
INSERT INTO `mt_project_task_severity` (`project_task_severity_id`, `project_task_severity_code`, `project_task_severity_name`) VALUES(1, 'Critical', 'Critical');
INSERT INTO `mt_project_task_severity` (`project_task_severity_id`, `project_task_severity_code`, `project_task_severity_name`) VALUES(2, 'High', 'High');
INSERT INTO `mt_project_task_severity` (`project_task_severity_id`, `project_task_severity_code`, `project_task_severity_name`) VALUES(3, 'Medium', 'Medium');
INSERT INTO `mt_project_task_severity` (`project_task_severity_id`, `project_task_severity_code`, `project_task_severity_name`) VALUES(4, 'Low', 'Low');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_project_task_status`
--

DROP TABLE IF EXISTS `mt_project_task_status`;
CREATE TABLE IF NOT EXISTS `mt_project_task_status` (
  `project_task_status_id` int(10) NOT NULL,
  `project_task_status_code` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `project_task_status_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_project_task_status`
--

INSERT INTO `mt_project_task_status` (`project_task_status_id`, `project_task_status_code`, `project_task_status_name`) VALUES(0, '-', '-');
INSERT INTO `mt_project_task_status` (`project_task_status_id`, `project_task_status_code`, `project_task_status_name`) VALUES(1, 'On going', 'On going');
INSERT INTO `mt_project_task_status` (`project_task_status_id`, `project_task_status_code`, `project_task_status_name`) VALUES(2, 'Done', 'Done');
INSERT INTO `mt_project_task_status` (`project_task_status_id`, `project_task_status_code`, `project_task_status_name`) VALUES(3, 'Descarted', 'Descarted');
INSERT INTO `mt_project_task_status` (`project_task_status_id`, `project_task_status_code`, `project_task_status_name`) VALUES(4, 'Cancelled', 'Cancelled');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_project_types`
--

DROP TABLE IF EXISTS `mt_project_types`;
CREATE TABLE IF NOT EXISTS `mt_project_types` (
  `project_type_id` int(10) NOT NULL,
  `project_type_code` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `project_type_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `project_type_description` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_project_types`
--

INSERT INTO `mt_project_types` (`project_type_id`, `project_type_code`, `project_type_name`, `project_type_description`) VALUES(0, 'Undefined', 'Undefined', NULL);
INSERT INTO `mt_project_types` (`project_type_id`, `project_type_code`, `project_type_name`, `project_type_description`) VALUES(1, 'EC sin diferencias', 'Enlace Contable sin Diferencias', NULL);
INSERT INTO `mt_project_types` (`project_type_id`, `project_type_code`, `project_type_name`, `project_type_description`) VALUES(2, 'EC por diferencias', 'Enlace Contable por Diferencias', NULL);
INSERT INTO `mt_project_types` (`project_type_id`, `project_type_code`, `project_type_name`, `project_type_description`) VALUES(3, 'Integración', 'Integración con otros sistemas', 'Integración con otros sistemas. Incluye integraciones de entrada / salida de owner / leaser');
INSERT INTO `mt_project_types` (`project_type_id`, `project_type_code`, `project_type_name`, `project_type_description`) VALUES(4, 'Informes', 'Informes', NULL);
INSERT INTO `mt_project_types` (`project_type_id`, `project_type_code`, `project_type_name`, `project_type_description`) VALUES(5, 'Soporte', 'Soporte', NULL);
INSERT INTO `mt_project_types` (`project_type_id`, `project_type_code`, `project_type_name`, `project_type_description`) VALUES(6, 'Script', 'Script', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_request_types`
--

DROP TABLE IF EXISTS `mt_request_types`;
CREATE TABLE IF NOT EXISTS `mt_request_types` (
  `request_type_id` int(10) NOT NULL,
  `request_type_code` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `request_type_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `request_type_description` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_request_types`
--

INSERT INTO `mt_request_types` (`request_type_id`, `request_type_code`, `request_type_name`, `request_type_description`) VALUES(1, 'NW', 'Nuevo desarrollo', NULL);
INSERT INTO `mt_request_types` (`request_type_id`, `request_type_code`, `request_type_name`, `request_type_description`) VALUES(2, 'EV', 'Evolutivo', NULL);
INSERT INTO `mt_request_types` (`request_type_id`, `request_type_code`, `request_type_name`, `request_type_description`) VALUES(3, 'SP', 'Soporte', NULL);
INSERT INTO `mt_request_types` (`request_type_id`, `request_type_code`, `request_type_name`, `request_type_description`) VALUES(4, 'MN', 'Mantenimiento', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_resources`
--

DROP TABLE IF EXISTS `mt_resources`;
CREATE TABLE IF NOT EXISTS `mt_resources` (
  `resource_id` int(10) NOT NULL,
  `resource_code` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `resource_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `resource_email` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `resource_type_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_resources`
--

INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(0, '-', '-', NULL, 0);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(1, 'icarballo', 'Isaac Carballo', 'icarballo@wke.es', 2);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(2, 'jsencianes', 'Jerónimo Sencianes', 'jsencianes@wke.es', 2);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(3, 'rgonzalez', 'Ramón Gonzalez', NULL, 2);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(4, 'emacian', 'Emilio Macián', NULL, 2);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(5, 'mlinde', 'Martina Linde', NULL, 2);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(6, 'jvidal', 'José María Vidal', NULL, 2);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(7, 'rbarriga', 'Raúl Barriga', NULL, 2);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(8, 'jramom', 'Javier Ramón', NULL, 2);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(9, 'agonzalez', 'Alejandro Gonzalez', NULL, 2);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(10, 'jmiranda', 'José Luís Miranda', NULL, 2);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(11, 'aperez', 'Agustí Perez', NULL, 1);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(12, 'bsalgado', 'Bernat Salgado', NULL, 1);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(13, 'dfernandez', 'Daniel Fernandez', NULL, 1);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(14, 'fdiaz', 'Felix Diaz', NULL, 1);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(15, 'mlopez', 'Maite Lopez', NULL, 1);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(16, 'mmenendez', 'Marcos Menendez', NULL, 1);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(17, 'mlobato', 'Maribel Lobato', NULL, 1);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(18, 'slopez', 'Susana Lopez', NULL, 1);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(19, 'ttormo', 'Toni Tormo', NULL, 1);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(20, 'xgil', 'Xavier Gil', NULL, 1);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(21, 'agallardo', 'Ana Gallardo', NULL, 1);
INSERT INTO `mt_resources` (`resource_id`, `resource_code`, `resource_name`, `resource_email`, `resource_type_id`) VALUES(22, 'jboure', 'Joan Boure', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_resource_types`
--

DROP TABLE IF EXISTS `mt_resource_types`;
CREATE TABLE IF NOT EXISTS `mt_resource_types` (
  `resource_type_id` int(10) NOT NULL,
  `resource_type_code` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `resource_type_name` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_resource_types`
--

INSERT INTO `mt_resource_types` (`resource_type_id`, `resource_type_code`, `resource_type_name`) VALUES(0, '-', '-');
INSERT INTO `mt_resource_types` (`resource_type_id`, `resource_type_code`, `resource_type_name`) VALUES(1, 'COM', 'Comercial');
INSERT INTO `mt_resource_types` (`resource_type_id`, `resource_type_code`, `resource_type_name`) VALUES(2, 'FTC', 'Internal Consultant');
INSERT INTO `mt_resource_types` (`resource_type_id`, `resource_type_code`, `resource_type_name`) VALUES(3, 'CUS', 'Customer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mt_users`
--

DROP TABLE IF EXISTS `mt_users`;
CREATE TABLE IF NOT EXISTS `mt_users` (
  `user_id` int(11) DEFAULT NULL,
  `user_login` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_password` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_name` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_surname` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_email` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_active_ind` int(11) DEFAULT NULL,
  `user_wrong_password` int(11) DEFAULT NULL,
  `auditory_developer_ind` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mt_users`
--

INSERT INTO `mt_users` (`user_id`, `user_login`, `user_password`, `user_name`, `user_surname`, `user_email`, `user_active_ind`, `user_wrong_password`, `auditory_developer_ind`) VALUES(0, 'admin', 'admin', 'Administrador', NULL, 'isaac.carballo@gmail.com', 1, 0, 'true');
INSERT INTO `mt_users` (`user_id`, `user_login`, `user_password`, `user_name`, `user_surname`, `user_email`, `user_active_ind`, `user_wrong_password`, `auditory_developer_ind`) VALUES(1, 'isaac', 'a3', 'Manolo del bombo Marron González', NULL, 'jose.marron@dddarrakis.es', 1, 0, 'true');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `mv_customers`
--
DROP VIEW IF EXISTS `mv_customers`;
CREATE TABLE IF NOT EXISTS `mv_customers` (
`customer_id` int(11)
,`customer_code` varchar(50)
,`customer_name` varchar(100)
,`distributor_id` int(10)
,`distributor_code` varchar(20)
,`distributor_name` varchar(100)
,`resource_id` int(10)
,`resource_code` varchar(30)
,`resource_name` varchar(50)
,`business_unit_id` int(10)
,`business_unit_code` varchar(20)
,`business_unit_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `mv_customers_projects`
--
DROP VIEW IF EXISTS `mv_customers_projects`;
CREATE TABLE IF NOT EXISTS `mv_customers_projects` (
`customer_id` int(11)
,`customer_code` varchar(50)
,`customer_name` varchar(100)
,`project_id` int(11)
,`project_code` varchar(50)
,`project_name` varchar(100)
,`project_description` varchar(200)
,`project_type_id` int(10)
,`project_type_code` varchar(20)
,`project_type_name` varchar(50)
,`request_type_id` int(10)
,`request_type_code` varchar(20)
,`request_type_name` varchar(50)
,`project_status_id` int(10)
,`project_status_code` varchar(50)
,`project_status_name` varchar(50)
,`project_phase_id` int(10)
,`project_phase_code` varchar(50)
,`project_phase_name` varchar(50)
,`business_unit_id` int(10)
,`business_unit_code` varchar(20)
,`business_unit_name` varchar(50)
,`project_estimated_start_date` date
,`project_estimated_end_date` date
,`project_start_date` date
,`project_end_date` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `mv_projects_tasks`
--
DROP VIEW IF EXISTS `mv_projects_tasks`;
CREATE TABLE IF NOT EXISTS `mv_projects_tasks` (
`project_id` int(10)
,`project_task_id` int(10)
,`project_task_code` varchar(20)
,`project_task_name` varchar(50)
,`project_task_todo` longtext
,`poject_task_comment` longtext
,`project_task_request_date` date
,`project_task_required_date` date
,`project_task_status_id` int(10)
,`project_task_created_by` int(10)
,`project_task_assigned_to` int(10)
,`project_phase_id` int(10)
,`project_task_severity_id` int(10)
,`project_task_review_date` date
,`project_task_severity_code` varchar(20)
,`project_task_severity_name` varchar(50)
,`project_task_status_code` varchar(20)
,`project_task_status_name` varchar(50)
,`project_phase_code` varchar(50)
,`project_phase_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `mv_customers`
--
DROP TABLE IF EXISTS `mv_customers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mv_customers` AS select `mt_c`.`customer_id` AS `customer_id`,`mt_c`.`customer_code` AS `customer_code`,`mt_c`.`customer_name` AS `customer_name`,`mt_d`.`distributor_id` AS `distributor_id`,`mt_d`.`distributor_code` AS `distributor_code`,`mt_d`.`distributor_name` AS `distributor_name`,`mt_res`.`resource_id` AS `resource_id`,`mt_res`.`resource_code` AS `resource_code`,`mt_res`.`resource_name` AS `resource_name`,`mt_bu`.`business_unit_id` AS `business_unit_id`,`mt_bu`.`business_unit_code` AS `business_unit_code`,`mt_bu`.`business_unit_name` AS `business_unit_name` from (((`mt_customers` `mt_c` join `mt_distributors` `mt_d` on((`mt_c`.`distributor_id` = `mt_d`.`distributor_id`))) join `mt_resources` `mt_res` on((`mt_c`.`resource_id` = `mt_res`.`resource_id`))) join `mt_business_units` `mt_bu` on((`mt_c`.`business_unit_id` = `mt_bu`.`business_unit_id`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `mv_customers_projects`
--
DROP TABLE IF EXISTS `mv_customers_projects`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mv_customers_projects` AS select `mt_c`.`customer_id` AS `customer_id`,`mt_c`.`customer_code` AS `customer_code`,`mt_c`.`customer_name` AS `customer_name`,`mt_p`.`project_id` AS `project_id`,`mt_p`.`project_code` AS `project_code`,`mt_p`.`project_name` AS `project_name`,`mt_p`.`project_description` AS `project_description`,`mt_pt`.`project_type_id` AS `project_type_id`,`mt_pt`.`project_type_code` AS `project_type_code`,`mt_pt`.`project_type_name` AS `project_type_name`,`mt_rt`.`request_type_id` AS `request_type_id`,`mt_rt`.`request_type_code` AS `request_type_code`,`mt_rt`.`request_type_name` AS `request_type_name`,`mt_ps`.`project_status_id` AS `project_status_id`,`mt_ps`.`project_status_code` AS `project_status_code`,`mt_ps`.`project_status_name` AS `project_status_name`,`mt_pp`.`project_phase_id` AS `project_phase_id`,`mt_pp`.`project_phase_code` AS `project_phase_code`,`mt_pp`.`project_phase_name` AS `project_phase_name`,`mt_bu`.`business_unit_id` AS `business_unit_id`,`mt_bu`.`business_unit_code` AS `business_unit_code`,`mt_bu`.`business_unit_name` AS `business_unit_name`,`mt_p`.`project_estimated_start_date` AS `project_estimated_start_date`,`mt_p`.`project_estimated_end_date` AS `project_estimated_end_date`,`mt_p`.`project_start_date` AS `project_start_date`,`mt_p`.`project_end_date` AS `project_end_date` from ((((((`mt_customers` `mt_c` join `mt_projects` `mt_p` on((`mt_c`.`customer_id` = `mt_p`.`customer_id`))) join `mt_project_types` `mt_pt` on((`mt_p`.`project_type_id` = `mt_pt`.`project_type_id`))) join `mt_request_types` `mt_rt` on((`mt_p`.`request_type_id` = `mt_rt`.`request_type_id`))) join `mt_project_status` `mt_ps` on((`mt_p`.`project_status_id` = `mt_ps`.`project_status_id`))) join `mt_project_phases` `mt_pp` on((`mt_p`.`project_phase_id` = `mt_pp`.`project_phase_id`))) join `mt_business_units` `mt_bu` on((`mt_c`.`business_unit_id` = `mt_bu`.`business_unit_id`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `mv_projects_tasks`
--
DROP TABLE IF EXISTS `mv_projects_tasks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mv_projects_tasks` AS select `mt_pt`.`project_id` AS `project_id`,`mt_pt`.`project_task_id` AS `project_task_id`,`mt_pt`.`project_task_code` AS `project_task_code`,`mt_pt`.`project_task_name` AS `project_task_name`,`mt_pt`.`project_task_todo` AS `project_task_todo`,`mt_pt`.`project_task_comment` AS `poject_task_comment`,`mt_pt`.`project_task_request_date` AS `project_task_request_date`,`mt_pt`.`project_task_required_date` AS `project_task_required_date`,`mt_pt`.`project_task_status_id` AS `project_task_status_id`,`mt_pt`.`project_task_created_by` AS `project_task_created_by`,`mt_pt`.`project_task_assigned_to` AS `project_task_assigned_to`,`mt_pt`.`project_phase_id` AS `project_phase_id`,`mt_pt`.`project_task_severity_id` AS `project_task_severity_id`,`mt_pt`.`project_task_review_date` AS `project_task_review_date`,`mt_pts`.`project_task_severity_code` AS `project_task_severity_code`,`mt_pts`.`project_task_severity_name` AS `project_task_severity_name`,`mt_ptst`.`project_task_status_code` AS `project_task_status_code`,`mt_ptst`.`project_task_status_name` AS `project_task_status_name`,`mt_pp`.`project_phase_code` AS `project_phase_code`,`mt_pp`.`project_phase_name` AS `project_phase_name` from (((`mt_project_tasks` `mt_pt` join `mt_project_task_severity` `mt_pts` on((`mt_pt`.`project_task_severity_id` = `mt_pts`.`project_task_severity_id`))) join `mt_project_task_status` `mt_ptst` on((`mt_pt`.`project_task_status_id` = `mt_ptst`.`project_task_status_id`))) join `mt_project_phases` `mt_pp` on((`mt_pt`.`project_phase_id` = `mt_pp`.`project_phase_id`)));

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mt_business_units`
--
ALTER TABLE `mt_business_units`
  ADD PRIMARY KEY (`business_unit_id`);

--
-- Indices de la tabla `mt_commercial`
--
ALTER TABLE `mt_commercial`
  ADD PRIMARY KEY (`commercial_id`);

--
-- Indices de la tabla `mt_distributors`
--
ALTER TABLE `mt_distributors`
  ADD PRIMARY KEY (`distributor_id`);

--
-- Indices de la tabla `mt_project_phases`
--
ALTER TABLE `mt_project_phases`
  ADD PRIMARY KEY (`project_phase_id`);

--
-- Indices de la tabla `mt_project_status`
--
ALTER TABLE `mt_project_status`
  ADD PRIMARY KEY (`project_status_id`);

--
-- Indices de la tabla `mt_project_task_severity`
--
ALTER TABLE `mt_project_task_severity`
  ADD PRIMARY KEY (`project_task_severity_id`);

--
-- Indices de la tabla `mt_project_task_status`
--
ALTER TABLE `mt_project_task_status`
  ADD PRIMARY KEY (`project_task_status_id`);

--
-- Indices de la tabla `mt_project_types`
--
ALTER TABLE `mt_project_types`
  ADD PRIMARY KEY (`project_type_id`),
  ADD UNIQUE KEY `idx_unique_project_types_code` (`project_type_code`);

--
-- Indices de la tabla `mt_request_types`
--
ALTER TABLE `mt_request_types`
  ADD PRIMARY KEY (`request_type_id`);

--
-- Indices de la tabla `mt_resources`
--
ALTER TABLE `mt_resources`
  ADD PRIMARY KEY (`resource_id`);

--
-- Indices de la tabla `mt_resource_types`
--
ALTER TABLE `mt_resource_types`
  ADD PRIMARY KEY (`resource_type_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
