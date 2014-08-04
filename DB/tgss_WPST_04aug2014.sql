-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 04, 2014 at 10:36 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=24 ;

--
-- Dumping data for table `billing_addresses`
--

INSERT INTO `billing_addresses` (`billing_address_id`, `order_id`, `email`, `firstname`, `lastname`, `address1`, `address2`, `city`, `country`, `postcode`, `phoneno`, `mobileno`) VALUES
(5, 5, 'a@gmail.com', 'a', 'a', 'a', 'a', 'a', 'Myanmar', 'a', '0', '0'),
(6, 6, 'a@gmail.com', 'as', 'as', 'as', 'as', 'a', 'Myanmar', 'a', '0', '0'),
(7, 7, 'a@gmail.com', 'a', 'a', 'a', 'a', 'a', 'Myanmar', 'a', '0', '0'),
(8, 8, 'c@gmail.com', 'c', 'c', 'c', 'c', 'c', 'Myanmar', 'c', 'c', ''),
(9, 9, 'c@gmail.com', 'c', 'c', 'c', 'c', 'c', 'Myanmar', 'c', 'c', ''),
(10, 10, 'c@gmail.com', 'c', 'c', 'c', 'c', 'c', 'Myanmar', 'c', 'c', ''),
(11, 11, 'c@gmail.com', 'c', 'c', 'c', 'c', 'c', 'Myanmar', 'c', 'c', ''),
(12, 12, 'c@gmail.com', 'c', 'c', 'c', 'c', 'c', 'Myanmar', 'c', 'c', ''),
(13, 13, 'c@gmail.com', 'c', 'c', 'c', 'c', 'c', 'Myanmar', 'c', 'c', ''),
(14, 14, 'c@gmail.com', 'c', 'c', 'c', 'c', 'c', 'Myanmar', 'c', 'c', ''),
(15, 15, 'c@gmail.com', 'c', 'c', 'c', 'c', 'c', 'Myanmar', 'c', 'c', ''),
(16, 16, 'c@gmail.com', 'c', 'c', 'c', 'c', 'c', 'Myanmar', 'c', 'c', ''),
(17, 17, 'a@gmail.com', 'a', 'a', 'a', 'a', 'a', 'Myanmar', 'a', 'a', ''),
(18, 18, 'a@gmail.com', 'aa', 'a', 'They smile that smile..\nThey bat those eyes..\nThey steal you with "hello"...\nThey kill you with "goodbye"...\nThey hook you with one touch...\nAnd you can''t break free\nThe trouble with boys is nobody loves trouble as much as me.....', 'a', 'a', 'Myanmar', '', 'a', 'a'),
(19, 19, 'a@gmail.com', 'a', 'a', 'a', 'a', 'a', 'Myanmar', 'a', 'a', 'a'),
(20, 20, 'a@gmail.com', 'aa', 'a', 'a', 'a', 'a', 'Myanmar', 'aa', 'a', 'a'),
(21, 21, 'a@gmail.com', 'a', 'a', 'a', 'a', 'a', 'Myanmar', 'a', 'a', 'a'),
(22, 22, 'a@gmail.com', 'a', 'a', 'a', 'a', 'a', 'Myanmar', 'aaa', 'a', 'a'),
(23, 23, 'a@gmail.com', 'a', 'a@gmail.com', 'a', 'a', 'a', 'Myanmar', 'a', 'a', 'a');

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
('CLVO_010205', 'CLVOT_000001', '4_75', '4" x 7.5"', 200, '1040.00', '80.00');

-- --------------------------------------------------------

--
-- Table structure for table `cl_voucher_types`
--

CREATE TABLE IF NOT EXISTS `cl_voucher_types` (
  `type_id` varchar(30) NOT NULL,
  `size` varchar(255) NOT NULL,
  `type_quantity` varchar(255) NOT NULL,
  `printing` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cl_voucher_types`
--

INSERT INTO `cl_voucher_types` (`type_id`, `size`, `type_quantity`, `printing`) VALUES
('CLVOT_000001', '2 sizes', '100 sets, 200 pages', '1 Col; (2 pages printing) + No. (2-pages)'),
('CLVOT_000002', '2 sizes', '50 sets, 150 pages', '1 Col; (3 pages printing) + No. (3-pages)');

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
('CW', 'Curaçao'),
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
('BL', 'Saint Barthélemy'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=20 ;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`delivery_address_id`, `order_id`, `firstname`, `lastname`, `address1`, `address2`, `city`, `country`, `postcode`, `phoneno`, `mobileno`) VALUES
(5, 5, '', '', 'a', 'a', 'a', 'Afghanistan', 'a', '0', '0'),
(6, 6, '', '', 'a', 'a', 'a', 'Myanmar', 'a', '0', '0'),
(7, 7, '', '', 'a', 'a', 'a', 'Myanmar', 'a', '0', '0'),
(8, 8, '', '', '', '', '', 'Myanmar', '', '', ''),
(9, 10, '', '', '', '', '', 'Myanmar', '', '', ''),
(10, 14, '', '', 'c', 'c', 'c', 'Myanmar', 'c', 'c', ''),
(11, 15, '', '', 'd', 'd', 'd', 'Myanmar', '', 'd', 'd'),
(12, 16, 'd', 'd', 'd', 'd', 'd', 'Myanmar', '', 'd', 'd'),
(13, 17, 'a', 'a', 'a', 'a', 'a', 'Myanmar', 'a', 'a', ''),
(14, 18, 'aa', 'a', 'a', 'a', 'a', 'Myanmar', '', 'a', 'a'),
(15, 19, 'a', 'a', 'a', 'a', 'a', 'Myanmar', 'a', 'a', 'a'),
(16, 20, 'aa', 'a', 'a', 'a', 'a', 'Myanmar', 'aa', 'a', 'a'),
(17, 21, 'a', 'a', 'a', 'a', 'a', 'Myanmar', 'a', 'a', 'a'),
(18, 22, 'a', 'a', 'a', 'a', 'a', 'Myanmar', 'aaa', 'a', 'a'),
(19, 23, 'a', 'a@gmail.com', 'a', 'a', 'a', 'Myanmar', 'a', 'a', 'a');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `letterheads_orderdetails`
--

INSERT INTO `letterheads_orderdetails` (`id`, `order_id`, `card_id`, `quantity`, `price`, `total`) VALUES
(1, 6, 'LH-01001', 500, '0.00', '10000.00'),
(2, 7, 'LH-01002', 1000, '15.00', '15000.00'),
(3, 18, 'LH-01001', 500, '20.00', '10000.00');

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
  `payment_status` int(1) NOT NULL DEFAULT '0',
  `payment_status_text` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=24 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_ref_no`, `order_date`, `user_id`, `total`, `payment_status`, `payment_status_text`) VALUES
