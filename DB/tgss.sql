-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 10, 2014 at 11:45 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tgss`
--
CREATE DATABASE IF NOT EXISTS `tgss` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tgss`;

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE IF NOT EXISTS `billing_addresses` (
  `billing_address_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  PRIMARY KEY (`billing_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=8 ;

--
-- Dumping data for table `billing_addresses`
--

INSERT INTO `billing_addresses` (`billing_address_id`, `order_id`, `email`, `firstname`, `lastname`, `address1`, `address2`, `city`, `country`, `postcode`, `phoneno`, `mobileno`) VALUES
(1, 1, 'a@ga.d', 'a', 'a', 'a', 'a', 'a', 'Afghanistan', 'a', 'a', 'a'),
(2, 2, 'a@gmil.com', 'a', 'a', 'a', '', 'a', 'Myanmar', '', 's', ''),
(3, 3, 'a@ga.d', 'ad', 'a', 'a', '', 'a', 'Myanmar', '', 'a', 'a'),
(4, 4, 'a@gmil.com', 'a', 'a', 'a', 'a', 'a', 'Afghanistan', 'a', 'a', 'a'),
(5, 5, 'a@ga.d', 'ad', 'a', 'a', 'a', 'a', 'Afghanistan', 'a', 'a', 'a'),
(6, 6, 'a@gmil.com', 'a', 'a', 'a', 'a', 'a', 'Myanmar', 'a', 'a', 'a'),
(7, 7, 'e@ma.cl', 'e', 'e', 'e', 'e', 'e', 'Myanmar', '3', 'e', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `country_code` char(2) NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_code`, `country`) VALUES
('AF', 'Afghanistan'),
('AX', 'Aland Islands'),
('AL', 'Albania'),
('DZ', 'Algeria'),
('AS', 'American Samoa'),
('AD', 'Andorra'),
('AO', 'Angola'),
('AI', 'Anguilla'),
('AG', 'Antigua and Barbuda'),
('AR', 'Argentina'),
('AM', 'Armenia'),
('AW', 'Aruba'),
('AU', 'Australia'),
('AT', 'Austria'),
('AZ', 'Azerbaijan'),
('BS', 'Bahamas'),
('BH', 'Bahrain'),
('BD', 'Bangladesh'),
('BB', 'Barbados'),
('BY', 'Belarus'),
('BE', 'Belgium'),
('BZ', 'Belize'),
('BJ', 'Benin'),
('BM', 'Bermuda'),
('BT', 'Bhutan'),
('BO', 'Bolivia'),
('BA', 'Bosnia and Herzegovina'),
('BW', 'Botswana'),
('BR', 'Brazil'),
('VG', 'British Virgin Islands'),
('BN', 'Brunei'),
('BG', 'Bulgaria'),
('BF', 'Burkina Faso'),
('BI', 'Burundi'),
('KH', 'Cambodia'),
('CM', 'Cameroon'),
('CA', 'Canada'),
('CV', 'Cape Verde'),
('KY', 'Cayman Islands'),
('CF', 'Central African Republic'),
('TD', 'Chad'),
('CL', 'Chile'),
('CN', 'China'),
('CX', 'Christmas Island'),
('CC', 'Cocos (Keeling) Islands'),
('CO', 'Colombia'),
('KM', 'Comoros'),
('CG', 'Congo (Brazzaville)'),
('CD', 'Congo (Kinshasa)'),
('CK', 'Cook Islands'),
('CR', 'Costa Rica'),
('HR', 'Croatia'),
('CU', 'Cuba'),
('CW', 'Cura├ºao'),
('CY', 'Cyprus'),
('CZ', 'Czech Republic'),
('DK', 'Denmark'),
('DJ', 'Djibouti'),
('DM', 'Dominica'),
('DO', 'Dominican Republic'),
('EC', 'Ecuador'),
('EG', 'Egypt'),
('SV', 'El Salvador'),
('GQ', 'Equatorial Guinea'),
('ER', 'Eritrea'),
('EE', 'Estonia'),
('ET', 'Ethiopia'),
('FK', 'Falkland Islands'),
('FO', 'Faroe Islands'),
('FJ', 'Fiji'),
('FI', 'Finland'),
('FR', 'France'),
('GF', 'French Guiana'),
('PF', 'French Polynesia'),
('TF', 'French Southern Territories'),
('GA', 'Gabon'),
('GM', 'Gambia'),
('GE', 'Georgia'),
('DE', 'Germany'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GR', 'Greece'),
('GL', 'Greenland'),
('GD', 'Grenada'),
('GP', 'Guadeloupe'),
('GU', 'Guam'),
('GT', 'Guatemala'),
('GG', 'Guernsey'),
('GN', 'Guinea'),
('GW', 'Guinea-Bissau'),
('GY', 'Guyana'),
('HT', 'Haiti'),
('HN', 'Honduras'),
('HK', 'Hong Kong S.A.R., China'),
('HU', 'Hungary'),
('IS', 'Iceland'),
('IN', 'India'),
('ID', 'Indonesia'),
('IR', 'Iran'),
('IQ', 'Iraq'),
('IE', 'Ireland'),
('IM', 'Isle of Man'),
('IL', 'Israel'),
('IT', 'Italy'),
('CI', 'Ivory Coast'),
('JM', 'Jamaica'),
('JP', 'Japan'),
('JE', 'Jersey'),
('JO', 'Jordan'),
('KZ', 'Kazakhstan'),
('KE', 'Kenya'),
('KI', 'Kiribati'),
('KW', 'Kuwait'),
('KG', 'Kyrgyzstan'),
('LA', 'Laos'),
('LV', 'Latvia'),
('LB', 'Lebanon'),
('LS', 'Lesotho'),
('LR', 'Liberia'),
('LY', 'Libya'),
('LI', 'Liechtenstein'),
('LT', 'Lithuania'),
('LU', 'Luxembourg'),
('MO', 'Macao S.A.R., China'),
('MK', 'Macedonia'),
('MG', 'Madagascar'),
('MW', 'Malawi'),
('MY', 'Malaysia'),
('MV', 'Maldives'),
('ML', 'Mali'),
('MT', 'Malta'),
('MH', 'Marshall Islands'),
('MQ', 'Martinique'),
('MR', 'Mauritania'),
('MU', 'Mauritius'),
('YT', 'Mayotte'),
('MX', 'Mexico'),
('FM', 'Micronesia'),
('MD', 'Moldova'),
('MC', 'Monaco'),
('MN', 'Mongolia'),
('ME', 'Montenegro'),
('MS', 'Montserrat'),
('MA', 'Morocco'),
('MZ', 'Mozambique'),
('MM', 'Myanmar'),
('NA', 'Namibia'),
('NP', 'Nepal'),
('NL', 'Netherlands'),
('NC', 'New Caledonia'),
('NZ', 'New Zealand'),
('NI', 'Nicaragua'),
('NE', 'Niger'),
('NG', 'Nigeria'),
('NU', 'Niue'),
('NF', 'Norfolk Island'),
('MP', 'Northern Mariana Islands'),
('KP', 'North Korea'),
('NO', 'Norway'),
('OM', 'Oman'),
('PK', 'Pakistan'),
('PW', 'Palau'),
('PS', 'Palestinian Territory'),
('PA', 'Panama'),
('PG', 'Papua New Guinea'),
('PY', 'Paraguay'),
('PE', 'Peru'),
('PH', 'Philippines'),
('PN', 'Pitcairn'),
('PL', 'Poland'),
('PT', 'Portugal'),
('PR', 'Puerto Rico'),
('QA', 'Qatar'),
('RE', 'Reunion'),
('RO', 'Romania'),
('RU', 'Russia'),
('RW', 'Rwanda'),
('BL', 'Saint Barth├®lemy'),
('SH', 'Saint Helena'),
('KN', 'Saint Kitts and Nevis'),
('LC', 'Saint Lucia'),
('MF', 'Saint Martin (French part)'),
('PM', 'Saint Pierre and Miquelon'),
('VC', 'Saint Vincent and the Grenadines'),
('WS', 'Samoa'),
('SM', 'San Marino'),
('ST', 'Sao Tome and Principe'),
('SA', 'Saudi Arabia'),
('SN', 'Senegal'),
('RS', 'Serbia'),
('SC', 'Seychelles'),
('SL', 'Sierra Leone'),
('SG', 'Singapore'),
('SK', 'Slovakia'),
('SI', 'Slovenia'),
('SB', 'Solomon Islands'),
('SO', 'Somalia'),
('ZA', 'South Africa'),
('GS', 'South Georgia and the South Sandwich Islands'),
('KR', 'South Korea'),
('ES', 'Spain'),
('LK', 'Sri Lanka'),
('SD', 'Sudan'),
('SR', 'Suriname'),
('SJ', 'Svalbard and Jan Mayen'),
('SZ', 'Swaziland'),
('SE', 'Sweden'),
('CH', 'Switzerland'),
('SY', 'Syria'),
('TW', 'Taiwan'),
('TJ', 'Tajikistan'),
('TZ', 'Tanzania'),
('TH', 'Thailand'),
('TL', 'Timor-Leste'),
('TG', 'Togo'),
('TO', 'Tonga'),
('TT', 'Trinidad and Tobago'),
('TN', 'Tunisia'),
('TR', 'Turkey'),
('TM', 'Turkmenistan'),
('TC', 'Turks and Caicos Islands'),
('TV', 'Tuvalu'),
('VI', 'U.S. Virgin Islands'),
('UG', 'Uganda'),
('UA', 'Ukraine'),
('AE', 'United Arab Emirates'),
('GB', 'United Kingdom'),
('US', 'United States'),
('UY', 'Uruguay'),
('UZ', 'Uzbekistan'),
('VU', 'Vanuatu'),
('VA', 'Vatican'),
('VE', 'Venezuela'),
('VN', 'Vietnam'),
('WF', 'Wallis and Futuna'),
('EH', 'Western Sahara'),
('YE', 'Yemen'),
('ZM', 'Zambia'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE IF NOT EXISTS `delivery_addresses` (
  `delivery_address_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  PRIMARY KEY (`delivery_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=8 ;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`delivery_address_id`, `order_id`, `firstname`, `lastname`, `address1`, `address2`, `city`, `country`, `postcode`, `phoneno`, `mobileno`) VALUES
(1, 1, 'v', 'v', 'v', 'v', 'v', 'Myanmar', 'v', 'v', 'v'),
(2, 2, 'a', 'a', 'a', '', 'a', 'Myanmar', '', 's', ''),
(3, 3, 'ad', 'a', 'a', '', 'a', 'Myanmar', '', 'a', 'a'),
(4, 4, 'a', 'a', 'a', 'a', 'a', 'Afghanistan', 'a', 'a', 'a'),
(5, 5, 'ad', 'a', 'a', 'a', 'a', 'Afghanistan', 'a', 'a', 'a'),
(6, 6, 'a', 'a', 'a', 'a', 'a', 'Myanmar', 'a', 'a', 'a'),
(7, 7, 'e', 'e', 'e', 'e', 'e', 'Myanmar', '3', 'e', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `letterheads`
--

CREATE TABLE IF NOT EXISTS `letterheads` (
  `card_id` varchar(30) CHARACTER SET utf8 NOT NULL,
  `card_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `card_type_display` varchar(255) CHARACTER SET utf8 NOT NULL,
  `color` varchar(255) CHARACTER SET utf8 NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `letterheads`
--

INSERT INTO `letterheads` (`card_id`, `card_type`, `card_type_display`, `color`, `quantity`, `price`) VALUES
('LH-01001', 'letterheads', 'letterheads', '1C', 500, '20.00'),
('LH-01002', 'letterheads', 'letterheads', '1C', 1000, '15.00'),
('LH-01003', 'letterheads', 'letterheads', '1C', 1500, '14.00'),
('LH-01004', 'letterheads', 'letterheads', '1C', 3000, '12.00'),
('LH-01005', 'letterheads', 'letterheads', '1C', 5000, '11.50'),
('LH-01006', 'letterheads', 'letterheads', '2C', 500, '32.00'),
('LH-01007', 'letterheads', 'letterheads', '2C', 1000, '21.00'),
('LH-01008', 'letterheads', 'letterheads', '2C', 1500, '19.00'),
('LH-01009', 'letterheads', 'letterheads', '2C', 3000, '16.00'),
('LH-01010', 'letterheads', 'letterheads', '2C', 5000, '15.00'),
('LH-01011', 'letterheads', 'letterheads', '3C', 500, '44.00'),
('LH-01012', 'letterheads', 'letterheads', '3C', 1000, '27.00'),
('LH-01013', 'letterheads', 'letterheads', '3C', 1500, '24.00'),
('LH-01014', 'letterheads', 'letterheads', '3C', 3000, '20.00'),
('LH-01015', 'letterheads', 'letterheads', '3C', 5000, '18.00'),
('LH-01016', 'letterheads', 'letterheads', '4C', 500, '56.00'),
('LH-01017', 'letterheads', 'letterheads', '4C', 1000, '33.00'),
('LH-01018', 'letterheads', 'letterheads', '4C', 1500, '29.00'),
('LH-01019', 'letterheads', 'letterheads', '4C', 3000, '24.00'),
('LH-01020', 'letterheads', 'letterheads', '4C', 5000, '21.00');

-- --------------------------------------------------------

--
-- Table structure for table `letterheads_orderdetails`
--

CREATE TABLE IF NOT EXISTS `letterheads_orderdetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `card_id` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `letterheads_orderdetails`
--

INSERT INTO `letterheads_orderdetails` (`id`, `order_id`, `card_id`, `quantity`, `price`, `total`) VALUES
(1, 6, 'LH-01001', 500, '20.00', '10000.00'),
(2, 7, 'LH-01001', 500, '20.00', '10000.00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_ref_no` int(10) NOT NULL,
  `order_date` int(8) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=8 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_ref_no`, `order_date`, `user_id`, `total`) VALUES
(1, 1343952872, 1400607436, 18, '7800.00'),
(2, 1201240900, 1400726884, 18, '25200.00'),
(3, 1335368129, 1400727254, 18, '7800.00'),
(4, 1057014709, 1400784910, 18, '0.00'),
(5, 1205483215, 1401202308, 18, '9600.00'),
(6, 1300440988, 1401594880, 18, '17800.00'),
(7, 1046064781, 1401595565, 18, '10000.00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `orders_view`
--
CREATE TABLE IF NOT EXISTS `orders_view` (
`order_id` int(11) unsigned
,`order_ref_no` int(10)
,`order_date` int(8)
,`user_id` int(11) unsigned
,`username` varchar(255)
,`firstname` varchar(255)
,`lastname` varchar(255)
,`total` decimal(10,2)
);
-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `profile_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `timezone` int(11) unsigned NOT NULL DEFAULT '54',
  `postcode` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`profile_id`, `user_id`, `firstname`, `lastname`, `address1`, `address2`, `city`, `country`, `timezone`, `postcode`, `phoneno`, `mobileno`) VALUES
(18, 18, 'Ko Zin', 'Thet', 'Yangon, Myanmar', '', 'Yangon', 'Myanmar', 54, '2060', '+959420283533', '');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`) VALUES
(18, 'kozinthet@gmail.com', 'kozin', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `visitingcards`
--

CREATE TABLE IF NOT EXISTS `visitingcards` (
  `card_id` varchar(30) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_type_display` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visitingcards`
--

INSERT INTO `visitingcards` (`card_id`, `card_type`, `card_type_display`, `color`, `quantity`, `price`) VALUES
('VC-01001', 'AC', 'Art Card', '1C', 600, '13.00'),
('VC-01002', 'AC', 'Art Card', '1C', 1200, '8.00'),
('VC-01003', 'AC', 'Art Card', '1C', 2400, '6.00'),
('VC-01004', 'AC', 'Art Card', '1C', 3600, '5.00'),
('VC-01005', 'AC', 'Art Card', '2C', 600, '23.00'),
('VC-01006', 'AC', 'Art Card', '2C', 1200, '13.00'),
('VC-01007', 'AC', 'Art Card', '2C', 2400, '9.00'),
('VC-01008', 'AC', 'Art Card', '2C', 3600, '7.00'),
('VC-01009', 'AC', 'Art Card', '3C', 600, '33.00'),
('VC-01010', 'AC', 'Art Card', '3C', 1200, '18.00'),
('VC-01011', 'AC', 'Art Card', '3C', 2400, '12.00'),
('VC-01012', 'AC', 'Art Card', '3C', 3600, '9.00'),
('VC-01013', 'AC', 'Art Card', '4C', 600, '43.00'),
('VC-01014', 'AC', 'Art Card', '4C', 1200, '23.00'),
('VC-01015', 'AC', 'Art Card', '4C', 2400, '15.00'),
('VC-01016', 'AC', 'Art Card', '4C', 3600, '11.00'),
('VC-02001', 'WC', 'White Card', '1C', 600, '14.00'),
('VC-02002', 'WC', 'White Card', '1C', 1200, '9.00'),
('VC-02003', 'WC', 'White Card', '1C', 2400, '7.00'),
('VC-02004', 'WC', 'White Card', '1C', 3600, '6.00'),
('VC-02005', 'WC', 'White Card', '2C', 600, '24.00'),
('VC-02006', 'WC', 'White Card', '2C', 1200, '14.00'),
('VC-02007', 'WC', 'White Card', '2C', 2400, '10.00'),
('VC-02008', 'WC', 'White Card', '2C', 3600, '8.00'),
('VC-02009', 'WC', 'White Card', '3C', 600, '34.00'),
('VC-02010', 'WC', 'White Card', '3C', 1200, '19.00'),
('VC-02011', 'WC', 'White Card', '3C', 2400, '13.00'),
('VC-02012', 'WC', 'White Card', '3C', 3600, '10.00'),
('VC-02013', 'WC', 'White Card', '4C', 600, '44.00'),
('VC-02014', 'WC', 'White Card', '4C', 1200, '24.00'),
('VC-02015', 'WC', 'White Card', '4C', 2400, '16.00'),
('VC-02016', 'WC', 'White Card', '4C', 3600, '12.00'),
('VC-03001', 'FC', 'Fragrance Card', '1C', 600, '15.00'),
('VC-03002', 'FC', 'Fragrance Card', '1C', 1200, '10.00'),
('VC-03003', 'FC', 'Fragrance Card', '1C', 2400, '8.00'),
('VC-03004', 'FC', 'Fragrance Card', '1C', 3600, '7.00'),
('VC-03005', 'FC', 'Fragrance Card', '2C', 600, '25.00'),
('VC-03006', 'FC', 'Fragrance Card', '2C', 1200, '15.00'),
('VC-03008', 'FC', 'Fragrance Card', '2C', 3600, '9.00'),
('VC-03009', 'FC', 'Fragrance Card', '3C', 600, '35.00'),
('VC-03010', 'FC', 'Fragrance Card', '3C', 1200, '20.00'),
('VC-03011', 'FC', 'Fragrance Card', '3C', 2400, '14.00'),
('VC-03012', 'FC', 'Fragrance Card', '3C', 3600, '11.00'),
('VC-03013', 'FC', 'Fragrance Card', '4C', 600, '45.00'),
('VC-03014', 'FC', 'Fragrance Card', '4C', 1200, '25.00'),
('VC-03015', 'FC', 'Fragrance Card', '4C', 2400, '17.00'),
('VC-03016', 'FC', 'Fragrance Card', '4C', 3600, '13.00'),
('VC-04001', 'SC', 'Singapore Card (Normal)', '1C', 600, '21.00'),
('VC-04002', 'SC', 'Singapore Card (Normal)', '1C', 1200, '13.00'),
('VC-04003', 'SC', 'Singapore Card (Normal)', '1C', 2400, '10.00'),
('VC-04004', 'SC', 'Singapore Card (Normal)', '1C', 3600, '9.00'),
('VC-04005', 'SC', 'Singapore Card (Normal)', '2C', 600, '34.00'),
('VC-04006', 'SC', 'Singapore Card (Normal)', '2C', 1200, '19.00'),
('VC-04007', 'SC', 'Singapore Card (Normal)', '2C', 2400, '13.00'),
('VC-04008', 'SC', 'Singapore Card (Normal)', '2C', 3600, '11.00'),
('VC-04009', 'SC', 'Singapore Card (Normal)', '3C', 600, '47.00'),
('VC-04010', 'SC', 'Singapore Card (Normal)', '3C', 1200, '25.00'),
('VC-04011', 'SC', 'Singapore Card (Normal)', '3C', 2400, '16.00'),
('VC-04012', 'SC', 'Singapore Card (Normal)', '3C', 3600, '13.00'),
('VC-04013', 'SC', 'Singapore Card (Normal)', '4C', 600, '60.00'),
('VC-04014', 'SC', 'Singapore Card (Normal)', '4C', 1200, '31.00'),
('VC-04015', 'SC', 'Singapore Card (Normal)', '4C', 2400, '19.00'),
('VC-04016', 'SC', 'Singapore Card (Normal)', '4C', 3600, '15.00'),
('VC-05001', 'SC_OR', 'Singapore Card', '1C', 600, '29.00'),
('VC-05002', 'SC_OR', 'Singapore Card', '1C', 1200, '21.00'),
('VC-05003', 'SC_OR', 'Singapore Card', '1C', 2400, '18.00'),
('VC-05004', 'SC_OR', 'Singapore Card', '1C', 3600, '17.00'),
('VC-05005', 'SC_OR', 'Singapore Card', '2C', 600, '42.00'),
('VC-05006', 'SC_OR', 'Singapore Card', '2C', 1200, '27.00'),
('VC-05007', 'SC_OR', 'Singapore Card', '2C', 2400, '21.00'),
('VC-05008', 'SC_OR', 'Singapore Card', '2C', 3600, '29.00'),
('VC-05009', 'SC_OR', 'Singapore Card', '3C', 600, '55.00'),
('VC-05010', 'SC_OR', 'Singapore Card', '3C', 1200, '33.00'),
('VC-05011', 'SC_OR', 'Singapore Card', '3C', 2400, '24.00'),
('VC-05012', 'SC_OR', 'Singapore Card', '3C', 3600, '21.00'),
('VC-05013', 'SC_OR', 'Singapore Card', '4C', 600, '68.00'),
('VC-05014', 'SC_OR', 'Singapore Card', '4C', 1200, '39.00'),
('VC-05015', 'SC_OR', 'Singapore Card', '4C', 2400, '27.00'),
('VC-05016', 'SC_OR', 'Singapore Card', '4C', 3600, '23.00'),
('VC-06001', 'AC_300', 'Art Cart (300 gm) with Lamination', '1C', 600, '26.00'),
('VC-06002', 'AC_300', 'Art Cart (300 gm) with Lamination', '1C', 1200, '18.00'),
('VC-06003', 'AC_300', 'Art Cart (300 gm) with Lamination', '1C', 2400, '15.00'),
('VC-06004', 'AC_300', 'Art Cart (300 gm) with Lamination', '1C', 3600, '14.00'),
('VC-06005', 'AC_300', 'Art Cart (300 gm) with Lamination', '2C', 600, '39.00'),
('VC-06006', 'AC_300', 'Art Cart (300 gm) with Lamination', '2C', 1200, '24.00'),
('VC-06007', 'AC_300', 'Art Cart (300 gm) with Lamination', '2C', 2400, '18.00'),
('VC-06008', 'AC_300', 'Art Cart (300 gm) with Lamination', '2C', 3600, '16.00'),
('VC-06009', 'AC_300', 'Art Cart (300 gm) with Lamination', '3C', 600, '52.00'),
('VC-06010', 'AC_300', 'Art Cart (300 gm) with Lamination', '3C', 1200, '30.00'),
('VC-06011', 'AC_300', 'Art Cart (300 gm) with Lamination', '3C', 2400, '21.00'),
('VC-06012', 'AC_300', 'Art Cart (300 gm) with Lamination', '3C', 3600, '18.00'),
('VC-06013', 'AC_300', 'Art Cart (300 gm) with Lamination', '4C', 600, '65.00'),
('VC-06014', 'AC_300', 'Art Cart (300 gm) with Lamination', '4C', 1200, '36.00'),
('VC-06015', 'AC_300', 'Art Cart (300 gm) with Lamination', '4C', 2400, '24.00'),
('VC-06016', 'AC_300', 'Art Cart (300 gm) with Lamination', '4C', 3600, '20.00'),
('VC-03007', 'FC', 'Fragrance Card', '2C', 2400, '11.00');

-- --------------------------------------------------------

--
-- Table structure for table `visitingcards_orderdetails`
--

CREATE TABLE IF NOT EXISTS `visitingcards_orderdetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `card_id` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `visitingcards_orderdetails`
--

INSERT INTO `visitingcards_orderdetails` (`id`, `order_id`, `card_id`, `quantity`, `price`, `total`) VALUES
(1, 1, 'VC-01001', 600, '13.00', '7800.00'),
(2, 2, 'VC-01001', 1200, '13.00', '7800.00'),
(3, 2, 'VC-01002', 1200, '8.00', '9600.00'),
(4, 2, 'VC-01001', 600, '13.00', '7800.00'),
(5, 3, 'VC-01001', 600, '13.00', '7800.00'),
(6, 5, 'VC-01002', 600, '8.00', '9600.00'),
(7, 6, 'VC-01001', 600, '13.00', '7800.00');

-- --------------------------------------------------------

--
-- Structure for view `orders_view`
--
DROP TABLE IF EXISTS `orders_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orders_view` AS select `orders`.`order_id` AS `order_id`,`orders`.`order_ref_no` AS `order_ref_no`,`orders`.`order_date` AS `order_date`,`orders`.`user_id` AS `user_id`,`users`.`username` AS `username`,`profiles`.`firstname` AS `firstname`,`profiles`.`lastname` AS `lastname`,`orders`.`total` AS `total` from ((`orders` join `users` on((`orders`.`user_id` = `users`.`user_id`))) join `profiles` on((`orders`.`user_id` = `profiles`.`user_id`))) order by `orders`.`order_date`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
