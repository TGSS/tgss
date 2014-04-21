-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2014 at 09:06 AM
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
-- Table structure for table `v/c`
--

CREATE TABLE IF NOT EXISTS `v/c` (
  `Card_Quality` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `v/c`
--

INSERT INTO `v/c` (`Card_Quality`, `Color`, `Quantity`, `Price`) VALUES
('A/C', '1C', 600, 13),
('A/C', '1C', 1200, 8),
('A/C', '1C', 2400, 6),
('A/C', '1C', 3600, 5),
('A/C', '2C', 600, 23),
('A/C', '2C', 1200, 13),
('A/C', '2C', 2400, 9),
('A/C', '2C', 3600, 7),
('A/C', '3C', 600, 33),
('A/C', '3C', 1200, 18),
('A/C', '3C', 2400, 12),
('A/C', '3C', 3600, 9),
('A/C', '4C', 600, 43),
('A/C', '4C', 1200, 23),
('A/C', '4C', 2400, 15),
('A/C', '4C', 3600, 11),
('W/C', '1C', 600, 14),
('W/C', '1C', 1200, 9),
('W/C', '1C', 2400, 7),
('W/C', '1C', 3600, 6),
('W/C', '2C', 600, 24),
('W/C', '2C', 1200, 14),
('W/C', '2C', 2400, 10),
('W/C', '2C', 3600, 8),
('W/C', '3C', 600, 34),
('W/C', '3C', 1200, 19),
('W/C', '3C', 2400, 13),
('W/C', '3C', 3600, 10),
('W/C', '4C', 600, 44),
('W/C', '4C', 1200, 24),
('W/C', '4C', 2400, 16),
('W/C', '4C', 3600, 12),
('S/C', '1C', 600, 21),
('S/C', '1C', 1200, 13);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