(5, 1366040441, 1400296625, 18, '7800.00', 0, 'pending'),
(6, 1138219373, 1400302659, 18, '17800.00', 0, 'pending'),
(7, 1075798528, 1400303015, 18, '22800.00', 0, 'pending'),
(8, 1034176288, 1400377478, 18, '7800.00', 0, 'pending'),
(10, 1065549395, 1400377594, 18, '7800.00', 0, 'pending'),
(14, 1006432300, 1400377738, 18, '7800.00', 0, 'pending'),
(15, 1125179573, 1400377756, 18, '7800.00', 0, 'pending'),
(16, 1093906580, 1400377830, 18, '7800.00', 0, 'pending'),
(17, 1054599468, 1400382502, 18, '7800.00', 0, 'pending'),
(18, 1231437672, 1400383259, 18, '17800.00', 0, 'pending'),
(19, 1251510454, 1400405743, 18, '7800.00', 0, 'pending'),
(20, 1137243265, 1400726238, 18, '7800.00', 0, 'pending'),
(21, 1029633633, 1402011457, 18, '21600.00', 0, 'pending'),
(22, 1292594583, 1402722753, 18, '7800.00', 0, 'pending'),
(23, 1091115912, 1403006756, 18, '15600.00', 1, 'first installment made (7,800.00 of 15,600.00)');

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
,`payment_status` int(1)
,`payment_status_text` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `installment_no` int(1) NOT NULL,
  `payment_datetime` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `payment_gateway` varchar(255) NOT NULL,
  `payment_gateway_id` varchar(255) NOT NULL,
  `payment_info` longtext NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `order_id`, `user_id`, `installment_no`, `payment_datetime`, `amount`, `currency`, `payment_gateway`, `payment_gateway_id`, `payment_info`, `status`) VALUES
(19, 23, 18, 1, 1405222823, '7800.00', 'USD', 'paypal', 'PAY-67G89057MN779712MKPA765Y', 's:1616:"{"id":"PAY-67G89057MN779712MKPA765Y","create_time":"2014-07-13T03:39:35Z","update_time":"2014-07-13T03:40:47Z","state":"approved","intent":"sale","payer":{"payment_method":"paypal","payer_info":{"email":"tgss.user001@gmail.com","first_name":"tgss","last_name":"user one","payer_id":"TP6S73JWUA8D4","shipping_address":{"line1":"1 Main St","line2":"","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US","recipientName":""}}},"transactions":[{"amount":{"total":"7.80","currency":"USD","details":{"subtotal":"7.80"}},"description":"first installment (7.80 of 15.60)","item_list":{"items":[{"name":"first installment (7.80 of 15.60)","price":"7.80","currency":"USD","quantity":"1"}],"shipping_address":{"recipient_name":"tgss user one","line1":"1 Main St","line2":"","city":"San Jose","state":"CA","postal_code":"95131","country_code":"US"}},"related_resources":[{"sale":{"id":"1EH13498810918456","create_time":"2014-07-13T03:39:35Z","update_time":"2014-07-13T03:40:47Z","amount":{"total":"7.80","currency":"USD"},"state":"completed","parent_payment":"PAY-67G89057MN779712MKPA765Y","links":[{"href":"https:\\/\\/api.sandbox.paypal.com\\/v1\\/payments\\/sale\\/1EH13498810918456","rel":"self","method":"GET"},{"href":"https:\\/\\/api.sandbox.paypal.com\\/v1\\/payments\\/sale\\/1EH13498810918456\\/refund","rel":"refund","method":"POST"},{"href":"https:\\/\\/api.sandbox.paypal.com\\/v1\\/payments\\/payment\\/PAY-67G89057MN779712MKPA765Y","rel":"parent_payment","method":"GET"}]}}]}],"links":[{"href":"https:\\/\\/api.sandbox.paypal.com\\/v1\\/payments\\/payment\\/PAY-67G89057MN779712MKPA765Y","rel":"self","method":"GET"}]}";', 1);

-- --------------------------------------------------------

--
-- Table structure for table `postercalenders`
--

