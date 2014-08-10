-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 10, 2014 at 06:59 PM
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
-- Table structure for table `cl_vouchers`
--

CREATE TABLE IF NOT EXISTS `cl_vouchers` (
  `card_id` varchar(30) NOT NULL,
  `parent_type_id` varchar(255) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_type_display` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `extra_price_per_column` decimal(10,2) NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cl_vouchers`
--

INSERT INTO `cl_vouchers` (`card_id`, `parent_type_id`, `card_type`, `card_type_display`, `quantity`, `price`, `extra_price_per_column`) VALUES
('CLVO_010101', 'CLVOT_000001', '4_6', '4" x 6"', 40, '1000.00', '140.00'),
('CLVO_010102', 'CLVOT_000001', '4_6', '4" x 6"', 60, '850.00', '150.00'),
('CLVO_010103', 'CLVOT_000001', '4_6', '4" x 6"', 80, '820.00', '115.00'),
('CLVO_010104', 'CLVOT_000001', '4_6', '4" x 6"', 160, '790.00', '100.00'),
('CLVO_010105', 'CLVOT_000001', '4_6', '4" x 6"', 200, '770.00', '80.00'),
('CLVO_010201', 'CLVOT_000001', '4_75', '4" x 7.5"', 40, '1180.00', '140.00'),
('CLVO_010202', 'CLVOT_000001', '4_75', '4" x 7.5"', 60, '1120.00', '150.00'),
('CLVO_010203', 'CLVOT_000001', '4_75', '4" x 7.5"', 80, '1080.00', '115.00'),
('CLVO_010204', 'CLVOT_000001', '4_75', '4" x 7.5"', 160, '1060.00', '100.00'),
('CLVO_010205', 'CLVOT_000001', '4_75', '4" x 7.5"', 200, '1040.00', '80.00'),
('CLVO_020101', 'CLVOT_000002', '4_6', '4" x 6"', 40, '900.00', '100.00'),
('CLVO_020102', 'CLVOT_000002', '4_6', '4" x 6"', 60, '800.00', '150.00'),
('CLVO_020103', 'CLVOT_000002', '4_6', '4" x 6"', 80, '770.00', '60.00'),
('CLVO_020104', 'CLVOT_000002', '4_6', '4" x 6"', 160, '750.00', '100.00'),
('CLVO_020105', 'CLVOT_000002', '4_6', '4" x 6"', 200, '735.00', '45.00'),
('CLVO_020201', 'CLVOT_000002', '4_75', '4" x 7.5"', 40, '1020.00', '100.00'),
('CLVO_020202', 'CLVOT_000002', '4_75', '4" x 7.5"', 60, '925.00', '150.00'),
('CLVO_020203', 'CLVOT_000002', '4_75', '4" x 7.5"', 80, '890.00', '60.00'),
('CLVO_020204', 'CLVOT_000002', '4_75', '4" x 7.5"', 160, '870.00', '100.00'),
('CLVO_020205', 'CLVOT_000002', '4_75', '4" x 7.5"', 200, '855.00', '45.00'),
('CLVO_030101', 'CLVOT_000003', '85_58', '8.5" x 5.8"', 30, '1600.00', '300.00'),
('CLVO_030102', 'CLVOT_000003', '85_58', '8.5" x 5.8"', 60, '1400.00', '200.00'),
('CLVO_030103', 'CLVOT_000003', '85_58', '8.5" x 5.8"', 120, '1350.00', '150.00'),
('CLVO_030104', 'CLVOT_000003', '85_58', '8.5" x 5.8"', 200, '1300.00', '60.00'),
('CLVO_030201', 'CLVOT_000003', '73_85', '7.3" x 8.5"', 30, '1900.00', '300.00'),
('CLVO_030202', 'CLVOT_000003', '73_85', '7.3" x 8.5"', 60, '1700.00', '200.00'),
('CLVO_030203', 'CLVOT_000003', '73_85', '7.3" x 8.5"', 120, '1650.00', '150.00'),
('CLVO_030204', 'CLVOT_000003', '73_85', '7.3" x 8.5"', 200, '1600.00', '60.00'),
('CLVO_030301', 'CLVOT_000003', '85_115', '8.5" x 11.8"', 30, '2800.00', '300.00'),
('CLVO_030302', 'CLVOT_000003', '85_115', '8.5" x 11.8"', 60, '2600.00', '200.00'),
('CLVO_030303', 'CLVOT_000003', '85_115', '8.5" x 11.8"', 120, '2550.00', '150.00'),
('CLVO_030304', 'CLVOT_000003', '85_115', '8.5" x 11.8"', 200, '2500.00', '60.00'),
('CLVO_040101', 'CLVOT_000004', '85_58', '8.5" x 5.8"', 30, '1900.00', '300.00'),
('CLVO_040102', 'CLVOT_000004', '85_58', '8.5" x 5.8"', 60, '1850.00', '200.00'),
('CLVO_040103', 'CLVOT_000004', '85_58', '8.5" x 5.8"', 120, '1800.00', '150.00'),
('CLVO_040104', 'CLVOT_000004', '85_58', '8.5" x 5.8"', 200, '1750.00', '100.00'),
('CLVO_040201', 'CLVOT_000004', '73_85', '7.3" x 8.5"', 30, '2250.00', '300.00'),
('CLVO_040202', 'CLVOT_000004', '73_85', '7.3" x 8.5"', 60, '2200.00', '200.00'),
('CLVO_040203', 'CLVOT_000004', '73_85', '7.3" x 8.5"', 120, '2150.00', '150.00'),
('CLVO_040204', 'CLVOT_000004', '73_85', '7.3" x 8.5"', 200, '2100.00', '100.00'),
('CLVO_040301', 'CLVOT_000004', '85_115', '8.5" x 11.8"', 30, '3600.00', '300.00'),
('CLVO_040302', 'CLVOT_000004', '85_115', '8.5" x 11.8"', 60, '3500.00', '200.00'),
('CLVO_040303', 'CLVOT_000004', '85_115', '8.5" x 11.8"', 120, '3400.00', '150.00'),
('CLVO_040304', 'CLVOT_000004', '85_115', '8.5" x 11.8"', 200, '3300.00', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `cl_voucher_types`
--

CREATE TABLE IF NOT EXISTS `cl_voucher_types` (
  `type_id` varchar(30) NOT NULL,
  `card_type_display` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `type_quantity` varchar(255) NOT NULL,
  `printing` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cl_voucher_types`
--

INSERT INTO `cl_voucher_types` (`type_id`, `card_type_display`, `size`, `type_quantity`, `printing`) VALUES
('CLVOT_000001', 'carbonless voucher 1', '2 sizes', '100 sets, 200 pages', '1 Col; (2 pages printing) + No. (2-pages)'),
('CLVOT_000002', 'carbonless voucher 2', '2 sizes', '50 sets, 150 pages', '1 Col; (3 pages printing) + No. (3-pages)'),
('CLVOT_000003', 'carbonless voucher 3', '3 sizes', '50 sets, 150 pages', '1 Col; (3 pages printing) + No. (3-pages)'),
('CLVOT_000004', 'carbonless voucher 4', '3 sizes', '100 sets, 200 pages', '1 Col; (2 pages printing) + No. (2-pages)');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
