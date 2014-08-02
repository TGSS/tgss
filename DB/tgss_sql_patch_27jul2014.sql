﻿-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2014 at 11:40 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tgss`
--

-- --------------------------------------------------------

--
-- Table structure for table `tablecalenders`
--

CREATE TABLE IF NOT EXISTS `tablecalenders` (
  `card_id` varchar(30) NOT NULL,
  `parent_type_id` varchar(255) NOT NULL,
  `no_of_pages` int(11) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_type_display` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `with_lamination` decimal(10,2) NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tablecalenders`
--

INSERT INTO `tablecalenders` (`card_id`, `parent_type_id`, `no_of_pages`, `card_type`, `card_type_display`, `quantity`, `price`, `with_lamination`) VALUES
('TC_010101', 'TCT_000001', 7, '5_75', '5" x 7.5"', 100, '1300.00', '1500.00'),
('TC_010102', 'TCT_000001', 7, '5_75', '5" x 7.5"', 200, '800.00', '950.00'),
('TC_010103', 'TCT_000001', 7, '5_75', '5" x 7.5"', 300, '650.00', '775.00'),
('TC_010104', 'TCT_000001', 7, '5_75', '5" x 7.5"', 400, '600.00', '648.00'),
('TC_010105', 'TCT_000001', 7, '5_75', '5" x 7.5"', 500, '525.00', '600.00'),
('TC_010106', 'TCT_000001', 7, '5_75', '5" x 7.5"', 700, '470.00', '540.00'),
('TC_010107', 'TCT_000001', 7, '5_75', '5" x 7.5"', 1000, '420.00', '470.00'),
('TC_010108', 'TCT_000001', 7, '5_75', '5" x 7.5"', 1500, '400.00', '460.00'),
('TC_010109', 'TCT_000001', 7, '5_75', '5" x 7.5"', 2000, '380.00', '460.00'),
('TC_010110', 'TCT_000001', 7, '5_75', '5" x 7.5"', 2500, '370.00', '450.00'),
('TC_010111', 'TCT_000001', 7, '5_75', '5" x 7.5"', 3000, '330.00', '400.00'),
('TC_010112', 'TCT_000001', 7, '5_75', '5" x 7.5"', 5000, '315.00', '380.00'),
('TC_010201', 'TCT_000001', 7, '825_65', '8.25" x 6.5"', 100, '2150.00', '2450.00'),
('TC_010202', 'TCT_000001', 7, '825_65', '8.25" x 6.5"', 200, '1250.00', '1450.00'),
('TC_010203', 'TCT_000001', 7, '825_65', '8.25" x 6.5"', 300, '925.00', '1100.00'),
('TC_010204', 'TCT_000001', 7, '825_65', '8.25" x 6.5"', 400, '800.00', '950.00'),
('TC_010205', 'TCT_000001', 7, '825_65', '8.25" x 6.5"', 500, '700.00', '850.00'),
('TC_010206', 'TCT_000001', 7, '825_65', '8.25" x 6.5"', 700, '600.00', '730.00'),
('TC_010207', 'TCT_000001', 7, '825_65', '8.25" x 6.5"', 1000, '525.00', '640.00'),
('TC_010208', 'TCT_000001', 7, '825_65', '8.25" x 6.5"', 1500, '500.00', '590.00'),
('TC_010209', 'TCT_000001', 7, '825_65', '8.25" x 6.5"', 2000, '460.00', '570.00'),
('TC_010210', 'TCT_000001', 7, '825_65', '8.25" x 6.5"', 2500, '450.00', '550.00'),
('TC_010211', 'TCT_000001', 7, '825_65', '8.25" x 6.5"', 3000, '390.00', '500.00'),
('TC_010212', 'TCT_000001', 7, '825_65', '8.25" x 6.5"', 5000, '375.00', '480.00'),
('TC_010301', 'TCT_000001', 7, '75_10', '7.5" x 10"', 100, '2340.00', '2830.00'),
('TC_010302', 'TCT_000001', 7, '75_10', '7.5" x 10"', 200, '1380.00', '1700.00'),
('TC_010303', 'TCT_000001', 7, '75_10', '7.5" x 10"', 300, '1080.00', '1300.00'),
('TC_010304', 'TCT_000001', 7, '75_10', '7.5" x 10"', 400, '900.00', '1120.00'),
('TC_010305', 'TCT_000001', 7, '75_10', '7.5" x 10"', 500, '850.00', '1000.00'),
('TC_010306', 'TCT_000001', 7, '75_10', '7.5" x 10"', 700, '700.00', '870.00'),
('TC_010307', 'TCT_000001', 7, '75_10', '7.5" x 10"', 1000, '600.00', '775.00'),
('TC_010308', 'TCT_000001', 7, '75_10', '7.5" x 10"', 1500, '570.00', '725.00'),
('TC_010309', 'TCT_000001', 7, '75_10', '7.5" x 10"', 2000, '540.00', '680.00'),
('TC_010310', 'TCT_000001', 7, '75_10', '7.5" x 10"', 2500, '520.00', '660.00'),
('TC_010311', 'TCT_000001', 7, '75_10', '7.5" x 10"', 3000, '480.00', '610.00'),
('TC_010312', 'TCT_000001', 7, '75_10', '7.5" x 10"', 5000, '460.00', '590.00'),
('TC_010401', 'TCT_000001', 13, '5_75', '5" x 7.5"', 100, '2300.00', '2800.00'),
('TC_010402', 'TCT_000001', 13, '5_75', '5" x 7.5"', 200, '1350.00', '1650.00'),
('TC_010403', 'TCT_000001', 13, '5_75', '5" x 7.5"', 300, '1050.00', '1280.00'),
('TC_010404', 'TCT_000001', 13, '5_75', '5" x 7.5"', 400, '850.00', '1050.00'),
('TC_010405', 'TCT_000001', 13, '5_75', '5" x 7.5"', 500, '760.00', '960.00'),
('TC_010406', 'TCT_000001', 13, '5_75', '5" x 7.5"', 700, '650.00', '810.00'),
('TC_010407', 'TCT_000001', 13, '5_75', '5" x 7.5"', 1000, '560.00', '730.00'),
('TC_010408', 'TCT_000001', 13, '5_75', '5" x 7.5"', 1500, '530.00', '690.00'),
('TC_010409', 'TCT_000001', 13, '5_75', '5" x 7.5"', 2000, '500.00', '640.00'),
('TC_010410', 'TCT_000001', 13, '5_75', '5" x 7.5"', 2500, '480.00', '625.00'),
('TC_010411', 'TCT_000001', 13, '5_75', '5" x 7.5"', 3000, '430.00', '570.00'),
('TC_010412', 'TCT_000001', 13, '5_75', '5" x 7.5"', 5000, '410.00', '550.00'),
('TC_010501', 'TCT_000001', 13, '825_65', '8.25" x 6.5"', 100, '3750.00', '4300.00'),
('TC_010502', 'TCT_000001', 13, '825_65', '8.25" x 6.5"', 200, '2080.00', '2425.00'),
('TC_010503', 'TCT_000001', 13, '825_65', '8.25" x 6.5"', 300, '1525.00', '1830.00'),
('TC_010504', 'TCT_000001', 13, '825_65', '8.25" x 6.5"', 400, '1250.00', '1625.00'),
('TC_010505', 'TCT_000001', 13, '825_65', '8.25" x 6.5"', 500, '1080.00', '1340.00'),
('TC_010506', 'TCT_000001', 13, '825_65', '8.25" x 6.5"', 700, '900.00', '1120.00'),
('TC_010507', 'TCT_000001', 13, '825_65', '8.25" x 6.5"', 1000, '750.00', '925.00'),
('TC_010508', 'TCT_000001', 13, '825_65', '8.25" x 6.5"', 1500, '680.00', '880.00'),
('TC_010509', 'TCT_000001', 13, '825_65', '8.25" x 6.5"', 2000, '625.00', '825.00'),
('TC_010510', 'TCT_000001', 13, '825_65', '8.25" x 6.5"', 2500, '610.00', '800.00'),
('TC_010511', 'TCT_000001', 13, '825_65', '8.25" x 6.5"', 3000, '560.00', '740.00'),
('TC_010512', 'TCT_000001', 13, '825_65', '8.25" x 6.5"', 5000, '490.00', '710.00'),
('TC_010601', 'TCT_000001', 13, 'custom', 'custom size', 100, '4200.00', '4900.00'),
('TC_010602', 'TCT_000001', 13, 'custom', 'custom size', 200, '2340.00', '2820.00'),
('TC_010603', 'TCT_000001', 13, 'custom', 'custom size', 300, '1725.00', '2130.00'),
('TC_010604', 'TCT_000001', 13, 'custom', 'custom size', 400, '1420.00', '1780.00'),
('TC_010605', 'TCT_000001', 13, 'custom', 'custom size', 500, '1100.00', '1570.00'),
('TC_010606', 'TCT_000001', 13, 'custom', 'custom size', 700, '1025.00', '1330.00'),
('TC_010607', 'TCT_000001', 13, 'custom', 'custom size', 1000, '870.00', '1150.00'),
('TC_010608', 'TCT_000001', 13, 'custom', 'custom size', 1500, '790.00', '1060.00'),
('TC_010609', 'TCT_000001', 13, 'custom', 'custom size', 2000, '730.00', '990.00'),
('TC_010610', 'TCT_000001', 13, 'custom', 'custom size', 2500, '700.00', '960.00'),
('TC_010611', 'TCT_000001', 13, 'custom', 'custom size', 3000, '640.00', '900.00'),
('TC_010612', 'TCT_000001', 13, 'custom', 'custom size', 5000, '620.00', '860.00'),
('TC_020101', 'TCT_000002', 7, '5_75', '5" x 7.5"', 100, '1330.00', '1520.00'),
('TC_020102', 'TCT_000002', 7, '5_75', '5" x 7.5"', 200, '820.00', '960.00'),
('TC_020103', 'TCT_000002', 7, '5_75', '5" x 7.5"', 300, '660.00', '790.00'),
('TC_020104', 'TCT_000002', 7, '5_75', '5" x 7.5"', 400, '610.00', '670.00'),
('TC_020105', 'TCT_000002', 7, '5_75', '5" x 7.5"', 500, '535.00', '610.00'),
('TC_020106', 'TCT_000002', 7, '5_75', '5" x 7.5"', 700, '480.00', '550.00'),
('TC_020107', 'TCT_000002', 7, '5_75', '5" x 7.5"', 1000, '430.00', '480.00'),
('TC_020108', 'TCT_000002', 7, '5_75', '5" x 7.5"', 1500, '410.00', '470.00'),
('TC_020109', 'TCT_000002', 7, '5_75', '5" x 7.5"', 2000, '390.00', '450.00'),
('TC_020110', 'TCT_000002', 7, '5_75', '5" x 7.5"', 2500, '380.00', '440.00'),
('TC_020111', 'TCT_000002', 7, '5_75', '5" x 7.5"', 3000, '340.00', '410.00'),
('TC_020112', 'TCT_000002', 7, '5_75', '5" x 7.5"', 5000, '325.00', '390.00'),
('TC_020201', 'TCT_000002', 7, '825_65', '8.25" x 6.5"', 100, '2230.00', '2530.00'),
('TC_020202', 'TCT_000002', 7, '825_65', '8.25" x 6.5"', 200, '1320.00', '1520.00'),
('TC_020203', 'TCT_000002', 7, '825_65', '8.25" x 6.5"', 300, '980.00', '1160.00'),
('TC_020204', 'TCT_000002', 7, '825_65', '8.25" x 6.5"', 400, '850.00', '1000.00'),
('TC_020205', 'TCT_000002', 7, '825_65', '8.25" x 6.5"', 500, '750.00', '900.00'),
('TC_020206', 'TCT_000002', 7, '825_65', '8.25" x 6.5"', 700, '650.00', '780.00'),
('TC_020207', 'TCT_000002', 7, '825_65', '8.25" x 6.5"', 1000, '575.00', '690.00'),
('TC_020208', 'TCT_000002', 7, '825_65', '8.25" x 6.5"', 1500, '550.00', '650.00'),
('TC_020209', 'TCT_000002', 7, '825_65', '8.25" x 6.5"', 2000, '510.00', '620.00'),
('TC_020210', 'TCT_000002', 7, '825_65', '8.25" x 6.5"', 2500, '500.00', '600.00'),
('TC_020211', 'TCT_000002', 7, '825_65', '8.25" x 6.5"', 3000, '440.00', '550.00'),
('TC_020212', 'TCT_000002', 7, '825_65', '8.25" x 6.5"', 5000, '425.00', '530.00'),
('TC_020301', 'TCT_000002', 7, '75_10', '7.5" x 10"', 100, '2380.00', '2870.00'),
('TC_020302', 'TCT_000002', 7, '75_10', '7.5" x 10"', 200, '1410.00', '1730.00'),
('TC_020303', 'TCT_000002', 7, '75_10', '7.5" x 10"', 300, '1100.00', '1330.00'),
('TC_020304', 'TCT_000002', 7, '75_10', '7.5" x 10"', 400, '920.00', '1140.00'),
('TC_020305', 'TCT_000002', 7, '75_10', '7.5" x 10"', 500, '870.00', '1020.00'),
('TC_020306', 'TCT_000002', 7, '75_10', '7.5" x 10"', 700, '720.00', '890.00'),
('TC_020307', 'TCT_000002', 7, '75_10', '7.5" x 10"', 1000, '620.00', '800.00'),
('TC_020308', 'TCT_000002', 7, '75_10', '7.5" x 10"', 1500, '590.00', '745.00'),
('TC_020309', 'TCT_000002', 7, '75_10', '7.5" x 10"', 2000, '560.00', '700.00'),
('TC_020310', 'TCT_000002', 7, '75_10', '7.5" x 10"', 2500, '540.00', '680.00'),
('TC_020311', 'TCT_000002', 7, '75_10', '7.5" x 10"', 3000, '500.00', '630.00'),
('TC_020312', 'TCT_000002', 7, '75_10', '7.5" x 10"', 5000, '480.00', '610.00'),
('TC_020401', 'TCT_000002', 13, '5_75', '5" x 7.5"', 100, '2400.00', '2820.00'),
('TC_020402', 'TCT_000002', 13, '5_75', '5" x 7.5"', 200, '1380.00', '1680.00'),
('TC_020403', 'TCT_000002', 13, '5_75', '5" x 7.5"', 300, '1070.00', '1300.00'),
('TC_020404', 'TCT_000002', 13, '5_75', '5" x 7.5"', 400, '870.00', '1080.00'),
('TC_020405', 'TCT_000002', 13, '5_75', '5" x 7.5"', 500, '780.00', '970.00'),
('TC_020406', 'TCT_000002', 13, '5_75', '5" x 7.5"', 700, '670.00', '830.00'),
('TC_020407', 'TCT_000002', 13, '5_75', '5" x 7.5"', 1000, '580.00', '740.00'),
('TC_020408', 'TCT_000002', 13, '5_75', '5" x 7.5"', 1500, '550.00', '700.00'),
('TC_020409', 'TCT_000002', 13, '5_75', '5" x 7.5"', 2000, '520.00', '650.00'),
('TC_020410', 'TCT_000002', 13, '5_75', '5" x 7.5"', 2500, '500.00', '635.00'),
('TC_020411', 'TCT_000002', 13, '5_75', '5" x 7.5"', 3000, '450.00', '580.00'),
('TC_020412', 'TCT_000002', 13, '5_75', '5" x 7.5"', 5000, '430.00', '560.00'),
('TC_020501', 'TCT_000002', 13, '825_65', '8.25" x 6.5"', 100, '3830.00', '4380.00'),
('TC_020502', 'TCT_000002', 13, '825_65', '8.25" x 6.5"', 200, '2150.00', '2480.00'),
('TC_020503', 'TCT_000002', 13, '825_65', '8.25" x 6.5"', 300, '1585.00', '1880.00'),
('TC_020504', 'TCT_000002', 13, '825_65', '8.25" x 6.5"', 400, '1290.00', '1665.00'),
('TC_020505', 'TCT_000002', 13, '825_65', '8.25" x 6.5"', 500, '1120.00', '1380.00'),
('TC_020506', 'TCT_000002', 13, '825_65', '8.25" x 6.5"', 700, '940.00', '1160.00'),
('TC_020507', 'TCT_000002', 13, '825_65', '8.25" x 6.5"', 1000, '810.00', '965.00'),
('TC_020508', 'TCT_000002', 13, '825_65', '8.25" x 6.5"', 1500, '720.00', '920.00'),
('TC_020509', 'TCT_000002', 13, '825_65', '8.25" x 6.5"', 2000, '665.00', '865.00'),
('TC_020510', 'TCT_000002', 13, '825_65', '8.25" x 6.5"', 2500, '650.00', '840.00'),
('TC_020511', 'TCT_000002', 13, '825_65', '8.25" x 6.5"', 3000, '610.00', '800.00'),
('TC_020512', 'TCT_000002', 13, '825_65', '8.25" x 6.5"', 5000, '530.00', '750.00'),
('TC_020601', 'TCT_000002', 13, 'custom', 'custom size', 100, '4300.00', '5000.00'),
('TC_020602', 'TCT_000002', 13, 'custom', 'custom size', 200, '2420.00', '2900.00'),
('TC_020603', 'TCT_000002', 13, 'custom', 'custom size', 300, '1800.00', '2190.00'),
('TC_020604', 'TCT_000002', 13, 'custom', 'custom size', 400, '3275.00', '1840.00'),
('TC_020605', 'TCT_000002', 13, 'custom', 'custom size', 500, '1160.00', '1630.00'),
('TC_020606', 'TCT_000002', 13, 'custom', 'custom size', 700, '1085.00', '1390.00'),
('TC_020607', 'TCT_000002', 13, 'custom', 'custom size', 1000, '930.00', '1210.00'),
('TC_020608', 'TCT_000002', 13, 'custom', 'custom size', 1500, '850.00', '1120.00'),
('TC_020609', 'TCT_000002', 13, 'custom', 'custom size', 2000, '790.00', '1050.00'),
('TC_020610', 'TCT_000002', 13, 'custom', 'custom size', 2500, '760.00', '1020.00'),
('TC_020611', 'TCT_000002', 13, 'custom', 'custom size', 3000, '700.00', '960.00'),
('TC_020612', 'TCT_000002', 13, 'custom', 'custom size', 5000, '680.00', '920.00'),
('TC_030101', 'TCT_000003', 7, '5_75', '5" x 7.5"', 100, '1370.00', '1560.00'),
('TC_030102', 'TCT_000003', 7, '5_75', '5" x 7.5"', 200, '850.00', '990.00'),
('TC_030103', 'TCT_000003', 7, '5_75', '5" x 7.5"', 300, '690.00', '820.00'),
('TC_030104', 'TCT_000003', 7, '5_75', '5" x 7.5"', 400, '630.00', '690.00'),
('TC_030105', 'TCT_000003', 7, '5_75', '5" x 7.5"', 500, '555.00', '630.00'),
('TC_030106', 'TCT_000003', 7, '5_75', '5" x 7.5"', 700, '500.00', '570.00'),
('TC_030107', 'TCT_000003', 7, '5_75', '5" x 7.5"', 1000, '450.00', '500.00'),
('TC_030108', 'TCT_000003', 7, '5_75', '5" x 7.5"', 1500, '430.00', '490.00'),
('TC_030109', 'TCT_000003', 7, '5_75', '5" x 7.5"', 2000, '410.00', '470.00'),
('TC_030110', 'TCT_000003', 7, '5_75', '5" x 7.5"', 2500, '400.00', '460.00'),
('TC_030111', 'TCT_000003', 7, '5_75', '5" x 7.5"', 3000, '360.00', '430.00'),
('TC_030112', 'TCT_000003', 7, '5_75', '5" x 7.5"', 5000, '345.00', '410.00'),
('TC_030201', 'TCT_000003', 7, '825_65', '8.25" x 6.5"', 100, '2290.00', '2590.00'),
('TC_030202', 'TCT_000003', 7, '825_65', '8.25" x 6.5"', 200, '1370.00', '1570.00'),
('TC_030203', 'TCT_000003', 7, '825_65', '8.25" x 6.5"', 300, '1025.00', '1200.00'),
('TC_030204', 'TCT_000003', 7, '825_65', '8.25" x 6.5"', 400, '880.00', '1030.00'),
('TC_030205', 'TCT_000003', 7, '825_65', '8.25" x 6.5"', 500, '780.00', '930.00'),
('TC_030206', 'TCT_000003', 7, '825_65', '8.25" x 6.5"', 700, '680.00', '810.00'),
('TC_030207', 'TCT_000003', 7, '825_65', '8.25" x 6.5"', 1000, '605.00', '720.00'),
('TC_030208', 'TCT_000003', 7, '825_65', '8.25" x 6.5"', 1500, '580.00', '680.00'),
('TC_030209', 'TCT_000003', 7, '825_65', '8.25" x 6.5"', 2000, '540.00', '650.00'),
('TC_030210', 'TCT_000003', 7, '825_65', '8.25" x 6.5"', 2500, '530.00', '630.00'),
('TC_030211', 'TCT_000003', 7, '825_65', '8.25" x 6.5"', 3000, '470.00', '580.00'),
('TC_030212', 'TCT_000003', 7, '825_65', '8.25" x 6.5"', 5000, '455.00', '560.00'),
('TC_030301', 'TCT_000003', 7, '75_10', '7.5" x 10"', 100, '2450.00', '2930.00'),
('TC_030302', 'TCT_000003', 7, '75_10', '7.5" x 10"', 200, '1460.00', '1780.00'),
('TC_030303', 'TCT_000003', 7, '75_10', '7.5" x 10"', 300, '1140.00', '1360.00'),
('TC_030304', 'TCT_000003', 7, '75_10', '7.5" x 10"', 400, '950.00', '1170.00'),
('TC_030305', 'TCT_000003', 7, '75_10', '7.5" x 10"', 500, '900.00', '1050.00'),
('TC_030306', 'TCT_000003', 7, '75_10', '7.5" x 10"', 700, '750.00', '920.00'),
('TC_030307', 'TCT_000003', 7, '75_10', '7.5" x 10"', 1000, '650.00', '830.00'),
('TC_030308', 'TCT_000003', 7, '75_10', '7.5" x 10"', 1500, '620.00', '775.00'),
('TC_030309', 'TCT_000003', 7, '75_10', '7.5" x 10"', 2000, '590.00', '730.00'),
('TC_030310', 'TCT_000003', 7, '75_10', '7.5" x 10"', 2500, '570.00', '710.00'),
('TC_030311', 'TCT_000003', 7, '75_10', '7.5" x 10"', 3000, '530.00', '660.00'),
('TC_030312', 'TCT_000003', 7, '75_10', '7.5" x 10"', 5000, '510.00', '640.00'),
('TC_030401', 'TCT_000003', 13, '5_75', '5" x 7.5"', 100, '2480.00', '2900.00'),
('TC_030402', 'TCT_000003', 13, '5_75', '5" x 7.5"', 200, '1440.00', '1740.00'),
('TC_030403', 'TCT_000003', 13, '5_75', '5" x 7.5"', 300, '1130.00', '1360.00'),
('TC_030404', 'TCT_000003', 13, '5_75', '5" x 7.5"', 400, '910.00', '1120.00'),
('TC_030405', 'TCT_000003', 13, '5_75', '5" x 7.5"', 500, '820.00', '1010.00'),
('TC_030406', 'TCT_000003', 13, '5_75', '5" x 7.5"', 700, '710.00', '870.00'),
('TC_030407', 'TCT_000003', 13, '5_75', '5" x 7.5"', 1000, '620.00', '780.00'),
('TC_030408', 'TCT_000003', 13, '5_75', '5" x 7.5"', 1500, '590.00', '740.00'),
('TC_030409', 'TCT_000003', 13, '5_75', '5" x 7.5"', 2000, '560.00', '690.00'),
('TC_030410', 'TCT_000003', 13, '5_75', '5" x 7.5"', 2500, '540.00', '675.00'),
('TC_030411', 'TCT_000003', 13, '5_75', '5" x 7.5"', 3000, '500.00', '620.00'),
('TC_030412', 'TCT_000003', 13, '5_75', '5" x 7.5"', 5000, '470.00', '600.00'),
('TC_030501', 'TCT_000003', 13, '825_65', '8.25" x 6.5"', 100, '3930.00', '4480.00'),
('TC_030502', 'TCT_000003', 13, '825_65', '8.25" x 6.5"', 200, '2230.00', '2560.00'),
('TC_030503', 'TCT_000003', 13, '825_65', '8.25" x 6.5"', 300, '1645.00', '1940.00'),
('TC_030504', 'TCT_000003', 13, '825_65', '8.25" x 6.5"', 400, '1330.00', '1705.00'),
('TC_030505', 'TCT_000003', 13, '825_65', '8.25" x 6.5"', 500, '1160.00', '1420.00'),
('TC_030506', 'TCT_000003', 13, '825_65', '8.25" x 6.5"', 700, '980.00', '1200.00'),
('TC_030507', 'TCT_000003', 13, '825_65', '8.25" x 6.5"', 1000, '850.00', '1005.00'),
('TC_030508', 'TCT_000003', 13, '825_65', '8.25" x 6.5"', 1500, '760.00', '960.00'),
('TC_030509', 'TCT_000003', 13, '825_65', '8.25" x 6.5"', 2000, '705.00', '905.00'),
('TC_030510', 'TCT_000003', 13, '825_65', '8.25" x 6.5"', 2500, '690.00', '880.00'),
('TC_030511', 'TCT_000003', 13, '825_65', '8.25" x 6.5"', 3000, '650.00', '840.00'),
('TC_030512', 'TCT_000003', 13, '825_65', '8.25" x 6.5"', 5000, '570.00', '790.00'),
('TC_030601', 'TCT_000003', 13, 'custom', 'custom size', 100, '4400.00', '5100.00'),
('TC_030602', 'TCT_000003', 13, 'custom', 'custom size', 200, '2500.00', '2980.00'),
('TC_030603', 'TCT_000003', 13, 'custom', 'custom size', 300, '1860.00', '2250.00'),
('TC_030604', 'TCT_000003', 13, 'custom', 'custom size', 400, '3315.00', '1880.00'),
('TC_030605', 'TCT_000003', 13, 'custom', 'custom size', 500, '1200.00', '1670.00'),
('TC_030606', 'TCT_000003', 13, 'custom', 'custom size', 700, '1125.00', '1430.00'),
('TC_030607', 'TCT_000003', 13, 'custom', 'custom size', 1000, '970.00', '1250.00'),
('TC_030608', 'TCT_000003', 13, 'custom', 'custom size', 1500, '890.00', '1160.00'),
('TC_030609', 'TCT_000003', 13, 'custom', 'custom size', 2000, '830.00', '1090.00'),
('TC_030610', 'TCT_000003', 13, 'custom', 'custom size', 2500, '800.00', '1060.00'),
('TC_030611', 'TCT_000003', 13, 'custom', 'custom size', 3000, '740.00', '1000.00'),
('TC_030612', 'TCT_000003', 13, 'custom', 'custom size', 5000, '720.00', '960.00');

-- --------------------------------------------------------

--
-- Table structure for table `tablecalender_types`
--

CREATE TABLE IF NOT EXISTS `tablecalender_types` (
  `type_id` varchar(30) NOT NULL,
  `card_type_display` varchar(255) NOT NULL,
  `binding_quality` varchar(255) NOT NULL,
  `base` varchar(255) NOT NULL,
  `packing` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tablecalender_types`
--

INSERT INTO `tablecalender_types` (`type_id`, `card_type_display`, `binding_quality`, `base`, `packing`) VALUES
('TCT_000001', 'A/C (210gm)', 'သံကြင္း', 'LOCAL', 'Plostic အကြ်တ္/Price'),
('TCT_000002', 'A/C (250gm)', 'သံကြင္း', 'LOCAL', 'Plostic အကြ်တ္/Price'),
('TCT_000003', 'A/C (300gm)', 'သံကြင္း', 'LOCAL', 'Plostic အကြ်တ္/Price');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;