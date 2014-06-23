-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 23, 2014 at 10:43 AM
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
-- Table structure for table `vouchers`
--

CREATE TABLE IF NOT EXISTS `vouchers` (
  `card_id` varchar(30) NOT NULL,
  `parent_type_id` varchar(255) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_type_display` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`card_id`, `parent_type_id`, `card_type`, `card_type_display`, `quantity`, `price`) VALUES
('VO_010101', 'VOT_000001', 'WF_WF_BW', 'W/F + W/F - B/White', 60, '550.00'),
('VO_010102', 'VOT_000001', 'WF_WF_BW', 'W/F + W/F - B/White', 120, '525.00'),
('VO_010103', 'VOT_000001', 'WF_WF_BW', 'W/F + W/F - B/White', 200, '510.00'),
('VO_010104', 'VOT_000001', 'WF_WF_BW', 'W/F + W/F - B/White', 300, '500.00'),
('VO_010201', 'VOT_000001', 'WF_BW', 'W/F + B/White', 60, '525.00'),
('VO_010202', 'VOT_000001', 'WF_BW', 'W/F + B/White', 120, '500.00'),
('VO_010203', 'VOT_000001', 'WF_BW', 'W/F + B/White', 200, '485.00'),
('VO_010204', 'VOT_000001', 'WF_BW', 'W/F + B/White', 300, '475.00'),
('VO_010301', 'VOT_000001', 'AL_WF_BW', 'A/L + W/F - B/White', 60, '500.00'),
('VO_010302', 'VOT_000001', 'AL_WF_BW', 'A/L + W/F - B/White', 120, '475.00'),
('VO_010303', 'VOT_000001', 'AL_WF_BW', 'A/L + W/F - B/White', 200, '460.00'),
('VO_010304', 'VOT_000001', 'AL_WF_BW', 'A/L + W/F - B/White', 300, '450.00'),
('VO_010401', 'VOT_000001', 'AL_BW', 'A/L+ B/White', 60, '475.00'),
('VO_010402', 'VOT_000001', 'AL_BW', 'A/L+ B/White', 120, '450.00'),
('VO_010403', 'VOT_000001', 'AL_BW', 'A/L+ B/White', 200, '435.00'),
('VO_010404', 'VOT_000001', 'AL_BW', 'A/L+ B/White', 300, '425.00'),
('VO_010501', 'VOT_000001', 'CS_WF_BW', 'C/S + W/F - B/White', 60, '475.00'),
('VO_010502', 'VOT_000001', 'CS_WF_BW', 'C/S + W/F - B/White', 120, '450.00'),
('VO_010503', 'VOT_000001', 'CS_WF_BW', 'C/S + W/F - B/White', 200, '435.00'),
('VO_010504', 'VOT_000001', 'CS_WF_BW', 'C/S + W/F - B/White', 300, '425.00'),
('VO_010601', 'VOT_000001', 'CS_BW', 'C/S + B/White', 60, '450.00'),
('VO_010602', 'VOT_000001', 'CS_BW', 'C/S + B/White', 120, '425.00'),
('VO_010603', 'VOT_000001', 'CS_BW', 'C/S + B/White', 200, '410.00'),
('VO_010604', 'VOT_000001', 'CS_BW', 'C/S + B/White', 300, '400.00'),
('VO_020101', 'VOT_000002', 'WF_WF_BW', 'W/F+ W/F - B/White', 60, '70.00'),
('VO_020102', 'VOT_000002', 'WF_WF_BW', 'W/F + W/F - B/White', 120, '675.00'),
('VO_020103', 'VOT_000002', 'WF_WF_BW', 'W/F + W/F - B/White', 200, '650.00'),
('VO_020104', 'VOT_000002', 'WF_WF_BW', 'W/F + W/F - B/White', 300, '625.00'),
('VO_020201', 'VOT_000002', 'WF_BW', 'W/F + B/White', 60, '665.00'),
('VO_020202', 'VOT_000002', 'WF_BW', 'W/F + B/White', 120, '640.00'),
('VO_020203', 'VOT_000002', 'WF_BW', 'W/F + B/White', 200, '615.00'),
('VO_020204', 'VOT_000002', 'WF_BW', 'W/F + B/White', 300, '590.00'),
('VO_020301', 'VOT_000002', 'AL_WF_BW', 'A/L + W/F - B/White', 60, '640.00'),
('VO_020302', 'VOT_000002', 'AL_WF_BW', 'A/L + W/F - B/White', 120, '615.00'),
('VO_020303', 'VOT_000002', 'AL_WF_BW', 'A/L + W/F - B/White', 200, '590.00'),
('VO_020304', 'VOT_000002', 'AL_WF_BW', 'A/L + W/F - B/White', 300, '565.00'),
('VO_020401', 'VOT_000002', 'AL_BW', 'A/L + B/White', 60, '605.00'),
('VO_020402', 'VOT_000002', 'AL_BW', 'A/L + B/White', 120, '580.00'),
('VO_020403', 'VOT_000002', 'AL_BW', 'A/L + B/White', 200, '555.00'),
('VO_020404', 'VOT_000002', 'AL_BW', 'A/L + B/White', 300, '530.00'),
('VO_020501', 'VOT_000002', 'CS_WF_BW', 'C/S + W/F - B/White', 60, '600.00'),
('VO_020502', 'VOT_000002', 'CS_WF_BW', 'C/S + W/F - B/White', 120, '575.00'),
('VO_020503', 'VOT_000002', 'CS_WF_BW', 'C/S + W/F - B/White', 200, '550.00'),
('VO_020504', 'VOT_000002', 'CS_WF_BW', 'C/S + W/F - B/White', 300, '525.00'),
('VO_020601', 'VOT_000002', 'CS_BW', 'C/S + B/White', 60, '565.00'),
('VO_020602', 'VOT_000002', 'CS_BW', 'C/S + B/White', 120, '540.00'),
('VO_020603', 'VOT_000002', 'CS_BW', 'C/S + B/White', 200, '515.00'),
('VO_020604', 'VOT_000002', 'CS_BW', 'C/S + B/White', 300, '490.00'),
('VO_030101', 'VOT_000003', 'WF_WF_BW', 'W/F + W/F - B/White', 45, '675.00'),
('VO_030102', 'VOT_000003', 'WF_WF_BW', 'W/F + W/F - B/White', 60, '635.00'),
('VO_030103', 'VOT_000003', 'WF_WF_BW', 'W/F + W/F - B/White', 120, '580.00'),
('VO_030104', 'VOT_000003', 'WF_WF_BW', 'W/F + W/F - B/White', 240, '560.00'),
('VO_030201', 'VOT_000003', 'WF_BW', 'W/F + B/White', 45, '650.00'),
('VO_030202', 'VOT_000003', 'WF_BW', 'W/F + B/White', 60, '610.00'),
('VO_030203', 'VOT_000003', 'WF_BW', 'W/F + B/White', 120, '550.00'),
('VO_030204', 'VOT_000003', 'WF_BW', 'W/F + B/White', 240, '530.00'),
('VO_030301', 'VOT_000003', 'AL_WF_BW', 'A/L + W/F - B/White', 45, '650.00'),
('VO_030302', 'VOT_000003', 'AL_WF_BW', 'A/L + W/F - B/White', 60, '610.00'),
('VO_030303', 'VOT_000003', 'AL_WF_BW', 'A/L + W/F - B/White', 120, '550.00'),
('VO_030304', 'VOT_000003', 'AL_WF_BW', 'A/L + W/F - B/White', 240, '530.00'),
('VO_030401', 'VOT_000003', 'AL_BW', 'A/L + B/White', 45, '620.00'),
('VO_030402', 'VOT_000003', 'AL_BW', 'A/L + B/White', 60, '575.00'),
('VO_030403', 'VOT_000003', 'AL_BW', 'A/L + B/White', 120, '520.00'),
('VO_030404', 'VOT_000003', 'AL_BW', 'A/L + B/White', 240, '500.00'),
('VO_030501', 'VOT_000003', 'CS_WF_BW', 'C/S + W/F - B/White', 45, '620.00'),
('VO_030502', 'VOT_000003', 'CS_WF_BW', 'C/S + W/F - B/White', 60, '575.00'),
('VO_030503', 'VOT_000003', 'CS_WF_BW', 'C/S + W/F - B/White', 120, '520.00'),
('VO_030504', 'VOT_000003', 'CS_WF_BW', 'C/S + W/F - B/White', 240, '500.00'),
('VO_030601', 'VOT_000003', 'CS_BW', 'C/S + B/White', 45, '590.00'),
('VO_030602', 'VOT_000003', 'CS_BW', 'C/S + B/White', 60, '545.00'),
('VO_030603', 'VOT_000003', 'CS_BW', 'C/S + B/White', 120, '490.00'),
('VO_030604', 'VOT_000003', 'CS_BW', 'C/S + B/White', 240, '470.00'),
('VO_040101', 'VOT_000004', 'WF_WF_BW', 'W/F + W/F - B/White', 45, '775.00'),
('VO_040102', 'VOT_000004', 'WF_WF_BW', 'W/F + W/F - B/White', 60, '735.00'),
('VO_040103', 'VOT_000004', 'WF_WF_BW', 'W/F + W/F - B/White', 120, '680.00'),
('VO_040104', 'VOT_000004', 'WF_WF_BW', 'W/F + W/F - B/White', 240, '660.00'),
('VO_040201', 'VOT_000004', 'WF_BW', 'W/F + B/White', 45, '735.00'),
('VO_040202', 'VOT_000004', 'WF_BW', 'W/F + B/White', 60, '695.00'),
('VO_040203', 'VOT_000004', 'WF_BW', 'W/F + B/White', 120, '640.00'),
('VO_040204', 'VOT_000004', 'WF_BW', 'W/F + B/White', 240, '620.00'),
('VO_040301', 'VOT_000004', 'AL_WF_BW', 'A/L + W/F - B/White', 45, '720.00'),
('VO_040302', 'VOT_000004', 'AL_WF_BW', 'A/L + W/F - B/White', 60, '680.00'),
('VO_040303', 'VOT_000004', 'AL_WF_BW', 'A/L + W/F - B/White', 120, '625.00'),
('VO_040304', 'VOT_000004', 'AL_WF_BW', 'A/L + W/F - B/White', 240, '605.00'),
('VO_040401', 'VOT_000004', 'AL_BW', 'A/L + B/White', 45, '685.00'),
('VO_040402', 'VOT_000004', 'AL_BW', 'A/L + B/White', 60, '645.00'),
('VO_040403', 'VOT_000004', 'AL_BW', 'A/L + B/White', 120, '590.00'),
('VO_040404', 'VOT_000004', 'AL_BW', 'A/L + B/White', 240, '570.00'),
('VO_040501', 'VOT_000004', 'CS_WF_BW', 'C/S + W/F - B/White', 45, '685.00'),
('VO_040502', 'VOT_000004', 'CS_WF_BW', 'C/S + W/F - B/White', 60, '645.00'),
('VO_040503', 'VOT_000004', 'CS_WF_BW', 'C/S + W/F - B/White', 120, '590.00'),
('VO_040504', 'VOT_000004', 'CS_WF_BW', 'C/S + W/F - B/White', 240, '570.00'),
('VO_040601', 'VOT_000004', 'CS_BW', 'C/S + B/White', 45, '645.00'),
('VO_040602', 'VOT_000004', 'CS_BW', 'C/S + B/White', 60, '605.00'),
('VO_040603', 'VOT_000004', 'CS_BW', 'C/S + B/White', 120, '550.00'),
('VO_040604', 'VOT_000004', 'CS_BW', 'C/S + B/White', 240, '530.00'),
('VO_050101', 'VOT_000005', 'WF_WF_BW', 'W/F + W/F - B/White', 30, '1000.00'),
('VO_050102', 'VOT_000005', 'WF_WF_BW', 'W/F + W/F - B/White', 60, '950.00'),
('VO_050103', 'VOT_000005', 'WF_WF_BW', 'W/F + W/F - B/White', 100, '920.00'),
('VO_050104', 'VOT_000005', 'WF_WF_BW', 'W/F + W/F - B/White', 200, '900.00'),
('VO_050201', 'VOT_000005', 'WF_BW', 'W/F + B/White', 30, '950.00'),
('VO_050202', 'VOT_000005', 'WF_BW', 'W/F + B/White', 60, '900.00'),
('VO_050203', 'VOT_000005', 'WF_BW', 'W/F + B/White', 100, '870.00'),
('VO_050204', 'VOT_000005', 'WF_BW', 'W/F + B/White', 200, '850.00'),
('VO_050301', 'VOT_000005', 'AL_WF_BW', 'A/L + W/F - B/White', 30, '900.00'),
('VO_050302', 'VOT_000005', 'AL_WF_BW', 'A/L + W/F - B/White', 60, '850.00'),
('VO_050303', 'VOT_000005', 'AL_WF_BW', 'A/L + W/F - B/White', 100, '820.00'),
('VO_050304', 'VOT_000005', 'AL_WF_BW', 'A/L + W/F - B/White', 200, '800.00'),
('VO_050401', 'VOT_000005', 'AL_BW', 'A/L + B/White', 30, '850.00'),
('VO_050402', 'VOT_000005', 'AL_BW', 'A/L + B/White', 60, '800.00'),
('VO_050403', 'VOT_000005', 'AL_BW', 'A/L + B/White', 100, '770.00'),
('VO_050404', 'VOT_000005', 'AL_BW', 'A/L + B/White', 200, '750.00'),
('VO_050501', 'VOT_000005', 'CS_WF_BW', 'C/S + W/F - B/White', 30, '850.00'),
('VO_050502', 'VOT_000005', 'CS_WF_BW', 'C/S + W/F - B/White', 60, '800.00'),
('VO_050503', 'VOT_000005', 'CS_WF_BW', 'C/S + W/F - B/White', 100, '770.00'),
('VO_050504', 'VOT_000005', 'CS_WF_BW', 'C/S + W/F - B/White', 200, '750.00'),
('VO_050601', 'VOT_000005', 'CS_BW', 'C/S + B/White', 30, '800.00'),
('VO_050602', 'VOT_000005', 'CS_BW', 'C/S + B/White', 60, '750.00'),
('VO_050603', 'VOT_000005', 'CS_BW', 'C/S + B/White', 100, '720.00'),
('VO_050604', 'VOT_000005', 'CS_BW', 'C/S + B/White', 200, '700.00'),
('VO_060101', 'VOT_000006', 'WF_WF_BW', 'W/F + W/F - B/White', 30, '1250.00'),
('VO_060102', 'VOT_000006', 'WF_WF_BW', 'W/F + W/F - B/White', 60, '1200.00'),
('VO_060103', 'VOT_000006', 'WF_WF_BW', 'W/F + W/F - B/White', 100, '1170.00'),
('VO_060104', 'VOT_000006', 'WF_WF_BW', 'W/F + W/F - B/White', 200, '1150.00'),
('VO_060201', 'VOT_000006', 'WF_BW', 'W/F + B/White', 30, '1175.00'),
('VO_060202', 'VOT_000006', 'WF_BW', 'W/F + B/White', 60, '1125.00'),
('VO_060203', 'VOT_000006', 'WF_BW', 'W/F + B/White', 100, '1100.00'),
('VO_060204', 'VOT_000006', 'WF_BW', 'W/F + B/White', 200, '1075.00'),
('VO_060301', 'VOT_000006', 'AL_WF_BW', 'A/L + W/F - B/White', 30, '1125.00'),
('VO_060302', 'VOT_000006', 'AL_WF_BW', 'A/L + W/F - B/White', 60, '1075.00'),
('VO_060303', 'VOT_000006', 'AL_WF_BW', 'A/L + W/F - B/White', 100, '1050.00'),
('VO_060304', 'VOT_000006', 'AL_WF_BW', 'A/L + W/F - B/White', 200, '1025.00'),
('VO_060401', 'VOT_000006', 'AL_BW', 'A/L + B/White', 30, '1050.00'),
('VO_060402', 'VOT_000006', 'AL_BW', 'A/L + B/White', 60, '1000.00'),
('VO_060403', 'VOT_000006', 'AL_BW', 'A/L + B/White', 100, '975.00'),
('VO_060404', 'VOT_000006', 'AL_BW', 'A/L + B/White', 200, '950.00'),
('VO_060501', 'VOT_000006', 'CS_WF_BW', 'C/S + W/F - B/White', 30, '1050.00'),
('VO_060502', 'VOT_000006', 'CS_WF_BW', 'C/S + W/F - B/White', 60, '1000.00'),
('VO_060503', 'VOT_000006', 'CS_WF_BW', 'C/S + W/F - B/White', 100, '975.00'),
('VO_060504', 'VOT_000006', 'CS_WF_BW', 'C/S + W/F - B/White', 200, '950.00'),
('VO_060601', 'VOT_000006', 'CS_BW', 'C/S + B/White', 30, '975.00'),
('VO_060602', 'VOT_000006', 'CS_BW', 'C/S + B/White', 60, '925.00'),
('VO_060603', 'VOT_000006', 'CS_BW', 'C/S + B/White', 100, '900.00'),
('VO_060604', 'VOT_000006', 'CS_BW', 'C/S + B/White', 200, '875.00'),
('VO_070101', 'VOT_000007', 'WF_AL_CS', 'W/F + A/L + C/S', 120, '550.00'),
('VO_070102', 'VOT_000007', 'WF_AL_CS', 'W/F + A/L + C/S', 200, '525.00'),
('VO_070103', 'VOT_000007', 'WF_AL_CS', 'W/F + A/L + C/S', 300, '500.00'),
('VO_070201', 'VOT_000007', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 120, '525.00'),
('VO_070202', 'VOT_000007', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 200, '500.00'),
('VO_070203', 'VOT_000007', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 300, '475.00'),
('VO_070301', 'VOT_000007', 'WF_AL_BW', 'W/F + A/L + B/White', 120, '515.00'),
('VO_070302', 'VOT_000007', 'WF_AL_BW', 'W/F + A/L + B/White', 200, '490.00'),
('VO_070303', 'VOT_000007', 'WF_AL_BW', 'W/F + A/L + B/White', 300, '465.00'),
('VO_070401', 'VOT_000007', 'AL_AL_CS', 'A/L + A/L + CS', 120, '525.00'),
('VO_070402', 'VOT_000007', 'AL_AL_CS', 'A/L + A/L + CS', 200, '500.00'),
('VO_070403', 'VOT_000007', 'AL_AL_CS', 'A/L + A/L + CS', 300, '475.00'),
('VO_070501', 'VOT_000007', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 120, '500.00'),
('VO_070502', 'VOT_000007', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 200, '475.00'),
('VO_070503', 'VOT_000007', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 300, '450.00'),
('VO_070601', 'VOT_000007', 'AL_AL_BW', 'A/L + A/L + B/White', 120, '475.00'),
('VO_070602', 'VOT_000007', 'AL_AL_BW', 'A/L + A/L + B/White', 200, '450.00'),
('VO_070603', 'VOT_000007', 'AL_AL_BW', 'A/L + A/L + B/White', 300, '425.00'),
('VO_070701', 'VOT_000007', 'AL_CS_CS', 'A/L + C/S + C/S', 120, '515.00'),
('VO_070702', 'VOT_000007', 'AL_CS_CS', 'A/L + C/S + C/S', 200, '490.00'),
('VO_070703', 'VOT_000007', 'AL_CS_CS', 'A/L + C/S + C/S', 300, '465.00'),
('VO_070801', 'VOT_000007', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 120, '490.00'),
('VO_070802', 'VOT_000007', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 200, '465.00'),
('VO_070803', 'VOT_000007', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 300, '440.00'),
('VO_070901', 'VOT_000007', 'AL_CS_BW', 'A/L + C/S + B/White', 120, '470.00'),
('VO_070902', 'VOT_000007', 'AL_CS_BW', 'A/L + C/S + B/White', 200, '445.00'),
('VO_070903', 'VOT_000007', 'AL_CS_BW', 'A/L + C/S + B/White', 300, '420.00'),
('VO_080101', 'VOT_000008', 'WF_AL_CS', 'W/F + A/L + C/S', 120, '650.00'),
('VO_080102', 'VOT_000008', 'WF_AL_CS', 'W/F + A/L + C/S', 200, '625.00'),
('VO_080103', 'VOT_000008', 'WF_AL_CS', 'W/F + A/L + C/S', 300, '600.00'),
('VO_080201', 'VOT_000008', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 120, '635.00'),
('VO_080202', 'VOT_000008', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 200, '610.00'),
('VO_080203', 'VOT_000008', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 300, '585.00'),
('VO_080301', 'VOT_000008', 'WF_AL_BW', 'W/F + A/L + B/White', 120, '620.00'),
('VO_080302', 'VOT_000008', 'WF_AL_BW', 'W/F + A/L + B/White', 200, '595.00'),
('VO_080303', 'VOT_000008', 'WF_AL_BW', 'W/F + A/L + B/White', 300, '570.00'),
('VO_080401', 'VOT_000008', 'AL_AL_CS', 'A/L + A/L + CS', 120, '620.00'),
('VO_080402', 'VOT_000008', 'AL_AL_CS', 'A/L + A/L + CS', 200, '595.00'),
('VO_080403', 'VOT_000008', 'AL_AL_CS', 'A/L + A/L + CS', 300, '570.00'),
('VO_080501', 'VOT_000008', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 120, '605.00'),
('VO_080502', 'VOT_000008', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 200, '580.00'),
('VO_080503', 'VOT_000008', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 300, '555.00'),
('VO_080601', 'VOT_000008', 'AL_AL_BW', 'A/L + A/L + B/White', 120, '590.00'),
('VO_080602', 'VOT_000008', 'AL_AL_BW', 'A/L + A/L + B/White', 200, '565.00'),
('VO_080603', 'VOT_000008', 'AL_AL_BW', 'A/L + A/L + B/White', 300, '540.00'),
('VO_080701', 'VOT_000008', 'AL_CS_CS', 'A/L + C/S + C/S', 120, '600.00'),
('VO_080702', 'VOT_000008', 'AL_CS_CS', 'A/L + C/S + C/S', 200, '575.00'),
('VO_080703', 'VOT_000008', 'AL_CS_CS', 'A/L + C/S + C/S', 300, '550.00'),
('VO_080801', 'VOT_000008', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 120, '585.00'),
('VO_080802', 'VOT_000008', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 200, '560.00'),
('VO_080803', 'VOT_000008', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 300, '535.00'),
('VO_080901', 'VOT_000008', 'AL_CS_BW', 'A/L + C/S + B/White', 120, '570.00'),
('VO_080902', 'VOT_000008', 'AL_CS_BW', 'A/L + C/S + B/White', 200, '555.00'),
('VO_080903', 'VOT_000008', 'AL_CS_BW', 'A/L + C/S + B/White', 300, '540.00');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_types`
--

CREATE TABLE IF NOT EXISTS `voucher_types` (
  `type_id` varchar(30) NOT NULL,
  `size` varchar(255) NOT NULL,
  `type_quantity` varchar(255) NOT NULL,
  `printing` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voucher_types`
--

INSERT INTO `voucher_types` (`type_id`, `size`, `type_quantity`, `printing`) VALUES
('VOT_000001', '1/4 x Full (OR) 1/4 x A.4', '100 set (200 pages)', '1 Col : (1 print) + No - (2 pages)'),
('VOT_000002', '1/4 x (10" x 15")', '100 set (200 pages)', '1 Col : (1 print) + No - (2 pages)'),
('VOT_000003', '1/3 x Full', '100 set (200 pages)', '1 Col; (1 page printing) + No. (2 pages)'),
('VOT_000004', '1/3 x (10" x 15")', '100 set (200 pages)', '1 Col; (1 page printing) + No. (2 pages)'),
('VOT_000005', '1/2 x Full (OR) 1/2 x A.4', '100 set (200 pages)', '1 Col; (1 page printing) + No. (2 pages)'),
('VOT_000006', '1/2 x (10" x 15")', '100 set (200 pages)', '1 Col; (1 page printing) + No. (2 pages)'),
('VOT_000007', '1/4 x Full (OR) 1/4 x A.4', '50 set (150 pages)', '1 Col; (3 pages printing) + No. (3-pages)'),
('VOT_000008', '1/4 x (10" x 15")', '50 set (150 pages)', '1 Col; (3 pages printing) + No. (3-pages)');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