CREATE TABLE IF NOT EXISTS `postercalenders` (
  `card_id` varchar(30) NOT NULL,
  `parent_type_id` varchar(255) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_type_display` varchar(255) NOT NULL,
  `no_of_column` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postercalenders`
--

INSERT INTO `postercalenders` (`card_id`, `parent_type_id`, `card_type`, `card_type_display`, `no_of_column`, `quantity`, `price`) VALUES
('PC_010101', 'PCT_000001', 'WF_70', 'W/F (70)', 1, 500, '50.00'),
('PC_010102', 'PCT_000001', 'WF_70', 'W/F (70)', 1, 1000, '34.00'),
('PC_010103', 'PCT_000001', 'WF_70', 'W/F (70)', 1, 1500, '31.00'),
('PC_010104', 'PCT_000001', 'WF_70', 'W/F (70)', 1, 2000, '28.00'),
('PC_010105', 'PCT_000001', 'WF_70', 'W/F (70)', 1, 2500, '26.00'),
('PC_010106', 'PCT_000001', 'WF_70', 'W/F (70)', 1, 3000, '25.00'),
('PC_010107', 'PCT_000001', 'WF_70', 'W/F (70)', 1, 5000, '24.00'),
('PC_010108', 'PCT_000001', 'WF_70', 'W/F (70)', 1, 10000, '22.00'),
('PC_010109', 'PCT_000001', 'WF_70', 'W/F (70)', 4, 500, '108.00'),
('PC_010110', 'PCT_000001', 'WF_70', 'W/F (70)', 4, 1000, '63.00'),
('PC_010111', 'PCT_000001', 'WF_70', 'W/F (70)', 4, 1500, '55.00'),
('PC_010112', 'PCT_000001', 'WF_70', 'W/F (70)', 4, 2000, '48.00'),
('PC_010113', 'PCT_000001', 'WF_70', 'W/F (70)', 4, 2500, '44.00'),
('PC_010114', 'PCT_000001', 'WF_70', 'W/F (70)', 4, 3000, '42.00'),
('PC_010115', 'PCT_000001', 'WF_70', 'W/F (70)', 4, 5000, '40.00'),
('PC_010116', 'PCT_000001', 'WF_70', 'W/F (70)', 4, 10000, '35.00'),
('PC_010201', 'PCT_000001', 'AP_85', 'A/P (85)', 1, 500, '54.00'),
('PC_010202', 'PCT_000001', 'AP_85', 'A/P (85)', 1, 1000, '37.00'),
('PC_010203', 'PCT_000001', 'AP_85', 'A/P (85)', 1, 1500, '34.00'),
('PC_010204', 'PCT_000001', 'AP_85', 'A/P (85)', 1, 2000, '31.00'),
('PC_010205', 'PCT_000001', 'AP_85', 'A/P (85)', 1, 2500, '30.00'),
('PC_010206', 'PCT_000001', 'AP_85', 'A/P (85)', 1, 3000, '29.00'),
('PC_010207', 'PCT_000001', 'AP_85', 'A/P (85)', 1, 5000, '27.00'),
('PC_010208', 'PCT_000001', 'AP_85', 'A/P (85)', 1, 10000, '25.00'),
('PC_010209', 'PCT_000001', 'AP_85', 'A/P (85)', 4, 500, '112.00'),
('PC_010210', 'PCT_000001', 'AP_85', 'A/P (85)', 4, 1000, '66.00'),
('PC_010211', 'PCT_000001', 'AP_85', 'A/P (85)', 4, 1500, '59.00'),
('PC_010212', 'PCT_000001', 'AP_85', 'A/P (85)', 4, 2000, '52.00'),
('PC_010213', 'PCT_000001', 'AP_85', 'A/P (85)', 4, 2500, '48.00'),
('PC_010214', 'PCT_000001', 'AP_85', 'A/P (85)', 4, 3000, '46.00'),
('PC_010215', 'PCT_000001', 'AP_85', 'A/P (85)', 4, 5000, '43.00'),
('PC_010216', 'PCT_000001', 'AP_85', 'A/P (85)', 4, 10000, '39.00'),
('PC_010301', 'PCT_000001', 'AP_100', 'A/P (100)', 1, 500, '57.00'),
('PC_010302', 'PCT_000001', 'AP_100', 'A/P (100)', 1, 1000, '40.00'),
('PC_010303', 'PCT_000001', 'AP_100', 'A/P (100)', 1, 1500, '36.00'),
('PC_010304', 'PCT_000001', 'AP_100', 'A/P (100)', 1, 2000, '34.00'),
('PC_010305', 'PCT_000001', 'AP_100', 'A/P (100)', 1, 2500, '32.00'),
('PC_010306', 'PCT_000001', 'AP_100', 'A/P (100)', 1, 3000, '31.00'),
('PC_010307', 'PCT_000001', 'AP_100', 'A/P (100)', 1, 5000, '30.00'),
('PC_010308', 'PCT_000001', 'AP_100', 'A/P (100)', 1, 10000, '28.00'),
('PC_010309', 'PCT_000001', 'AP_100', 'A/P (100)', 4, 500, '115.00'),
('PC_010310', 'PCT_000001', 'AP_100', 'A/P (100)', 4, 1000, '69.00'),
('PC_010311', 'PCT_000001', 'AP_100', 'A/P (100)', 4, 1500, '60.00'),
('PC_010312', 'PCT_000001', 'AP_100', 'A/P (100)', 4, 2000, '54.00'),
('PC_010313', 'PCT_000001', 'AP_100', 'A/P (100)', 4, 2500, '50.00'),
('PC_010314', 'PCT_000001', 'AP_100', 'A/P (100)', 4, 3000, '48.00'),
('PC_010315', 'PCT_000001', 'AP_100', 'A/P (100)', 4, 5000, '45.00'),
('PC_010316', 'PCT_000001', 'AP_100', 'A/P (100)', 4, 10000, '40.00'),
('PC_010401', 'PCT_000001', 'AP_128', 'A/P (128)', 1, 500, '68.00'),
('PC_010402', 'PCT_000001', 'AP_128', 'A/P (128)', 1, 1000, '50.00'),
('PC_010403', 'PCT_000001', 'AP_128', 'A/P (128)', 1, 1500, '45.00'),
('PC_010404', 'PCT_000001', 'AP_128', 'A/P (128)', 1, 2000, '43.00'),
('PC_010405', 'PCT_000001', 'AP_128', 'A/P (128)', 1, 2500, '42.00'),
('PC_010406', 'PCT_000001', 'AP_128', 'A/P (128)', 1, 3000, '40.00'),
('PC_010407', 'PCT_000001', 'AP_128', 'A/P (128)', 1, 5000, '38.00'),
('PC_010408', 'PCT_000001', 'AP_128', 'A/P (128)', 1, 10000, '36.00'),
('PC_010409', 'PCT_000001', 'AP_128', 'A/P (128)', 4, 500, '126.00'),
('PC_010410', 'PCT_000001', 'AP_128', 'A/P (128)', 4, 1000, '80.00'),
('PC_010411', 'PCT_000001', 'AP_128', 'A/P (128)', 4, 1500, '70.00'),
('PC_010412', 'PCT_000001', 'AP_128', 'A/P (128)', 4, 2000, '63.00'),
('PC_010413', 'PCT_000001', 'AP_128', 'A/P (128)', 4, 2500, '59.00'),
('PC_010414', 'PCT_000001', 'AP_128', 'A/P (128)', 4, 3000, '57.00'),
('PC_010415', 'PCT_000001', 'AP_128', 'A/P (128)', 4, 5000, '55.00'),
('PC_010416', 'PCT_000001', 'AP_128', 'A/P (128)', 4, 10000, '49.00'),
('PC_010501', 'PCT_000001', 'AP_148', 'A/P (148)', 1, 500, '73.00'),
('PC_010502', 'PCT_000001', 'AP_148', 'A/P (148)', 1, 1000, '53.00'),
('PC_010503', 'PCT_000001', 'AP_148', 'A/P (148)', 1, 1500, '50.00'),
('PC_010504', 'PCT_000001', 'AP_148', 'A/P (148)', 1, 2000, '47.00'),
('PC_010505', 'PCT_000001', 'AP_148', 'A/P (148)', 1, 2500, '45.00'),
('PC_010506', 'PCT_000001', 'AP_148', 'A/P (148)', 1, 3000, '43.00'),
('PC_010507', 'PCT_000001', 'AP_148', 'A/P (148)', 1, 5000, '41.00'),
('PC_010508', 'PCT_000001', 'AP_148', 'A/P (148)', 1, 10000, '39.00'),
('PC_010509', 'PCT_000001', 'AP_148', 'A/P (148)', 4, 500, '132.00'),
('PC_010510', 'PCT_000001', 'AP_148', 'A/P (148)', 4, 1000, '82.00'),
('PC_010511', 'PCT_000001', 'AP_148', 'A/P (148)', 4, 1500, '74.00'),
('PC_010512', 'PCT_000001', 'AP_148', 'A/P (148)', 4, 2000, '66.00'),
('PC_010513', 'PCT_000001', 'AP_148', 'A/P (148)', 4, 2500, '63.00'),
('PC_010514', 'PCT_000001', 'AP_148', 'A/P (148)', 4, 3000, '61.00'),
('PC_010515', 'PCT_000001', 'AP_148', 'A/P (148)', 4, 5000, '57.00'),
('PC_010516', 'PCT_000001', 'AP_148', 'A/P (148)', 4, 10000, '52.00'),
('PC_010601', 'PCT_000001', 'AC_210', 'A/C (210)', 1, 500, '100.00'),
('PC_010602', 'PCT_000001', 'AC_210', 'A/C (210)', 1, 1000, '82.00'),
('PC_010603', 'PCT_000001', 'AC_210', 'A/C (210)', 1, 1500, '77.00'),
('PC_010604', 'PCT_000001', 'AC_210', 'A/C (210)', 1, 2000, '72.00'),
('PC_010605', 'PCT_000001', 'AC_210', 'A/C (210)', 1, 2500, '70.00'),
('PC_010606', 'PCT_000001', 'AC_210', 'A/C (210)', 1, 3000, '68.00'),
('PC_010607', 'PCT_000001', 'AC_210', 'A/C (210)', 1, 5000, '66.00'),
('PC_010608', 'PCT_000001', 'AC_210', 'A/C (210)', 1, 10000, '63.00'),
('PC_010609', 'PCT_000001', 'AC_210', 'A/C (210)', 4, 500, '160.00'),
('PC_010610', 'PCT_000001', 'AC_210', 'A/C (210)', 4, 1000, '115.00'),
('PC_010611', 'PCT_000001', 'AC_210', 'A/C (210)', 4, 1500, '102.00'),
('PC_010612', 'PCT_000001', 'AC_210', 'A/C (210)', 4, 2000, '94.00'),
('PC_010613', 'PCT_000001', 'AC_210', 'A/C (210)', 4, 2500, '88.00'),
('PC_010614', 'PCT_000001', 'AC_210', 'A/C (210)', 4, 3000, '86.00'),
('PC_010615', 'PCT_000001', 'AC_210', 'A/C (210)', 4, 5000, '83.00'),
('PC_010616', 'PCT_000001', 'AC_210', 'A/C (210)', 4, 10000, '78.00'),
('PC_010701', 'PCT_000001', 'AC_250', 'A/C (250)', 1, 500, '125.00'),
('PC_010702', 'PCT_000001', 'AC_250', 'A/C (250)', 1, 1000, '97.00'),
('PC_010703', 'PCT_000001', 'AC_250', 'A/C (250)', 1, 1500, '89.00'),
('PC_010704', 'PCT_000001', 'AC_250', 'A/C (250)', 1, 2000, '85.00'),
('PC_010705', 'PCT_000001', 'AC_250', 'A/C (250)', 1, 2500, '83.00'),
('PC_010706', 'PCT_000001', 'AC_250', 'A/C (250)', 1, 3000, '81.00'),
('PC_010707', 'PCT_000001', 'AC_250', 'A/C (250)', 1, 5000, '78.00'),
('PC_010708', 'PCT_000001', 'AC_250', 'A/C (250)', 1, 10000, '75.00'),
('PC_010709', 'PCT_000001', 'AC_250', 'A/C (250)', 4, 500, '180.00'),
('PC_010710', 'PCT_000001', 'AC_250', 'A/C (250)', 4, 1000, '127.00'),
('PC_010711', 'PCT_000001', 'AC_250', 'A/C (250)', 4, 1500, '115.00'),
('PC_010712', 'PCT_000001', 'AC_250', 'A/C (250)', 4, 2000, '105.00'),
('PC_010713', 'PCT_000001', 'AC_250', 'A/C (250)', 4, 2500, '100.00'),
('PC_010714', 'PCT_000001', 'AC_250', 'A/C (250)', 4, 3000, '98.00'),
('PC_010715', 'PCT_000001', 'AC_250', 'A/C (250)', 4, 5000, '94.00'),
('PC_010716', 'PCT_000001', 'AC_250', 'A/C (250)', 4, 10000, '90.00'),
('PC_010801', 'PCT_000001', 'AC_300', 'A/C (300)', 1, 500, '145.00'),
('PC_010802', 'PCT_000001', 'AC_300', 'A/C (300)', 1, 1000, '115.00'),
('PC_010803', 'PCT_000001', 'AC_300', 'A/C (300)', 1, 1500, '107.00'),
('PC_010804', 'PCT_000001', 'AC_300', 'A/C (300)', 1, 2000, '100.00'),
('PC_010805', 'PCT_000001', 'AC_300', 'A/C (300)', 1, 2500, '98.00'),
('PC_010806', 'PCT_000001', 'AC_300', 'A/C (300)', 1, 3000, '96.00'),
('PC_010807', 'PCT_000001', 'AC_300', 'A/C (300)', 1, 5000, '93.00'),
('PC_010808', 'PCT_000001', 'AC_300', 'A/C (300)', 1, 10000, '90.00'),
('PC_010809', 'PCT_000001', 'AC_300', 'A/C (300)', 4, 500, '200.00'),
('PC_010810', 'PCT_000001', 'AC_300', 'A/C (300)', 4, 1000, '145.00'),
('PC_010811', 'PCT_000001', 'AC_300', 'A/C (300)', 4, 1500, '132.00'),
('PC_010812', 'PCT_000001', 'AC_300', 'A/C (300)', 4, 2000, '121.00'),
('PC_010813', 'PCT_000001', 'AC_300', 'A/C (300)', 4, 2500, '116.00'),
('PC_010814', 'PCT_000001', 'AC_300', 'A/C (300)', 4, 3000, '113.00'),
('PC_010815', 'PCT_000001', 'AC_300', 'A/C (300)', 4, 5000, '109.00'),
('PC_010816', 'PCT_000001', 'AC_300', 'A/C (300)', 4, 10000, '103.00'),
('PC_020101', 'PCT_000002', 'WF_70', 'W/F (70)', 1, 500, '106.00'),
('PC_020102', 'PCT_000002', 'WF_70', 'W/F (70)', 1, 1000, '70.00'),
('PC_020103', 'PCT_000002', 'WF_70', 'W/F (70)', 1, 1500, '62.00'),
('PC_020104', 'PCT_000002', 'WF_70', 'W/F (70)', 1, 2000, '58.00'),
('PC_020105', 'PCT_000002', 'WF_70', 'W/F (70)', 1, 2500, '55.00'),
('PC_020106', 'PCT_000002', 'WF_70', 'W/F (70)', 1, 3000, '53.00'),
('PC_020107', 'PCT_000002', 'WF_70', 'W/F (70)', 1, 5000, '51.00'),
('PC_020108', 'PCT_000002', 'WF_70', 'W/F (70)', 1, 10000, '48.00'),
('PC_020109', 'PCT_000002', 'WF_70', 'W/F (70)', 4, 500, '246.00'),
('PC_020110', 'PCT_000002', 'WF_70', 'W/F (70)', 4, 1000, '140.00'),
('PC_020111', 'PCT_000002', 'WF_70', 'W/F (70)', 4, 1500, '123.00'),
('PC_020112', 'PCT_000002', 'WF_70', 'W/F (70)', 4, 2000, '108.00'),
('PC_020113', 'PCT_000002', 'WF_70', 'W/F (70)', 4, 2500, '100.00'),
('PC_020114', 'PCT_000002', 'WF_70', 'W/F (70)', 4, 3000, '93.00'),
('PC_020115', 'PCT_000002', 'WF_70', 'W/F (70)', 4, 5000, '85.00'),
('PC_020116', 'PCT_000002', 'WF_70', 'W/F (70)', 4, 10000, '77.00'),
('PC_020201', 'PCT_000002', 'AP_85', 'A/P (85)', 1, 500, '116.00'),
('PC_020202', 'PCT_000002', 'AP_85', 'A/P (85)', 1, 1000, '80.00'),
('PC_020203', 'PCT_000002', 'AP_85', 'A/P (85)', 1, 1500, '70.00'),
('PC_020204', 'PCT_000002', 'AP_85', 'A/P (85)', 1, 2000, '66.00'),
('PC_020205', 'PCT_000002', 'AP_85', 'A/P (85)', 1, 2500, '63.00'),
('PC_020206', 'PCT_000002', 'AP_85', 'A/P (85)', 1, 3000, '61.00'),
('PC_020207', 'PCT_000002', 'AP_85', 'A/P (85)', 1, 5000, '59.00'),
('PC_020208', 'PCT_000002', 'AP_85', 'A/P (85)', 1, 10000, '56.00'),
('PC_020209', 'PCT_000002', 'AP_85', 'A/P (85)', 4, 500, '258.00'),
('PC_020210', 'PCT_000002', 'AP_85', 'A/P (85)', 4, 1000, '150.00'),
('PC_020211', 'PCT_000002', 'AP_85', 'A/P (85)', 4, 1500, '132.00'),
('PC_020212', 'PCT_000002', 'AP_85', 'A/P (85)', 4, 2000, '116.00'),
('PC_020213', 'PCT_000002', 'AP_85', 'A/P (85)', 4, 2500, '108.00'),
('PC_020214', 'PCT_000002', 'AP_85', 'A/P (85)', 4, 3000, '102.00'),
('PC_020215', 'PCT_000002', 'AP_85', 'A/P (85)', 4, 5000, '93.00'),
('PC_020216', 'PCT_000002', 'AP_85', 'A/P (85)', 4, 10000, '85.00'),
('PC_020301', 'PCT_000002', 'AP_100', 'A/P (100)', 1, 500, '123.00'),
('PC_020302', 'PCT_000002', 'AP_100', 'A/P (100)', 1, 1000, '85.00'),
('PC_020303', 'PCT_000002', 'AP_100', 'A/P (100)', 1, 1500, '75.00'),
('PC_020304', 'PCT_000002', 'AP_100', 'A/P (100)', 1, 2000, '70.00'),
('PC_020305', 'PCT_000002', 'AP_100', 'A/P (100)', 1, 2500, '65.00'),
('PC_020306', 'PCT_000002', 'AP_100', 'A/P (100)', 1, 3000, '63.00'),
('PC_020307', 'PCT_000002', 'AP_100', 'A/P (100)', 1, 5000, '62.00'),
('PC_020308', 'PCT_000002', 'AP_100', 'A/P (100)', 1, 10000, '60.00'),
('PC_020309', 'PCT_000002', 'AP_100', 'A/P (100)', 4, 500, '263.00'),
('PC_020310', 'PCT_000002', 'AP_100', 'A/P (100)', 4, 1000, '155.00'),
('PC_020311', 'PCT_000002', 'AP_100', 'A/P (100)', 4, 1500, '136.00'),
('PC_020312', 'PCT_000002', 'AP_100', 'A/P (100)', 4, 2000, '113.00'),
('PC_020313', 'PCT_000002', 'AP_100', 'A/P (100)', 4, 2500, '105.00'),
('PC_020314', 'PCT_000002', 'AP_100', 'A/P (100)', 4, 3000, '97.00'),
('PC_020315', 'PCT_000002', 'AP_100', 'A/P (100)', 4, 5000, '96.00'),
('PC_020316', 'PCT_000002', 'AP_100', 'A/P (100)', 4, 10000, '90.00'),
('PC_020401', 'PCT_000002', 'AP_128', 'A/P (128)', 1, 500, '145.00'),
('PC_020402', 'PCT_000002', 'AP_128', 'A/P (128)', 1, 1000, '104.00'),
('PC_020403', 'PCT_000002', 'AP_128', 'A/P (128)', 1, 1500, '94.00'),
('PC_020404', 'PCT_000002', 'AP_128', 'A/P (128)', 1, 2000, '88.00'),
('PC_020405', 'PCT_000002', 'AP_128', 'A/P (128)', 1, 2500, '84.00'),
('PC_020406', 'PCT_000002', 'AP_128', 'A/P (128)', 1, 3000, '82.00'),
('PC_020407', 'PCT_000002', 'AP_128', 'A/P (128)', 1, 5000, '80.00'),
('PC_020408', 'PCT_000002', 'AP_128', 'A/P (128)', 1, 10000, '77.00'),
('PC_020409', 'PCT_000002', 'AP_128', 'A/P (128)', 4, 500, '285.00'),
('PC_020410', 'PCT_000002', 'AP_128', 'A/P (128)', 4, 1000, '175.00'),
('PC_020411', 'PCT_000002', 'AP_128', 'A/P (128)', 4, 1500, '155.00'),
('PC_020412', 'PCT_000002', 'AP_128', 'A/P (128)', 4, 2000, '138.00'),
('PC_020413', 'PCT_000002', 'AP_128', 'A/P (128)', 4, 2500, '130.00'),
('PC_020414', 'PCT_000002', 'AP_128', 'A/P (128)', 4, 3000, '123.00'),
('PC_020415', 'PCT_000002', 'AP_128', 'A/P (128)', 4, 5000, '114.00'),
('PC_020416', 'PCT_000002', 'AP_128', 'A/P (128)', 4, 10000, '105.00'),
('PC_020501', 'PCT_000002', 'AP_148', 'A/P (148)', 1, 500, '154.00'),
('PC_020502', 'PCT_000002', 'AP_148', 'A/P (148)', 1, 1000, '110.00'),
('PC_020503', 'PCT_000002', 'AP_148', 'A/P (148)', 1, 1500, '100.00'),
('PC_020504', 'PCT_000002', 'AP_148', 'A/P (148)', 1, 2000, '94.00'),
('PC_020505', 'PCT_000002', 'AP_148', 'A/P (148)', 1, 2500, '91.00'),
('PC_020506', 'PCT_000002', 'AP_148', 'A/P (148)', 1, 3000, '89.00'),
('PC_020507', 'PCT_000002', 'AP_148', 'A/P (148)', 1, 5000, '86.00'),
('PC_020508', 'PCT_000002', 'AP_148', 'A/P (148)', 1, 10000, '83.00'),
('PC_020509', 'PCT_000002', 'AP_148', 'A/P (148)', 4, 500, '295.00'),
('PC_020510', 'PCT_000002', 'AP_148', 'A/P (148)', 4, 1000, '182.00'),
('PC_020511', 'PCT_000002', 'AP_148', 'A/P (148)', 4, 1500, '162.00'),
('PC_020512', 'PCT_000002', 'AP_148', 'A/P (148)', 4, 2000, '145.00'),
('PC_020513', 'PCT_000002', 'AP_148', 'A/P (148)', 4, 2500, '136.00'),
('PC_020514', 'PCT_000002', 'AP_148', 'A/P (148)', 4, 3000, '129.00'),
('PC_020515', 'PCT_000002', 'AP_148', 'A/P (148)', 4, 5000, '120.00'),
('PC_020516', 'PCT_000002', 'AP_148', 'A/P (148)', 4, 10000, '112.00'),
('PC_020601', 'PCT_000002', 'AC_210', 'A/C (210)', 1, 500, '210.00'),
('PC_020602', 'PCT_000002', 'AC_210', 'A/C (210)', 1, 1000, '158.00'),
('PC_020603', 'PCT_000002', 'AC_210', 'A/C (210)', 1, 1500, '145.00'),
('PC_020604', 'PCT_000002', 'AC_210', 'A/C (210)', 1, 2000, '136.00'),
('PC_020605', 'PCT_000002', 'AC_210', 'A/C (210)', 1, 2500, '132.00'),
('PC_020606', 'PCT_000002', 'AC_210', 'A/C (210)', 1, 3000, '130.00'),
('PC_020607', 'PCT_000002', 'AC_210', 'A/C (210)', 1, 5000, '127.00'),
('PC_020608', 'PCT_000002', 'AC_210', 'A/C (210)', 1, 10000, '123.00'),
('PC_020609', 'PCT_000002', 'AC_210', 'A/C (210)', 4, 500, '350.00'),
('PC_020610', 'PCT_000002', 'AC_210', 'A/C (210)', 4, 1000, '228.00'),
('PC_020611', 'PCT_000002', 'AC_210', 'A/C (210)', 4, 1500, '206.00'),
('PC_020612', 'PCT_000002', 'AC_210', 'A/C (210)', 4, 2000, '186.00'),
('PC_020613', 'PCT_000002', 'AC_210', 'A/C (210)', 4, 2500, '178.00'),
('PC_020614', 'PCT_000002', 'AC_210', 'A/C (210)', 4, 3000, '170.00'),
('PC_020615', 'PCT_000002', 'AC_210', 'A/C (210)', 4, 5000, '161.00'),
('PC_020616', 'PCT_000002', 'AC_210', 'A/C (210)', 4, 10000, '152.00'),
('PC_020701', 'PCT_000002', 'AC_250', 'A/C (250)', 1, 500, '250.00'),
('PC_020702', 'PCT_000002', 'AC_250', 'A/C (250)', 1, 1000, '194.00'),
('PC_020703', 'PCT_000002', 'AC_250', 'A/C (250)', 1, 1500, '179.00'),
('PC_020704', 'PCT_000002', 'AC_250', 'A/C (250)', 1, 2000, '170.00'),
('PC_020705', 'PCT_000002', 'AC_250', 'A/C (250)', 1, 2500, '165.00'),
('PC_020706', 'PCT_000002', 'AC_250', 'A/C (250)', 1, 3000, '162.00'),
('PC_020707', 'PCT_000002', 'AC_250', 'A/C (250)', 1, 5000, '158.00'),
('PC_020708', 'PCT_000002', 'AC_250', 'A/C (250)', 1, 10000, '153.00'),
('PC_020709', 'PCT_000002', 'AC_250', 'A/C (250)', 4, 500, '390.00'),
('PC_020710', 'PCT_000002', 'AC_250', 'A/C (250)', 4, 1000, '264.00'),
('PC_020711', 'PCT_000002', 'AC_250', 'A/C (250)', 4, 1500, '240.00'),
('PC_020712', 'PCT_000002', 'AC_250', 'A/C (250)', 4, 2000, '220.00'),
('PC_020713', 'PCT_000002', 'AC_250', 'A/C (250)', 4, 2500, '210.00'),
('PC_020714', 'PCT_000002', 'AC_250', 'A/C (250)', 4, 3000, '202.00'),
('PC_020715', 'PCT_000002', 'AC_250', 'A/C (250)', 4, 5000, '192.00'),
('PC_020716', 'PCT_000002', 'AC_250', 'A/C (250)', 4, 10000, '182.00'),
('PC_020801', 'PCT_000002', 'AC_300', 'A/C (300)', 1, 500, '292.00'),
('PC_020802', 'PCT_000002', 'AC_300', 'A/C (300)', 1, 1000, '230.00'),
('PC_020803', 'PCT_000002', 'AC_300', 'A/C (300)', 1, 1500, '213.00'),
('PC_020804', 'PCT_000002', 'AC_300', 'A/C (300)', 1, 2000, '203.00'),
('PC_020805', 'PCT_000002', 'AC_300', 'A/C (300)', 1, 2500, '198.00'),
('PC_020806', 'PCT_000002', 'AC_300', 'A/C (300)', 1, 3000, '195.00'),
('PC_020807', 'PCT_000002', 'AC_300', 'A/C (300)', 1, 5000, '189.00'),
('PC_020808', 'PCT_000002', 'AC_300', 'A/C (300)', 1, 10000, '184.00'),
('PC_020809', 'PCT_000002', 'AC_300', 'A/C (300)', 4, 500, '432.00'),
('PC_020810', 'PCT_000002', 'AC_300', 'A/C (300)', 4, 1000, '300.00'),
('PC_020811', 'PCT_000002', 'AC_300', 'A/C (300)', 4, 1500, '274.00'),
('PC_020812', 'PCT_000002', 'AC_300', 'A/C (300)', 4, 2000, '253.00'),
('PC_020813', 'PCT_000002', 'AC_300', 'A/C (300)', 4, 2500, '243.00'),
('PC_020814', 'PCT_000002', 'AC_300', 'A/C (300)', 4, 3000, '235.00'),
('PC_020815', 'PCT_000002', 'AC_300', 'A/C (300)', 4, 5000, '223.00'),
('PC_020816', 'PCT_000002', 'AC_300', 'A/C (300)', 4, 10000, '213.00');

-- --------------------------------------------------------

--
-- Table structure for table `postercalender_frames`
--

CREATE TABLE IF NOT EXISTS `postercalender_frames` (
  `id` int(11) NOT NULL,
  `type_id` varchar(30) NOT NULL,
  `frame_type` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postercalender_frames`
--

INSERT INTO `postercalender_frames` (`id`, `type_id`, `frame_type`, `price`) VALUES
(1, 'PCT_000001', 'steel plate (single)', '30.00'),
(2, 'PCT_000001', 'steel plate (double)', '50.00'),
(3, 'PCT_000001', 'plastic', '60.00'),
(4, 'PCT_000001', 'plastic + metal', '200.00'),
(5, 'PCT_000002', 'steel plate (single)', '40.00'),
(6, 'PCT_000002', 'steel plate (double)', '70.00'),
(7, 'PCT_000002', 'plastic', '80.00'),
(8, 'PCT_000002', 'plastic + metal', '270.00');

-- --------------------------------------------------------

--
-- Table structure for table `postercalender_types`
--

CREATE TABLE IF NOT EXISTS `postercalender_types` (
  `type_id` varchar(30) NOT NULL,
  `card_type_display` varchar(255) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postercalender_types`
--

INSERT INTO `postercalender_types` (`type_id`, `card_type_display`, `quality`, `size`) VALUES
('PCT_000001', 'poster calender 1', '1 side printing', '15" x 20"'),
('PCT_000002', 'poster calender 2', '1 side printing', '20" x 30"');

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
  `timezone_id` int(11) unsigned NOT NULL DEFAULT '54',
  `postcode` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`profile_id`, `user_id`, `firstname`, `lastname`, `address1`, `address2`, `city`, `country`, `timezone_id`, `postcode`, `phoneno`, `mobileno`) VALUES
(18, 18, 'Ko Zin', 'Thet', 'Yangon, Myanmar', '', 'Yangon', 'Myanmar', 54, '2060', '+959420283533', 'defg'),
(24, 19, 'wai', 'phyo', 'Yangon, Myanmar', '', 'Yangon', 'Myanmar', 54, '2060', '+959420283533', 'defg');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`) VALUES
(18, 'kozinthet@gmail.com', 'kozin', 'customer'),
(19, 'wpst006@gmail.com', 'admin', 'admin');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `visitingcards_orderdetails`
--

INSERT INTO `visitingcards_orderdetails` (`id`, `order_id`, `card_id`, `quantity`, `price`, `total`) VALUES
(1, 5, 'VC-01001', 600, '13.00', '7800.00'),
(2, 6, 'VC-01001', 600, '0.00', '7800.00'),
(3, 7, 'VC-01001', 600, '13.00', '7800.00'),
(4, 8, 'VC-01001', 600, '13.00', '7800.00'),
(5, 10, 'VC-01001', 600, '13.00', '7800.00'),
(6, 14, 'VC-01001', 600, '13.00', '7800.00'),
(7, 15, 'VC-01001', 600, '13.00', '7800.00'),
(8, 16, 'VC-01001', 600, '13.00', '7800.00'),
(9, 17, 'VC-01001', 600, '13.00', '7800.00'),
(10, 18, 'VC-01001', 600, '13.00', '7800.00'),
(11, 19, 'VC-01001', 600, '13.00', '7800.00'),
(12, 20, 'VC-01001', 600, '13.00', '7800.00'),
(13, 21, 'VC-01001', 600, '13.00', '7800.00'),
(14, 21, 'VC-01005', 600, '23.00', '13800.00'),
(15, 22, 'VC-01001', 600, '13.00', '7800.00'),
(16, 23, 'VC-06001', 600, '26.00', '15600.00');

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
('VO_080903', 'VOT_000008', 'AL_CS_BW', 'A/L + C/S + B/White', 300, '540.00'),
('VO_090101', 'VOT_000009', 'WF_AL_CS', 'W/F + A/L + C/S', 60, '650.00'),
('VO_090102', 'VOT_000009', 'WF_AL_CS', 'W/F + A/L + C/S', 120, '625.00'),
('VO_090103', 'VOT_000009', 'WF_AL_CS', 'W/F + A/L + C/S', 180, '600.00'),
('VO_090104', 'VOT_000009', 'WF_AL_CS', 'W/F + A/L + C/S', 240, '575.00'),
('VO_090201', 'VOT_000009', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 60, '615.00'),
('VO_090202', 'VOT_000009', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 120, '590.00'),
('VO_090203', 'VOT_000009', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 180, '565.00'),
('VO_090204', 'VOT_000009', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 240, '540.00'),
('VO_090301', 'VOT_000009', 'WF_AL_BW', 'W/F + A/L + B/White', 60, '600.00'),
('VO_090302', 'VOT_000009', 'WF_AL_BW', 'W/F + A/L + B/White', 120, '575.00'),
('VO_090303', 'VOT_000009', 'WF_AL_BW', 'W/F + A/L + B/White', 180, '550.00'),
('VO_090304', 'VOT_000009', 'WF_AL_BW', 'W/F + A/L + B/White', 240, '525.00'),
('VO_090401', 'VOT_000009', 'AL_AL_CS', 'A/L + A/L + CS', 60, '625.00'),
('VO_090402', 'VOT_000009', 'AL_AL_CS', 'A/L + A/L + CS', 120, '600.00'),
('VO_090403', 'VOT_000009', 'AL_AL_CS', 'A/L + A/L + CS', 180, '575.00'),
('VO_090404', 'VOT_000009', 'AL_AL_CS', 'A/L + A/L + CS', 240, '550.00'),
('VO_090501', 'VOT_000009', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 60, '590.00'),
('VO_090502', 'VOT_000009', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 120, '565.00'),
('VO_090503', 'VOT_000009', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 180, '540.00'),
('VO_090504', 'VOT_000009', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 240, '515.00'),
('VO_090601', 'VOT_000009', 'AL_AL_BW', 'A/L + A/L + B/White', 60, '575.00'),
('VO_090602', 'VOT_000009', 'AL_AL_BW', 'A/L + A/L + B/White', 120, '550.00'),
('VO_090603', 'VOT_000009', 'AL_AL_BW', 'A/L + A/L + B/White', 180, '525.00'),
('VO_090604', 'VOT_000009', 'AL_AL_BW', 'A/L + A/L + B/White', 240, '500.00'),
('VO_090701', 'VOT_000009', 'AL_CS_CS', 'A/L + C/S + C/S', 60, '610.00'),
('VO_090702', 'VOT_000009', 'AL_CS_CS', 'A/L + C/S + C/S', 120, '585.00'),
('VO_090703', 'VOT_000009', 'AL_CS_CS', 'A/L + C/S + C/S', 180, '560.00'),
('VO_090704', 'VOT_000009', 'AL_CS_CS', 'A/L + C/S + C/S', 240, '535.00'),
('VO_090801', 'VOT_000009', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 60, '575.00'),
('VO_090802', 'VOT_000009', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 120, '550.00'),
('VO_090803', 'VOT_000009', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 180, '525.00'),
('VO_090804', 'VOT_000009', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 240, '500.00'),
('VO_090901', 'VOT_000009', 'AL_CS_BW', 'A/L + C/S + B/White', 60, '565.00'),
('VO_090902', 'VOT_000009', 'AL_CS_BW', 'A/L + C/S + B/White', 120, '540.00'),
('VO_090903', 'VOT_000009', 'AL_CS_BW', 'A/L + C/S + B/White', 180, '515.00'),
('VO_090904', 'VOT_000009', 'AL_CS_BW', 'A/L + C/S + B/White', 240, '490.00'),
('VO_100101', 'VOT_000010', 'WF_AL_CS', 'W/F + A/L + C/S', 60, '750.00'),
('VO_100102', 'VOT_000010', 'WF_AL_CS', 'W/F + A/L + C/S', 120, '725.00'),
('VO_100103', 'VOT_000010', 'WF_AL_CS', 'W/F + A/L + C/S', 180, '700.00'),
('VO_100104', 'VOT_000010', 'WF_AL_CS', 'W/F + A/L + C/S', 240, '675.00'),
('VO_100201', 'VOT_000010', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 60, '725.00'),
('VO_100202', 'VOT_000010', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 120, '700.00'),
('VO_100203', 'VOT_000010', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 180, '675.00'),
('VO_100204', 'VOT_000010', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 240, '650.00'),
('VO_100301', 'VOT_000010', 'WF_AL_BW', 'W/F + A/L + B/White', 60, '700.00'),
('VO_100302', 'VOT_000010', 'WF_AL_BW', 'W/F + A/L + B/White', 120, '675.00'),
('VO_100303', 'VOT_000010', 'WF_AL_BW', 'W/F + A/L + B/White', 180, '650.00'),
('VO_100304', 'VOT_000010', 'WF_AL_BW', 'W/F + A/L + B/White', 240, '625.00'),
('VO_100401', 'VOT_000010', 'AL_AL_CS', 'A/L + A/L + CS', 60, '730.00'),
('VO_100402', 'VOT_000010', 'AL_AL_CS', 'A/L + A/L + CS', 120, '705.00'),
('VO_100403', 'VOT_000010', 'AL_AL_CS', 'A/L + A/L + CS', 180, '680.00'),
('VO_100404', 'VOT_000010', 'AL_AL_CS', 'A/L + A/L + CS', 240, '655.00'),
('VO_100501', 'VOT_000010', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 60, '705.00'),
('VO_100502', 'VOT_000010', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 120, '680.00'),
('VO_100503', 'VOT_000010', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 180, '655.00'),
('VO_100504', 'VOT_000010', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 240, '630.00'),
('VO_100601', 'VOT_000010', 'AL_AL_BW', 'A/L + A/L + B/White', 60, '680.00'),
('VO_100602', 'VOT_000010', 'AL_AL_BW', 'A/L + A/L + B/White', 120, '655.00'),
('VO_100603', 'VOT_000010', 'AL_AL_BW', 'A/L + A/L + B/White', 180, '630.00'),
('VO_100604', 'VOT_000010', 'AL_AL_BW', 'A/L + A/L + B/White', 240, '605.00'),
('VO_100701', 'VOT_000010', 'AL_CS_CS', 'A/L + C/S + C/S', 60, '660.00'),
('VO_100702', 'VOT_000010', 'AL_CS_CS', 'A/L + C/S + C/S', 120, '635.00'),
('VO_100703', 'VOT_000010', 'AL_CS_CS', 'A/L + C/S + C/S', 180, '610.00'),
('VO_100704', 'VOT_000010', 'AL_CS_CS', 'A/L + C/S + C/S', 240, '585.00'),
('VO_100801', 'VOT_000010', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 60, '635.00'),
('VO_100802', 'VOT_000010', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 120, '610.00'),
('VO_100803', 'VOT_000010', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 180, '585.00'),
('VO_100804', 'VOT_000010', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 240, '560.00'),
('VO_100901', 'VOT_000010', 'AL_CS_BW', 'A/L + C/S + B/White', 60, '610.00'),
('VO_100902', 'VOT_000010', 'AL_CS_BW', 'A/L + C/S + B/White', 120, '585.00'),
('VO_100903', 'VOT_000010', 'AL_CS_BW', 'A/L + C/S + B/White', 180, '560.00'),
('VO_100904', 'VOT_000010', 'AL_CS_BW', 'A/L + C/S + B/White', 240, '535.00'),
('VO_110101', 'VOT_000011', 'WF_AL_CS', 'W/F + A/L + C/S', 60, '1000.00'),
('VO_110102', 'VOT_000011', 'WF_AL_CS', 'W/F + A/L + C/S', 120, '950.00'),
('VO_110103', 'VOT_000011', 'WF_AL_CS', 'W/F + A/L + C/S', 200, '900.00'),
('VO_110201', 'VOT_000011', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 60, '950.00'),
('VO_110202', 'VOT_000011', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 120, '900.00'),
('VO_110203', 'VOT_000011', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 200, '850.00'),
('VO_110301', 'VOT_000011', 'WF_AL_BW', 'W/F + A/L + B/White', 60, '925.00'),
('VO_110302', 'VOT_000011', 'WF_AL_BW', 'W/F + A/L + B/White', 120, '875.00'),
('VO_110303', 'VOT_000011', 'WF_AL_BW', 'W/F + A/L + B/White', 200, '825.00'),
('VO_110401', 'VOT_000011', 'AL_AL_CS', 'A/L + A/L + CS', 60, '950.00'),
('VO_110402', 'VOT_000011', 'AL_AL_CS', 'A/L + A/L + CS', 120, '900.00'),
('VO_110403', 'VOT_000011', 'AL_AL_CS', 'A/L + A/L + CS', 200, '850.00'),
('VO_110501', 'VOT_000011', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 60, '900.00'),
('VO_110502', 'VOT_000011', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 120, '850.00'),
('VO_110503', 'VOT_000011', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 200, '800.00'),
('VO_110601', 'VOT_000011', 'AL_AL_BW', 'A/L + A/L + B/White', 60, '850.00'),
('VO_110602', 'VOT_000011', 'AL_AL_BW', 'A/L + A/L + B/White', 120, '800.00'),
('VO_110603', 'VOT_000011', 'AL_AL_BW', 'A/L + A/L + B/White', 200, '750.00'),
('VO_110701', 'VOT_000011', 'AL_CS_CS', 'A/L + C/S + C/S', 60, '925.00'),
('VO_110702', 'VOT_000011', 'AL_CS_CS', 'A/L + C/S + C/S', 120, '875.00'),
('VO_110703', 'VOT_000011', 'AL_CS_CS', 'A/L + C/S + C/S', 200, '825.00'),
('VO_110801', 'VOT_000011', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 60, '875.00'),
('VO_110802', 'VOT_000011', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 120, '825.00'),
('VO_110803', 'VOT_000011', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 200, '775.00'),
('VO_110901', 'VOT_000011', 'AL_CS_BW', 'A/L + C/S + B/White', 60, '825.00'),
('VO_110902', 'VOT_000011', 'AL_CS_BW', 'A/L + C/S + B/White', 120, '775.00'),
('VO_110903', 'VOT_000011', 'AL_CS_BW', 'A/L + C/S + B/White', 200, '725.00'),
('VO_120101', 'VOT_000012', 'WF_AL_CS', 'W/F + A/L + C/S', 60, '1100.00'),
('VO_120102', 'VOT_000012', 'WF_AL_CS', 'W/F + A/L + C/S', 120, '1050.00'),
('VO_120103', 'VOT_000012', 'WF_AL_CS', 'W/F + A/L + C/S', 200, '1000.00'),
('VO_120201', 'VOT_000012', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 60, '1050.00'),
('VO_120202', 'VOT_000012', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 120, '1000.00'),
('VO_120203', 'VOT_000012', 'WF_AL_WF_BW', 'W/F + A/L + W/F - B/White', 200, '950.00'),
('VO_120301', 'VOT_000012', 'WF_AL_BW', 'W/F + A/L + B/White', 60, '1025.00'),
('VO_120302', 'VOT_000012', 'WF_AL_BW', 'W/F + A/L + B/White', 120, '975.00'),
('VO_120303', 'VOT_000012', 'WF_AL_BW', 'W/F + A/L + B/White', 200, '925.00'),
('VO_120401', 'VOT_000012', 'AL_AL_CS', 'A/L + A/L + CS', 60, '1050.00'),
('VO_120402', 'VOT_000012', 'AL_AL_CS', 'A/L + A/L + CS', 120, '1000.00'),
('VO_120403', 'VOT_000012', 'AL_AL_CS', 'A/L + A/L + CS', 200, '950.00'),
('VO_120501', 'VOT_000012', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 60, '1000.00'),
('VO_120502', 'VOT_000012', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 120, '950.00'),
('VO_120503', 'VOT_000012', 'AL_AL_WF_BW', 'A/L + A/L + W/F.B/White', 200, '900.00'),
('VO_120601', 'VOT_000012', 'AL_AL_BW', 'A/L + A/L + B/White', 60, '950.00'),
('VO_120602', 'VOT_000012', 'AL_AL_BW', 'A/L + A/L + B/White', 120, '900.00'),
('VO_120603', 'VOT_000012', 'AL_AL_BW', 'A/L + A/L + B/White', 200, '850.00'),
('VO_120701', 'VOT_000012', 'AL_CS_CS', 'A/L + C/S + C/S', 60, '1025.00'),
('VO_120702', 'VOT_000012', 'AL_CS_CS', 'A/L + C/S + C/S', 120, '975.00'),
('VO_120703', 'VOT_000012', 'AL_CS_CS', 'A/L + C/S + C/S', 200, '925.00'),
('VO_120801', 'VOT_000012', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 60, '975.00'),
('VO_120802', 'VOT_000012', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 120, '925.00'),
('VO_120803', 'VOT_000012', 'AL_CS_WF_BW', 'A/L + C/S + W/F.B/White', 200, '875.00'),
('VO_120901', 'VOT_000012', 'AL_CS_BW', 'A/L + C/S + B/White', 60, '925.00'),
('VO_120902', 'VOT_000012', 'AL_CS_BW', 'A/L + C/S + B/White', 120, '875.00'),
('VO_120903', 'VOT_000012', 'AL_CS_BW', 'A/L + C/S + B/White', 200, '850.00');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_types`
--

CREATE TABLE IF NOT EXISTS `voucher_types` (
  `type_id` varchar(30) NOT NULL,
  `card_type_display` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `type_quantity` varchar(255) NOT NULL,
  `printing` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voucher_types`
--

INSERT INTO `voucher_types` (`type_id`, `card_type_display`, `size`, `type_quantity`, `printing`) VALUES
('VOT_000001', 'voucher type 01', '1/4 x Full (OR) 1/4 x A.4', '100 set (200 pages)', '1 Col : (1 page printing) + No (2 pages)'),
('VOT_000002', 'voucher type 02', '1/4 x (10" x 15")', '100 set (200 pages)', '1 Col : (1 page printing) + No (2 pages)'),
('VOT_000003', 'voucher type 03', '1/3 x Full', '100 set (200 pages)', '1 Col : (1 page printing) + No (2 pages)'),
('VOT_000004', 'voucher type 04', '1/3 x (10" x 15")', '100 set (200 pages)', '1 Col : (1 page printing) + No (2 pages)'),
('VOT_000005', 'voucher type 05', '1/2 x Full (OR) 1/2 x A.4', '100 set (200 pages)', '1 Col : (1 page printing) + No (2 pages)'),
('VOT_000006', 'voucher type 06', '1/2 x (10" x 15")', '100 set (200 pages)', '1 Col : (1 page printing) + No (2 pages)'),
('VOT_000007', 'voucher type 07', '1/4 x Full (OR) 1/4 x A.4', '50 set (150 pages)', '1 Col : (3 pages printing) + No (3 pages)'),
('VOT_000008', 'voucher type 08', '1/4 x (10" x 15")', '50 set (150 pages)', '1 Col : (3 pages printing) + No (3 pages)'),
('VOT_000009', 'voucher type 09', '1/3 x Full', '50 set (150 pages)', '1 Col : (3 pages printing) + No (3 pages)'),
('VOT_000010', 'voucher type 10', '1/3 x (10" x 15")', '50 set (150 pages)', '1 Col : (3 pages printing) + No (3 pages)'),
('VOT_000011', 'voucher type 11', '1/2 x Full (OR) 1/2 x A.4', '50 set (150 pages)', '1 Col : (3 pages printing) + No (3 pages)'),
('VOT_000012', 'voucher type 12', '1/2 x (10" x 15")', '50 set (150 pages)', '1 Col : (3 pages printing) + No (3 pages)');

-- --------------------------------------------------------

--
-- Structure for view `orders_view`
--
DROP TABLE IF EXISTS `orders_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orders_view` AS select `orders`.`order_id` AS `order_id`,`orders`.`order_ref_no` AS `order_ref_no`,`orders`.`order_date` AS `order_date`,`orders`.`user_id` AS `user_id`,`users`.`username` AS `username`,`profiles`.`firstname` AS `firstname`,`profiles`.`lastname` AS `lastname`,`orders`.`total` AS `total`,`orders`.`payment_status` AS `payment_status`,`orders`.`payment_status_text` AS `payment_status_text` from ((`orders` join `users` on((`orders`.`user_id` = `users`.`user_id`))) join `profiles` on((`orders`.`user_id` = `profiles`.`user_id`))) order by `orders`.`order_date`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
