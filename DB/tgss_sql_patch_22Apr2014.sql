CREATE TABLE IF NOT EXISTS `visitingcards` (
  `card_quality` varchar(255) NOT NULL,
  `card_quality_display` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visitingcards`
--

INSERT INTO `visitingcards` (`card_quality`, `card_quality_display`, `color`, `quantity`, `price`) VALUES
('AC', 'A/C', '1C', 600, '13.00'),
('AC', 'A/C', '1C', 1200, '8.00'),
('AC', 'A/C', '1C', 2400, '6.00'),
('AC', 'A/C', '1C', 3600, '5.00'),
('AC', 'A/C', '2C', 600, '23.00'),
('AC', 'A/C', '2C', 1200, '13.00'),
('AC', 'A/C', '2C', 2400, '9.00'),
('AC', 'A/C', '2C', 3600, '7.00'),
('AC', 'A/C', '3C', 600, '33.00'),
('AC', 'A/C', '3C', 1200, '18.00'),
('AC', 'A/C', '3C', 2400, '12.00'),
('AC', 'A/C', '3C', 3600, '9.00'),
('AC', 'A/C', '4C', 600, '43.00'),
('AC', 'A/C', '4C', 1200, '23.00'),
('AC', 'A/C', '4C', 2400, '15.00'),
('AC', 'A/C', '4C', 3600, '11.00'),
('WC', 'W/C', '1C', 600, '14.00'),
('WC', 'W/C', '1C', 1200, '9.00'),
('WC', 'W/C', '1C', 2400, '7.00'),
('WC', 'W/C', '1C', 3600, '6.00'),
('WC', 'W/C', '2C', 600, '24.00'),
('WC', 'W/C', '2C', 1200, '14.00'),
('WC', 'W/C', '2C', 2400, '10.00'),
('WC', 'W/C', '2C', 3600, '8.00'),
('WC', 'W/C', '3C', 600, '34.00'),
('WC', 'W/C', '3C', 1200, '19.00'),
('WC', 'W/C', '3C', 2400, '13.00'),
('WC', 'W/C', '3C', 3600, '10.00'),
('WC', 'W/C', '4C', 600, '44.00'),
('WC', 'W/C', '4C', 1200, '24.00'),
('WC', 'W/C', '4C', 2400, '16.00'),
('WC', 'W/C', '4C', 3600, '12.00');