CREATE TABLE IF NOT EXISTS `timezones` (
  `id` int(11) unsigned NOT NULL,
  `gmt` decimal(10,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `gmt`, `name`) VALUES
(1, '-12.00', '(GMT-12:00) - International Date Line West'),
(2, '-11.00', '(GMT-11:00) - Midway Island, Samoa'),
(3, '-10.00', '(GMT-10:00) - Hawaii'),
(4, '-9.00', '(GMT-09:00) - Alaska'),
(5, '-8.00', '(GMT-08:00) - Pacific Time (US & Canada); Tijuana'),
(6, '-7.00', '(GMT-07:00) - Arizona'),
(7, '-7.00', '(GMT-07:00) - Chihuahua, La Paz, Mazatlan'),
(8, '-7.00', '(GMT-07:00) - Mountain Time (US & Canada)'),
(9, '-6.00', '(GMT-06:00) - Central America'),
(10, '-6.00', '(GMT-06:00) - Central Time (US & Canada)'),
(11, '-6.00', '(GMT-06:00) - Guadalajara, Mexico City, Monterrey'),
(12, '-6.00', '(GMT-06:00) - Saskatchewan'),
(13, '-5.00', '(GMT-05:00) - Bogota, Lima, Quito'),
(14, '-5.00', '(GMT-05:00) - Eastern Time (US & Canada)'),
(15, '-5.00', '(GMT-05:00) - Indiana (East)'),
(16, '-4.00', '(GMT-04:00) - Atlantic Time (Canada)'),
(17, '-4.00', '(GMT-04:00) - Caracas, La Paz'),
(18, '-4.00', '(GMT-04:00) - Santiago'),
(19, '-3.50', '(GMT-03:30) - Newfoundland'),
(20, '-3.00', '(GMT-03:00) - Brasilia'),
(21, '-3.00', '(GMT-03:00) - Buenos Aires, Georgetown'),
(22, '-3.00', '(GMT-03:00) - Greenland'),
(23, '-2.00', '(GMT-02:00) - Mid-Atlantic'),
(24, '-1.00', '(GMT-01:00) - Azores'),
(25, '-1.00', '(GMT-01:00) - Cape Verde Is.'),
(26, '0.00', '(GMT) - Casablanca, Monrovia'),
(27, '0.00', '(GMT) - Greenwich Mean Time: Dublin, Edinburgh, Lisbon, London'),
(28, '1.00', '(GMT+01:00) - Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna'),
(29, '1.00', '(GMT+01:00) - Belgrade, Bratislava, Budapest, Ljubljana, Prague'),
(30, '1.00', '(GMT+01:00) - Brussels, Copenhagen, Madrid, Paris'),
(31, '1.00', '(GMT+01:00) - Sarajevo, Skopje, Warsaw, Zagreb'),
(32, '1.00', '(GMT+01:00) - West Central Africa'),
(33, '2.00', '(GMT+02:00) - Athens, Beirut, Istanbul, Minsk'),
(34, '2.00', '(GMT+02:00) - Bucharest'),
(35, '2.00', '(GMT+02:00) - Cairo'),
(36, '2.00', '(GMT+02:00) - Harare, Pretoria'),
(37, '2.00', '(GMT+02:00) - Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius'),
(38, '2.00', '(GMT+02:00) - Jerusalem'),
(39, '3.00', '(GMT+03:00) - Baghdad'),
(40, '3.00', '(GMT+03:00) - Kuwait, Riyadh'),
(41, '3.00', '(GMT+03:00) - Moscow, St. Petersburg, Volgograd'),
(42, '3.00', '(GMT+03:00) - Nairobi'),
(43, '3.50', '(GMT+03:30) - Tehran'),
(44, '4.00', '(GMT+04:00) - Abu Dhabi, Muscat'),
(45, '4.00', '(GMT+04:00) - Baku, Tbilisi, Yerevan'),
(46, '4.50', '(GMT+04:30) - Kabul'),
(47, '5.00', '(GMT+05:00) - Ekaterinburg'),
(48, '5.00', '(GMT+05:00) - Islamabad, Karachi, Tashkent'),
(49, '5.50', '(GMT+05:30) - Chennai, Kolkata, Mumbai, New Delhi'),
(50, '5.75', '(GMT+05:45) - Kathmandu'),
(51, '6.00', '(GMT+06:00) - Almaty, Novosibirsk'),
(52, '6.00', '(GMT+06:00) - Astana, Dhaka'),
(53, '6.00', '(GMT+06:00) - Sri Jayawardenepura'),
(54, '6.50', '(GMT+06:30) - Rangoon'),
(55, '7.00', '(GMT+07:00) - Bangkok, Hanoi, Jakarta'),
(56, '7.00', '(GMT+07:00) - Krasnoyarsk'),
(57, '8.00', '(GMT+08:00) - Beijing, Chongqing, Hong Kong, Urumqi'),
(58, '8.00', '(GMT+08:00) - Irkutsk, Ulaan Bataar'),
(59, '8.00', '(GMT+08:00) - Kuala Lumpur, Singapore'),
(60, '8.00', '(GMT+08:00) - Perth'),
(61, '8.00', '(GMT+08:00) - Taipei'),
(62, '9.00', '(GMT+09:00) - Osaka, Sapporo, Tokyo'),
(63, '9.00', '(GMT+09:00) - Seoul'),
(64, '9.00', '(GMT+09:00) - Vakutsk'),
(65, '9.50', '(GMT+09:30) - Adelaide'),
(66, '9.50', '(GMT+09:30) - Darwin'),
(67, '10.00', '(GMT+10:00) - Brisbane'),
(68, '10.00', '(GMT+10:00) - Canberra, Melbourne, Sydney'),
(69, '10.00', '(GMT+10:00) - Guam, Port Moresby'),
(70, '10.00', '(GMT+10:00) - Hobart'),
(71, '10.00', '(GMT+10:00) - Vladivostok'),
(72, '11.00', '(GMT+11:00) - Magadan, Solomon Is., New Caledonia'),
(73, '12.00', '(GMT+12:00) - Auckland, Wellington'),
(74, '12.00', '(GMT+12:00) - Fiji, Kamchatka, Marshall Is.'),
(75, '13.00', '(GMT+13:00) - Nuku''alofa');


ALTER TABLE `profiles` ADD `timezone` INT( 11 ) UNSIGNED NOT NULL DEFAULT '54' AFTER `country` ;

CREATE TABLE IF NOT EXISTS `visitingcard_orderdetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `card_id` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `letterhead_orderdetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `card_id` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

RENAME TABLE `tgss`.`letterhead` TO `tgss`.`letterheads` ;
ALTER TABLE `letterheads` CHANGE `card_id` `card_id` VARCHAR( 30 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ;
ALTER TABLE `letterheads` CHANGE `Color` `color` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ;
ALTER TABLE `letterheads` CHANGE `Quantity` `quantity` INT( 11 ) NOT NULL ;
ALTER TABLE `letterheads` CHANGE `Price` `price` DECIMAL( 10, 2 ) NOT NULL ;

RENAME TABLE `tgss`.`visitingcard_orderdetails` TO `tgss`.`visitingcards_orderdetails` ;
RENAME TABLE `tgss`.`letterhead_orderdetails` TO `tgss`.`letterheads_orderdetails` ;