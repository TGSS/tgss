CREATE TABLE IF NOT EXISTS `letterhead` (
  `ID` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `letterhead` (`ID`, `color`, `quantity`, `price`) VALUES
('1', '1C', 500, '20'),
('2', '1C', 1000, '15'),
('3', '1C', 1500, '14'),
('4', '1C', 3000, '12'),
('5', '1C', 5000, '12'),
('6', '2C', 500, '32'),
('7', '2C', 1000, '21'),
('8', '2C', 1500, '19'),
('9', '2C', 3000, '16'),
('10', '2C', 5000, '15'),
('11', '3C', 500, '44'),
('12', '3C', 1000, '27'),
('13', '3C', 1500, '24'),
('14', '3C', 3000, '20'),
('15', '3C', 5000, '18'),
('16', '4C', 500, '56'),
('17', '4C', 1000, '33'),
('18', '4C', 1500, '29'),
('19', '4C', 3000, '24'),
('20', '4C', 5000, '21');

CREATE TABLE IF NOT EXISTS `users` (
  `ID` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `usersinfo` (
  `id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;