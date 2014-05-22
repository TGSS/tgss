/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : tgss

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2014-05-21 21:47:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `billing_addresses`
-- ----------------------------
DROP TABLE IF EXISTS `billing_addresses`;
CREATE TABLE `billing_addresses` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of billing_addresses
-- ----------------------------
INSERT INTO `billing_addresses` VALUES ('1', '1', 'a@ga.d', 'a', 'a', 'a', 'a', 'a', 'Afghanistan', 'a', 'a', 'a');

-- ----------------------------
-- Table structure for `countries`
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `country_code` char(2) NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('AF', 'Afghanistan');
INSERT INTO `countries` VALUES ('AX', 'Aland Islands');
INSERT INTO `countries` VALUES ('AL', 'Albania');
INSERT INTO `countries` VALUES ('DZ', 'Algeria');
INSERT INTO `countries` VALUES ('AS', 'American Samoa');
INSERT INTO `countries` VALUES ('AD', 'Andorra');
INSERT INTO `countries` VALUES ('AO', 'Angola');
INSERT INTO `countries` VALUES ('AI', 'Anguilla');
INSERT INTO `countries` VALUES ('AG', 'Antigua and Barbuda');
INSERT INTO `countries` VALUES ('AR', 'Argentina');
INSERT INTO `countries` VALUES ('AM', 'Armenia');
INSERT INTO `countries` VALUES ('AW', 'Aruba');
INSERT INTO `countries` VALUES ('AU', 'Australia');
INSERT INTO `countries` VALUES ('AT', 'Austria');
INSERT INTO `countries` VALUES ('AZ', 'Azerbaijan');
INSERT INTO `countries` VALUES ('BS', 'Bahamas');
INSERT INTO `countries` VALUES ('BH', 'Bahrain');
INSERT INTO `countries` VALUES ('BD', 'Bangladesh');
INSERT INTO `countries` VALUES ('BB', 'Barbados');
INSERT INTO `countries` VALUES ('BY', 'Belarus');
INSERT INTO `countries` VALUES ('BE', 'Belgium');
INSERT INTO `countries` VALUES ('BZ', 'Belize');
INSERT INTO `countries` VALUES ('BJ', 'Benin');
INSERT INTO `countries` VALUES ('BM', 'Bermuda');
INSERT INTO `countries` VALUES ('BT', 'Bhutan');
INSERT INTO `countries` VALUES ('BO', 'Bolivia');
INSERT INTO `countries` VALUES ('BA', 'Bosnia and Herzegovina');
INSERT INTO `countries` VALUES ('BW', 'Botswana');
INSERT INTO `countries` VALUES ('BR', 'Brazil');
INSERT INTO `countries` VALUES ('VG', 'British Virgin Islands');
INSERT INTO `countries` VALUES ('BN', 'Brunei');
INSERT INTO `countries` VALUES ('BG', 'Bulgaria');
INSERT INTO `countries` VALUES ('BF', 'Burkina Faso');
INSERT INTO `countries` VALUES ('BI', 'Burundi');
INSERT INTO `countries` VALUES ('KH', 'Cambodia');
INSERT INTO `countries` VALUES ('CM', 'Cameroon');
INSERT INTO `countries` VALUES ('CA', 'Canada');
INSERT INTO `countries` VALUES ('CV', 'Cape Verde');
INSERT INTO `countries` VALUES ('KY', 'Cayman Islands');
INSERT INTO `countries` VALUES ('CF', 'Central African Republic');
INSERT INTO `countries` VALUES ('TD', 'Chad');
INSERT INTO `countries` VALUES ('CL', 'Chile');
INSERT INTO `countries` VALUES ('CN', 'China');
INSERT INTO `countries` VALUES ('CX', 'Christmas Island');
INSERT INTO `countries` VALUES ('CC', 'Cocos (Keeling) Islands');
INSERT INTO `countries` VALUES ('CO', 'Colombia');
INSERT INTO `countries` VALUES ('KM', 'Comoros');
INSERT INTO `countries` VALUES ('CG', 'Congo (Brazzaville)');
INSERT INTO `countries` VALUES ('CD', 'Congo (Kinshasa)');
INSERT INTO `countries` VALUES ('CK', 'Cook Islands');
INSERT INTO `countries` VALUES ('CR', 'Costa Rica');
INSERT INTO `countries` VALUES ('HR', 'Croatia');
INSERT INTO `countries` VALUES ('CU', 'Cuba');
INSERT INTO `countries` VALUES ('CW', 'Curaçao');
INSERT INTO `countries` VALUES ('CY', 'Cyprus');
INSERT INTO `countries` VALUES ('CZ', 'Czech Republic');
INSERT INTO `countries` VALUES ('DK', 'Denmark');
INSERT INTO `countries` VALUES ('DJ', 'Djibouti');
INSERT INTO `countries` VALUES ('DM', 'Dominica');
INSERT INTO `countries` VALUES ('DO', 'Dominican Republic');
INSERT INTO `countries` VALUES ('EC', 'Ecuador');
INSERT INTO `countries` VALUES ('EG', 'Egypt');
INSERT INTO `countries` VALUES ('SV', 'El Salvador');
INSERT INTO `countries` VALUES ('GQ', 'Equatorial Guinea');
INSERT INTO `countries` VALUES ('ER', 'Eritrea');
INSERT INTO `countries` VALUES ('EE', 'Estonia');
INSERT INTO `countries` VALUES ('ET', 'Ethiopia');
INSERT INTO `countries` VALUES ('FK', 'Falkland Islands');
INSERT INTO `countries` VALUES ('FO', 'Faroe Islands');
INSERT INTO `countries` VALUES ('FJ', 'Fiji');
INSERT INTO `countries` VALUES ('FI', 'Finland');
INSERT INTO `countries` VALUES ('FR', 'France');
INSERT INTO `countries` VALUES ('GF', 'French Guiana');
INSERT INTO `countries` VALUES ('PF', 'French Polynesia');
INSERT INTO `countries` VALUES ('TF', 'French Southern Territories');
INSERT INTO `countries` VALUES ('GA', 'Gabon');
INSERT INTO `countries` VALUES ('GM', 'Gambia');
INSERT INTO `countries` VALUES ('GE', 'Georgia');
INSERT INTO `countries` VALUES ('DE', 'Germany');
INSERT INTO `countries` VALUES ('GH', 'Ghana');
INSERT INTO `countries` VALUES ('GI', 'Gibraltar');
INSERT INTO `countries` VALUES ('GR', 'Greece');
INSERT INTO `countries` VALUES ('GL', 'Greenland');
INSERT INTO `countries` VALUES ('GD', 'Grenada');
INSERT INTO `countries` VALUES ('GP', 'Guadeloupe');
INSERT INTO `countries` VALUES ('GU', 'Guam');
INSERT INTO `countries` VALUES ('GT', 'Guatemala');
INSERT INTO `countries` VALUES ('GG', 'Guernsey');
INSERT INTO `countries` VALUES ('GN', 'Guinea');
INSERT INTO `countries` VALUES ('GW', 'Guinea-Bissau');
INSERT INTO `countries` VALUES ('GY', 'Guyana');
INSERT INTO `countries` VALUES ('HT', 'Haiti');
INSERT INTO `countries` VALUES ('HN', 'Honduras');
INSERT INTO `countries` VALUES ('HK', 'Hong Kong S.A.R., China');
INSERT INTO `countries` VALUES ('HU', 'Hungary');
INSERT INTO `countries` VALUES ('IS', 'Iceland');
INSERT INTO `countries` VALUES ('IN', 'India');
INSERT INTO `countries` VALUES ('ID', 'Indonesia');
INSERT INTO `countries` VALUES ('IR', 'Iran');
INSERT INTO `countries` VALUES ('IQ', 'Iraq');
INSERT INTO `countries` VALUES ('IE', 'Ireland');
INSERT INTO `countries` VALUES ('IM', 'Isle of Man');
INSERT INTO `countries` VALUES ('IL', 'Israel');
INSERT INTO `countries` VALUES ('IT', 'Italy');
INSERT INTO `countries` VALUES ('CI', 'Ivory Coast');
INSERT INTO `countries` VALUES ('JM', 'Jamaica');
INSERT INTO `countries` VALUES ('JP', 'Japan');
INSERT INTO `countries` VALUES ('JE', 'Jersey');
INSERT INTO `countries` VALUES ('JO', 'Jordan');
INSERT INTO `countries` VALUES ('KZ', 'Kazakhstan');
INSERT INTO `countries` VALUES ('KE', 'Kenya');
INSERT INTO `countries` VALUES ('KI', 'Kiribati');
INSERT INTO `countries` VALUES ('KW', 'Kuwait');
INSERT INTO `countries` VALUES ('KG', 'Kyrgyzstan');
INSERT INTO `countries` VALUES ('LA', 'Laos');
INSERT INTO `countries` VALUES ('LV', 'Latvia');
INSERT INTO `countries` VALUES ('LB', 'Lebanon');
INSERT INTO `countries` VALUES ('LS', 'Lesotho');
INSERT INTO `countries` VALUES ('LR', 'Liberia');
INSERT INTO `countries` VALUES ('LY', 'Libya');
INSERT INTO `countries` VALUES ('LI', 'Liechtenstein');
INSERT INTO `countries` VALUES ('LT', 'Lithuania');
INSERT INTO `countries` VALUES ('LU', 'Luxembourg');
INSERT INTO `countries` VALUES ('MO', 'Macao S.A.R., China');
INSERT INTO `countries` VALUES ('MK', 'Macedonia');
INSERT INTO `countries` VALUES ('MG', 'Madagascar');
INSERT INTO `countries` VALUES ('MW', 'Malawi');
INSERT INTO `countries` VALUES ('MY', 'Malaysia');
INSERT INTO `countries` VALUES ('MV', 'Maldives');
INSERT INTO `countries` VALUES ('ML', 'Mali');
INSERT INTO `countries` VALUES ('MT', 'Malta');
INSERT INTO `countries` VALUES ('MH', 'Marshall Islands');
INSERT INTO `countries` VALUES ('MQ', 'Martinique');
INSERT INTO `countries` VALUES ('MR', 'Mauritania');
INSERT INTO `countries` VALUES ('MU', 'Mauritius');
INSERT INTO `countries` VALUES ('YT', 'Mayotte');
INSERT INTO `countries` VALUES ('MX', 'Mexico');
INSERT INTO `countries` VALUES ('FM', 'Micronesia');
INSERT INTO `countries` VALUES ('MD', 'Moldova');
INSERT INTO `countries` VALUES ('MC', 'Monaco');
INSERT INTO `countries` VALUES ('MN', 'Mongolia');
INSERT INTO `countries` VALUES ('ME', 'Montenegro');
INSERT INTO `countries` VALUES ('MS', 'Montserrat');
INSERT INTO `countries` VALUES ('MA', 'Morocco');
INSERT INTO `countries` VALUES ('MZ', 'Mozambique');
INSERT INTO `countries` VALUES ('MM', 'Myanmar');
INSERT INTO `countries` VALUES ('NA', 'Namibia');
INSERT INTO `countries` VALUES ('NP', 'Nepal');
INSERT INTO `countries` VALUES ('NL', 'Netherlands');
INSERT INTO `countries` VALUES ('NC', 'New Caledonia');
INSERT INTO `countries` VALUES ('NZ', 'New Zealand');
INSERT INTO `countries` VALUES ('NI', 'Nicaragua');
INSERT INTO `countries` VALUES ('NE', 'Niger');
INSERT INTO `countries` VALUES ('NG', 'Nigeria');
INSERT INTO `countries` VALUES ('NU', 'Niue');
INSERT INTO `countries` VALUES ('NF', 'Norfolk Island');
INSERT INTO `countries` VALUES ('MP', 'Northern Mariana Islands');
INSERT INTO `countries` VALUES ('KP', 'North Korea');
INSERT INTO `countries` VALUES ('NO', 'Norway');
INSERT INTO `countries` VALUES ('OM', 'Oman');
INSERT INTO `countries` VALUES ('PK', 'Pakistan');
INSERT INTO `countries` VALUES ('PW', 'Palau');
INSERT INTO `countries` VALUES ('PS', 'Palestinian Territory');
INSERT INTO `countries` VALUES ('PA', 'Panama');
INSERT INTO `countries` VALUES ('PG', 'Papua New Guinea');
INSERT INTO `countries` VALUES ('PY', 'Paraguay');
INSERT INTO `countries` VALUES ('PE', 'Peru');
INSERT INTO `countries` VALUES ('PH', 'Philippines');
INSERT INTO `countries` VALUES ('PN', 'Pitcairn');
INSERT INTO `countries` VALUES ('PL', 'Poland');
INSERT INTO `countries` VALUES ('PT', 'Portugal');
INSERT INTO `countries` VALUES ('PR', 'Puerto Rico');
INSERT INTO `countries` VALUES ('QA', 'Qatar');
INSERT INTO `countries` VALUES ('RE', 'Reunion');
INSERT INTO `countries` VALUES ('RO', 'Romania');
INSERT INTO `countries` VALUES ('RU', 'Russia');
INSERT INTO `countries` VALUES ('RW', 'Rwanda');
INSERT INTO `countries` VALUES ('BL', 'Saint Barthélemy');
INSERT INTO `countries` VALUES ('SH', 'Saint Helena');
INSERT INTO `countries` VALUES ('KN', 'Saint Kitts and Nevis');
INSERT INTO `countries` VALUES ('LC', 'Saint Lucia');
INSERT INTO `countries` VALUES ('MF', 'Saint Martin (French part)');
INSERT INTO `countries` VALUES ('PM', 'Saint Pierre and Miquelon');
INSERT INTO `countries` VALUES ('VC', 'Saint Vincent and the Grenadines');
INSERT INTO `countries` VALUES ('WS', 'Samoa');
INSERT INTO `countries` VALUES ('SM', 'San Marino');
INSERT INTO `countries` VALUES ('ST', 'Sao Tome and Principe');
INSERT INTO `countries` VALUES ('SA', 'Saudi Arabia');
INSERT INTO `countries` VALUES ('SN', 'Senegal');
INSERT INTO `countries` VALUES ('RS', 'Serbia');
INSERT INTO `countries` VALUES ('SC', 'Seychelles');
INSERT INTO `countries` VALUES ('SL', 'Sierra Leone');
INSERT INTO `countries` VALUES ('SG', 'Singapore');
INSERT INTO `countries` VALUES ('SK', 'Slovakia');
INSERT INTO `countries` VALUES ('SI', 'Slovenia');
INSERT INTO `countries` VALUES ('SB', 'Solomon Islands');
INSERT INTO `countries` VALUES ('SO', 'Somalia');
INSERT INTO `countries` VALUES ('ZA', 'South Africa');
INSERT INTO `countries` VALUES ('GS', 'South Georgia and the South Sandwich Islands');
INSERT INTO `countries` VALUES ('KR', 'South Korea');
INSERT INTO `countries` VALUES ('ES', 'Spain');
INSERT INTO `countries` VALUES ('LK', 'Sri Lanka');
INSERT INTO `countries` VALUES ('SD', 'Sudan');
INSERT INTO `countries` VALUES ('SR', 'Suriname');
INSERT INTO `countries` VALUES ('SJ', 'Svalbard and Jan Mayen');
INSERT INTO `countries` VALUES ('SZ', 'Swaziland');
INSERT INTO `countries` VALUES ('SE', 'Sweden');
INSERT INTO `countries` VALUES ('CH', 'Switzerland');
INSERT INTO `countries` VALUES ('SY', 'Syria');
INSERT INTO `countries` VALUES ('TW', 'Taiwan');
INSERT INTO `countries` VALUES ('TJ', 'Tajikistan');
INSERT INTO `countries` VALUES ('TZ', 'Tanzania');
INSERT INTO `countries` VALUES ('TH', 'Thailand');
INSERT INTO `countries` VALUES ('TL', 'Timor-Leste');
INSERT INTO `countries` VALUES ('TG', 'Togo');
INSERT INTO `countries` VALUES ('TO', 'Tonga');
INSERT INTO `countries` VALUES ('TT', 'Trinidad and Tobago');
INSERT INTO `countries` VALUES ('TN', 'Tunisia');
INSERT INTO `countries` VALUES ('TR', 'Turkey');
INSERT INTO `countries` VALUES ('TM', 'Turkmenistan');
INSERT INTO `countries` VALUES ('TC', 'Turks and Caicos Islands');
INSERT INTO `countries` VALUES ('TV', 'Tuvalu');
INSERT INTO `countries` VALUES ('VI', 'U.S. Virgin Islands');
INSERT INTO `countries` VALUES ('UG', 'Uganda');
INSERT INTO `countries` VALUES ('UA', 'Ukraine');
INSERT INTO `countries` VALUES ('AE', 'United Arab Emirates');
INSERT INTO `countries` VALUES ('GB', 'United Kingdom');
INSERT INTO `countries` VALUES ('US', 'United States');
INSERT INTO `countries` VALUES ('UY', 'Uruguay');
INSERT INTO `countries` VALUES ('UZ', 'Uzbekistan');
INSERT INTO `countries` VALUES ('VU', 'Vanuatu');
INSERT INTO `countries` VALUES ('VA', 'Vatican');
INSERT INTO `countries` VALUES ('VE', 'Venezuela');
INSERT INTO `countries` VALUES ('VN', 'Vietnam');
INSERT INTO `countries` VALUES ('WF', 'Wallis and Futuna');
INSERT INTO `countries` VALUES ('EH', 'Western Sahara');
INSERT INTO `countries` VALUES ('YE', 'Yemen');
INSERT INTO `countries` VALUES ('ZM', 'Zambia');
INSERT INTO `countries` VALUES ('ZW', 'Zimbabwe');

-- ----------------------------
-- Table structure for `delivery_addresses`
-- ----------------------------
DROP TABLE IF EXISTS `delivery_addresses`;
CREATE TABLE `delivery_addresses` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of delivery_addresses
-- ----------------------------
INSERT INTO `delivery_addresses` VALUES ('1', '1', 'v', 'v', 'v', 'v', 'v', 'Myanmar', 'v', 'v', 'v');

-- ----------------------------
-- Table structure for `letterheads`
-- ----------------------------
DROP TABLE IF EXISTS `letterheads`;
CREATE TABLE `letterheads` (
  `card_id` varchar(30) CHARACTER SET utf8 NOT NULL,
  `card_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `card_type_display` varchar(255) CHARACTER SET utf8 NOT NULL,
  `color` varchar(255) CHARACTER SET utf8 NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of letterheads
-- ----------------------------
INSERT INTO `letterheads` VALUES ('LH-01001', 'letterheads', 'letterheads', '1C', '500', '20.00');
INSERT INTO `letterheads` VALUES ('LH-01002', 'letterheads', 'letterheads', '1C', '1000', '15.00');
INSERT INTO `letterheads` VALUES ('LH-01003', 'letterheads', 'letterheads', '1C', '1500', '14.00');
INSERT INTO `letterheads` VALUES ('LH-01004', 'letterheads', 'letterheads', '1C', '3000', '12.00');
INSERT INTO `letterheads` VALUES ('LH-01005', 'letterheads', 'letterheads', '1C', '5000', '11.50');
INSERT INTO `letterheads` VALUES ('LH-01006', 'letterheads', 'letterheads', '2C', '500', '32.00');
INSERT INTO `letterheads` VALUES ('LH-01007', 'letterheads', 'letterheads', '2C', '1000', '21.00');
INSERT INTO `letterheads` VALUES ('LH-01008', 'letterheads', 'letterheads', '2C', '1500', '19.00');
INSERT INTO `letterheads` VALUES ('LH-01009', 'letterheads', 'letterheads', '2C', '3000', '16.00');
INSERT INTO `letterheads` VALUES ('LH-01010', 'letterheads', 'letterheads', '2C', '5000', '15.00');
INSERT INTO `letterheads` VALUES ('LH-01011', 'letterheads', 'letterheads', '3C', '500', '44.00');
INSERT INTO `letterheads` VALUES ('LH-01012', 'letterheads', 'letterheads', '3C', '1000', '27.00');
INSERT INTO `letterheads` VALUES ('LH-01013', 'letterheads', 'letterheads', '3C', '1500', '24.00');
INSERT INTO `letterheads` VALUES ('LH-01014', 'letterheads', 'letterheads', '3C', '3000', '20.00');
INSERT INTO `letterheads` VALUES ('LH-01015', 'letterheads', 'letterheads', '3C', '5000', '18.00');
INSERT INTO `letterheads` VALUES ('LH-01016', 'letterheads', 'letterheads', '4C', '500', '56.00');
INSERT INTO `letterheads` VALUES ('LH-01017', 'letterheads', 'letterheads', '4C', '1000', '33.00');
INSERT INTO `letterheads` VALUES ('LH-01018', 'letterheads', 'letterheads', '4C', '1500', '29.00');
INSERT INTO `letterheads` VALUES ('LH-01019', 'letterheads', 'letterheads', '4C', '3000', '24.00');
INSERT INTO `letterheads` VALUES ('LH-01020', 'letterheads', 'letterheads', '4C', '5000', '21.00');

-- ----------------------------
-- Table structure for `letterheads_orderdetails`
-- ----------------------------
DROP TABLE IF EXISTS `letterheads_orderdetails`;
CREATE TABLE `letterheads_orderdetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `card_id` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letterheads_orderdetails
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_ref_no` int(10) NOT NULL,
  `order_date` int(8) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1343952872', '1400607436', '18', '7800.00');

-- ----------------------------
-- Table structure for `profiles`
-- ----------------------------
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profiles
-- ----------------------------
INSERT INTO `profiles` VALUES ('18', '18', 'Ko Zin', 'Thet', 'Yangon, Myanmar', '', 'Yangon', 'Myanmar', '54', '2060', '+959420283533', '');

-- ----------------------------
-- Table structure for `timezones`
-- ----------------------------
DROP TABLE IF EXISTS `timezones`;
CREATE TABLE `timezones` (
  `id` int(11) unsigned NOT NULL,
  `gmt` decimal(10,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timezones
-- ----------------------------
INSERT INTO `timezones` VALUES ('1', '-12.00', '(GMT-12:00) - International Date Line West');
INSERT INTO `timezones` VALUES ('2', '-11.00', '(GMT-11:00) - Midway Island, Samoa');
INSERT INTO `timezones` VALUES ('3', '-10.00', '(GMT-10:00) - Hawaii');
INSERT INTO `timezones` VALUES ('4', '-9.00', '(GMT-09:00) - Alaska');
INSERT INTO `timezones` VALUES ('5', '-8.00', '(GMT-08:00) - Pacific Time (US & Canada); Tijuana');
INSERT INTO `timezones` VALUES ('6', '-7.00', '(GMT-07:00) - Arizona');
INSERT INTO `timezones` VALUES ('7', '-7.00', '(GMT-07:00) - Chihuahua, La Paz, Mazatlan');
INSERT INTO `timezones` VALUES ('8', '-7.00', '(GMT-07:00) - Mountain Time (US & Canada)');
INSERT INTO `timezones` VALUES ('9', '-6.00', '(GMT-06:00) - Central America');
INSERT INTO `timezones` VALUES ('10', '-6.00', '(GMT-06:00) - Central Time (US & Canada)');
INSERT INTO `timezones` VALUES ('11', '-6.00', '(GMT-06:00) - Guadalajara, Mexico City, Monterrey');
INSERT INTO `timezones` VALUES ('12', '-6.00', '(GMT-06:00) - Saskatchewan');
INSERT INTO `timezones` VALUES ('13', '-5.00', '(GMT-05:00) - Bogota, Lima, Quito');
INSERT INTO `timezones` VALUES ('14', '-5.00', '(GMT-05:00) - Eastern Time (US & Canada)');
INSERT INTO `timezones` VALUES ('15', '-5.00', '(GMT-05:00) - Indiana (East)');
INSERT INTO `timezones` VALUES ('16', '-4.00', '(GMT-04:00) - Atlantic Time (Canada)');
INSERT INTO `timezones` VALUES ('17', '-4.00', '(GMT-04:00) - Caracas, La Paz');
INSERT INTO `timezones` VALUES ('18', '-4.00', '(GMT-04:00) - Santiago');
INSERT INTO `timezones` VALUES ('19', '-3.50', '(GMT-03:30) - Newfoundland');
INSERT INTO `timezones` VALUES ('20', '-3.00', '(GMT-03:00) - Brasilia');
INSERT INTO `timezones` VALUES ('21', '-3.00', '(GMT-03:00) - Buenos Aires, Georgetown');
INSERT INTO `timezones` VALUES ('22', '-3.00', '(GMT-03:00) - Greenland');
INSERT INTO `timezones` VALUES ('23', '-2.00', '(GMT-02:00) - Mid-Atlantic');
INSERT INTO `timezones` VALUES ('24', '-1.00', '(GMT-01:00) - Azores');
INSERT INTO `timezones` VALUES ('25', '-1.00', '(GMT-01:00) - Cape Verde Is.');
INSERT INTO `timezones` VALUES ('26', '0.00', '(GMT) - Casablanca, Monrovia');
INSERT INTO `timezones` VALUES ('27', '0.00', '(GMT) - Greenwich Mean Time: Dublin, Edinburgh, Lisbon, London');
INSERT INTO `timezones` VALUES ('28', '1.00', '(GMT+01:00) - Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna');
INSERT INTO `timezones` VALUES ('29', '1.00', '(GMT+01:00) - Belgrade, Bratislava, Budapest, Ljubljana, Prague');
INSERT INTO `timezones` VALUES ('30', '1.00', '(GMT+01:00) - Brussels, Copenhagen, Madrid, Paris');
INSERT INTO `timezones` VALUES ('31', '1.00', '(GMT+01:00) - Sarajevo, Skopje, Warsaw, Zagreb');
INSERT INTO `timezones` VALUES ('32', '1.00', '(GMT+01:00) - West Central Africa');
INSERT INTO `timezones` VALUES ('33', '2.00', '(GMT+02:00) - Athens, Beirut, Istanbul, Minsk');
INSERT INTO `timezones` VALUES ('34', '2.00', '(GMT+02:00) - Bucharest');
INSERT INTO `timezones` VALUES ('35', '2.00', '(GMT+02:00) - Cairo');
INSERT INTO `timezones` VALUES ('36', '2.00', '(GMT+02:00) - Harare, Pretoria');
INSERT INTO `timezones` VALUES ('37', '2.00', '(GMT+02:00) - Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius');
INSERT INTO `timezones` VALUES ('38', '2.00', '(GMT+02:00) - Jerusalem');
INSERT INTO `timezones` VALUES ('39', '3.00', '(GMT+03:00) - Baghdad');
INSERT INTO `timezones` VALUES ('40', '3.00', '(GMT+03:00) - Kuwait, Riyadh');
INSERT INTO `timezones` VALUES ('41', '3.00', '(GMT+03:00) - Moscow, St. Petersburg, Volgograd');
INSERT INTO `timezones` VALUES ('42', '3.00', '(GMT+03:00) - Nairobi');
INSERT INTO `timezones` VALUES ('43', '3.50', '(GMT+03:30) - Tehran');
INSERT INTO `timezones` VALUES ('44', '4.00', '(GMT+04:00) - Abu Dhabi, Muscat');
INSERT INTO `timezones` VALUES ('45', '4.00', '(GMT+04:00) - Baku, Tbilisi, Yerevan');
INSERT INTO `timezones` VALUES ('46', '4.50', '(GMT+04:30) - Kabul');
INSERT INTO `timezones` VALUES ('47', '5.00', '(GMT+05:00) - Ekaterinburg');
INSERT INTO `timezones` VALUES ('48', '5.00', '(GMT+05:00) - Islamabad, Karachi, Tashkent');
INSERT INTO `timezones` VALUES ('49', '5.50', '(GMT+05:30) - Chennai, Kolkata, Mumbai, New Delhi');
INSERT INTO `timezones` VALUES ('50', '5.75', '(GMT+05:45) - Kathmandu');
INSERT INTO `timezones` VALUES ('51', '6.00', '(GMT+06:00) - Almaty, Novosibirsk');
INSERT INTO `timezones` VALUES ('52', '6.00', '(GMT+06:00) - Astana, Dhaka');
INSERT INTO `timezones` VALUES ('53', '6.00', '(GMT+06:00) - Sri Jayawardenepura');
INSERT INTO `timezones` VALUES ('54', '6.50', '(GMT+06:30) - Rangoon');
INSERT INTO `timezones` VALUES ('55', '7.00', '(GMT+07:00) - Bangkok, Hanoi, Jakarta');
INSERT INTO `timezones` VALUES ('56', '7.00', '(GMT+07:00) - Krasnoyarsk');
INSERT INTO `timezones` VALUES ('57', '8.00', '(GMT+08:00) - Beijing, Chongqing, Hong Kong, Urumqi');
INSERT INTO `timezones` VALUES ('58', '8.00', '(GMT+08:00) - Irkutsk, Ulaan Bataar');
INSERT INTO `timezones` VALUES ('59', '8.00', '(GMT+08:00) - Kuala Lumpur, Singapore');
INSERT INTO `timezones` VALUES ('60', '8.00', '(GMT+08:00) - Perth');
INSERT INTO `timezones` VALUES ('61', '8.00', '(GMT+08:00) - Taipei');
INSERT INTO `timezones` VALUES ('62', '9.00', '(GMT+09:00) - Osaka, Sapporo, Tokyo');
INSERT INTO `timezones` VALUES ('63', '9.00', '(GMT+09:00) - Seoul');
INSERT INTO `timezones` VALUES ('64', '9.00', '(GMT+09:00) - Vakutsk');
INSERT INTO `timezones` VALUES ('65', '9.50', '(GMT+09:30) - Adelaide');
INSERT INTO `timezones` VALUES ('66', '9.50', '(GMT+09:30) - Darwin');
INSERT INTO `timezones` VALUES ('67', '10.00', '(GMT+10:00) - Brisbane');
INSERT INTO `timezones` VALUES ('68', '10.00', '(GMT+10:00) - Canberra, Melbourne, Sydney');
INSERT INTO `timezones` VALUES ('69', '10.00', '(GMT+10:00) - Guam, Port Moresby');
INSERT INTO `timezones` VALUES ('70', '10.00', '(GMT+10:00) - Hobart');
INSERT INTO `timezones` VALUES ('71', '10.00', '(GMT+10:00) - Vladivostok');
INSERT INTO `timezones` VALUES ('72', '11.00', '(GMT+11:00) - Magadan, Solomon Is., New Caledonia');
INSERT INTO `timezones` VALUES ('73', '12.00', '(GMT+12:00) - Auckland, Wellington');
INSERT INTO `timezones` VALUES ('74', '12.00', '(GMT+12:00) - Fiji, Kamchatka, Marshall Is.');
INSERT INTO `timezones` VALUES ('75', '13.00', '(GMT+13:00) - Nuku\'alofa');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('18', 'kozinthet@gmail.com', 'kozin', 'customer');

-- ----------------------------
-- Table structure for `visitingcards`
-- ----------------------------
DROP TABLE IF EXISTS `visitingcards`;
CREATE TABLE `visitingcards` (
  `card_id` varchar(30) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_type_display` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visitingcards
-- ----------------------------
INSERT INTO `visitingcards` VALUES ('VC-01001', 'AC', 'Art Card', '1C', '600', '13.00');
INSERT INTO `visitingcards` VALUES ('VC-01002', 'AC', 'Art Card', '1C', '1200', '8.00');
INSERT INTO `visitingcards` VALUES ('VC-01003', 'AC', 'Art Card', '1C', '2400', '6.00');
INSERT INTO `visitingcards` VALUES ('VC-01004', 'AC', 'Art Card', '1C', '3600', '5.00');
INSERT INTO `visitingcards` VALUES ('VC-01005', 'AC', 'Art Card', '2C', '600', '23.00');
INSERT INTO `visitingcards` VALUES ('VC-01006', 'AC', 'Art Card', '2C', '1200', '13.00');
INSERT INTO `visitingcards` VALUES ('VC-01007', 'AC', 'Art Card', '2C', '2400', '9.00');
INSERT INTO `visitingcards` VALUES ('VC-01008', 'AC', 'Art Card', '2C', '3600', '7.00');
INSERT INTO `visitingcards` VALUES ('VC-01009', 'AC', 'Art Card', '3C', '600', '33.00');
INSERT INTO `visitingcards` VALUES ('VC-01010', 'AC', 'Art Card', '3C', '1200', '18.00');
INSERT INTO `visitingcards` VALUES ('VC-01011', 'AC', 'Art Card', '3C', '2400', '12.00');
INSERT INTO `visitingcards` VALUES ('VC-01012', 'AC', 'Art Card', '3C', '3600', '9.00');
INSERT INTO `visitingcards` VALUES ('VC-01013', 'AC', 'Art Card', '4C', '600', '43.00');
INSERT INTO `visitingcards` VALUES ('VC-01014', 'AC', 'Art Card', '4C', '1200', '23.00');
INSERT INTO `visitingcards` VALUES ('VC-01015', 'AC', 'Art Card', '4C', '2400', '15.00');
INSERT INTO `visitingcards` VALUES ('VC-01016', 'AC', 'Art Card', '4C', '3600', '11.00');
INSERT INTO `visitingcards` VALUES ('VC-02001', 'WC', 'White Card', '1C', '600', '14.00');
INSERT INTO `visitingcards` VALUES ('VC-02002', 'WC', 'White Card', '1C', '1200', '9.00');
INSERT INTO `visitingcards` VALUES ('VC-02003', 'WC', 'White Card', '1C', '2400', '7.00');
INSERT INTO `visitingcards` VALUES ('VC-02004', 'WC', 'White Card', '1C', '3600', '6.00');
INSERT INTO `visitingcards` VALUES ('VC-02005', 'WC', 'White Card', '2C', '600', '24.00');
INSERT INTO `visitingcards` VALUES ('VC-02006', 'WC', 'White Card', '2C', '1200', '14.00');
INSERT INTO `visitingcards` VALUES ('VC-02007', 'WC', 'White Card', '2C', '2400', '10.00');
INSERT INTO `visitingcards` VALUES ('VC-02008', 'WC', 'White Card', '2C', '3600', '8.00');
INSERT INTO `visitingcards` VALUES ('VC-02009', 'WC', 'White Card', '3C', '600', '34.00');
INSERT INTO `visitingcards` VALUES ('VC-02010', 'WC', 'White Card', '3C', '1200', '19.00');
INSERT INTO `visitingcards` VALUES ('VC-02011', 'WC', 'White Card', '3C', '2400', '13.00');
INSERT INTO `visitingcards` VALUES ('VC-02012', 'WC', 'White Card', '3C', '3600', '10.00');
INSERT INTO `visitingcards` VALUES ('VC-02013', 'WC', 'White Card', '4C', '600', '44.00');
INSERT INTO `visitingcards` VALUES ('VC-02014', 'WC', 'White Card', '4C', '1200', '24.00');
INSERT INTO `visitingcards` VALUES ('VC-02015', 'WC', 'White Card', '4C', '2400', '16.00');
INSERT INTO `visitingcards` VALUES ('VC-02016', 'WC', 'White Card', '4C', '3600', '12.00');
INSERT INTO `visitingcards` VALUES ('VC-03001', 'FC', 'Fragrance Card', '1C', '600', '15.00');
INSERT INTO `visitingcards` VALUES ('VC-03002', 'FC', 'Fragrance Card', '1C', '1200', '10.00');
INSERT INTO `visitingcards` VALUES ('VC-03003', 'FC', 'Fragrance Card', '1C', '2400', '8.00');
INSERT INTO `visitingcards` VALUES ('VC-03004', 'FC', 'Fragrance Card', '1C', '3600', '7.00');
INSERT INTO `visitingcards` VALUES ('VC-03005', 'FC', 'Fragrance Card', '2C', '600', '25.00');
INSERT INTO `visitingcards` VALUES ('VC-03006', 'FC', 'Fragrance Card', '2C', '1200', '15.00');
INSERT INTO `visitingcards` VALUES ('VC-03008', 'FC', 'Fragrance Card', '2C', '3600', '9.00');
INSERT INTO `visitingcards` VALUES ('VC-03009', 'FC', 'Fragrance Card', '3C', '600', '35.00');
INSERT INTO `visitingcards` VALUES ('VC-03010', 'FC', 'Fragrance Card', '3C', '1200', '20.00');
INSERT INTO `visitingcards` VALUES ('VC-03011', 'FC', 'Fragrance Card', '3C', '2400', '14.00');
INSERT INTO `visitingcards` VALUES ('VC-03012', 'FC', 'Fragrance Card', '3C', '3600', '11.00');
INSERT INTO `visitingcards` VALUES ('VC-03013', 'FC', 'Fragrance Card', '4C', '600', '45.00');
INSERT INTO `visitingcards` VALUES ('VC-03014', 'FC', 'Fragrance Card', '4C', '1200', '25.00');
INSERT INTO `visitingcards` VALUES ('VC-03015', 'FC', 'Fragrance Card', '4C', '2400', '17.00');
INSERT INTO `visitingcards` VALUES ('VC-03016', 'FC', 'Fragrance Card', '4C', '3600', '13.00');
INSERT INTO `visitingcards` VALUES ('VC-04001', 'SC', 'Singapore Card (Normal)', '1C', '600', '21.00');
INSERT INTO `visitingcards` VALUES ('VC-04002', 'SC', 'Singapore Card (Normal)', '1C', '1200', '13.00');
INSERT INTO `visitingcards` VALUES ('VC-04003', 'SC', 'Singapore Card (Normal)', '1C', '2400', '10.00');
INSERT INTO `visitingcards` VALUES ('VC-04004', 'SC', 'Singapore Card (Normal)', '1C', '3600', '9.00');
INSERT INTO `visitingcards` VALUES ('VC-04005', 'SC', 'Singapore Card (Normal)', '2C', '600', '34.00');
INSERT INTO `visitingcards` VALUES ('VC-04006', 'SC', 'Singapore Card (Normal)', '2C', '1200', '19.00');
INSERT INTO `visitingcards` VALUES ('VC-04007', 'SC', 'Singapore Card (Normal)', '2C', '2400', '13.00');
INSERT INTO `visitingcards` VALUES ('VC-04008', 'SC', 'Singapore Card (Normal)', '2C', '3600', '11.00');
INSERT INTO `visitingcards` VALUES ('VC-04009', 'SC', 'Singapore Card (Normal)', '3C', '600', '47.00');
INSERT INTO `visitingcards` VALUES ('VC-04010', 'SC', 'Singapore Card (Normal)', '3C', '1200', '25.00');
INSERT INTO `visitingcards` VALUES ('VC-04011', 'SC', 'Singapore Card (Normal)', '3C', '2400', '16.00');
INSERT INTO `visitingcards` VALUES ('VC-04012', 'SC', 'Singapore Card (Normal)', '3C', '3600', '13.00');
INSERT INTO `visitingcards` VALUES ('VC-04013', 'SC', 'Singapore Card (Normal)', '4C', '600', '60.00');
INSERT INTO `visitingcards` VALUES ('VC-04014', 'SC', 'Singapore Card (Normal)', '4C', '1200', '31.00');
INSERT INTO `visitingcards` VALUES ('VC-04015', 'SC', 'Singapore Card (Normal)', '4C', '2400', '19.00');
INSERT INTO `visitingcards` VALUES ('VC-04016', 'SC', 'Singapore Card (Normal)', '4C', '3600', '15.00');
INSERT INTO `visitingcards` VALUES ('VC-05001', 'SC_OR', 'Singapore Card', '1C', '600', '29.00');
INSERT INTO `visitingcards` VALUES ('VC-05002', 'SC_OR', 'Singapore Card', '1C', '1200', '21.00');
INSERT INTO `visitingcards` VALUES ('VC-05003', 'SC_OR', 'Singapore Card', '1C', '2400', '18.00');
INSERT INTO `visitingcards` VALUES ('VC-05004', 'SC_OR', 'Singapore Card', '1C', '3600', '17.00');
INSERT INTO `visitingcards` VALUES ('VC-05005', 'SC_OR', 'Singapore Card', '2C', '600', '42.00');
INSERT INTO `visitingcards` VALUES ('VC-05006', 'SC_OR', 'Singapore Card', '2C', '1200', '27.00');
INSERT INTO `visitingcards` VALUES ('VC-05007', 'SC_OR', 'Singapore Card', '2C', '2400', '21.00');
INSERT INTO `visitingcards` VALUES ('VC-05008', 'SC_OR', 'Singapore Card', '2C', '3600', '29.00');
INSERT INTO `visitingcards` VALUES ('VC-05009', 'SC_OR', 'Singapore Card', '3C', '600', '55.00');
INSERT INTO `visitingcards` VALUES ('VC-05010', 'SC_OR', 'Singapore Card', '3C', '1200', '33.00');
INSERT INTO `visitingcards` VALUES ('VC-05011', 'SC_OR', 'Singapore Card', '3C', '2400', '24.00');
INSERT INTO `visitingcards` VALUES ('VC-05012', 'SC_OR', 'Singapore Card', '3C', '3600', '21.00');
INSERT INTO `visitingcards` VALUES ('VC-05013', 'SC_OR', 'Singapore Card', '4C', '600', '68.00');
INSERT INTO `visitingcards` VALUES ('VC-05014', 'SC_OR', 'Singapore Card', '4C', '1200', '39.00');
INSERT INTO `visitingcards` VALUES ('VC-05015', 'SC_OR', 'Singapore Card', '4C', '2400', '27.00');
INSERT INTO `visitingcards` VALUES ('VC-05016', 'SC_OR', 'Singapore Card', '4C', '3600', '23.00');
INSERT INTO `visitingcards` VALUES ('VC-06001', 'AC_300', 'Art Cart (300 gm) with Lamination', '1C', '600', '26.00');
INSERT INTO `visitingcards` VALUES ('VC-06002', 'AC_300', 'Art Cart (300 gm) with Lamination', '1C', '1200', '18.00');
INSERT INTO `visitingcards` VALUES ('VC-06003', 'AC_300', 'Art Cart (300 gm) with Lamination', '1C', '2400', '15.00');
INSERT INTO `visitingcards` VALUES ('VC-06004', 'AC_300', 'Art Cart (300 gm) with Lamination', '1C', '3600', '14.00');
INSERT INTO `visitingcards` VALUES ('VC-06005', 'AC_300', 'Art Cart (300 gm) with Lamination', '2C', '600', '39.00');
INSERT INTO `visitingcards` VALUES ('VC-06006', 'AC_300', 'Art Cart (300 gm) with Lamination', '2C', '1200', '24.00');
INSERT INTO `visitingcards` VALUES ('VC-06007', 'AC_300', 'Art Cart (300 gm) with Lamination', '2C', '2400', '18.00');
INSERT INTO `visitingcards` VALUES ('VC-06008', 'AC_300', 'Art Cart (300 gm) with Lamination', '2C', '3600', '16.00');
INSERT INTO `visitingcards` VALUES ('VC-06009', 'AC_300', 'Art Cart (300 gm) with Lamination', '3C', '600', '52.00');
INSERT INTO `visitingcards` VALUES ('VC-06010', 'AC_300', 'Art Cart (300 gm) with Lamination', '3C', '1200', '30.00');
INSERT INTO `visitingcards` VALUES ('VC-06011', 'AC_300', 'Art Cart (300 gm) with Lamination', '3C', '2400', '21.00');
INSERT INTO `visitingcards` VALUES ('VC-06012', 'AC_300', 'Art Cart (300 gm) with Lamination', '3C', '3600', '18.00');
INSERT INTO `visitingcards` VALUES ('VC-06013', 'AC_300', 'Art Cart (300 gm) with Lamination', '4C', '600', '65.00');
INSERT INTO `visitingcards` VALUES ('VC-06014', 'AC_300', 'Art Cart (300 gm) with Lamination', '4C', '1200', '36.00');
INSERT INTO `visitingcards` VALUES ('VC-06015', 'AC_300', 'Art Cart (300 gm) with Lamination', '4C', '2400', '24.00');
INSERT INTO `visitingcards` VALUES ('VC-06016', 'AC_300', 'Art Cart (300 gm) with Lamination', '4C', '3600', '20.00');
INSERT INTO `visitingcards` VALUES ('VC-03007', 'FC', 'Fragrance Card', '2C', '2400', '11.00');

-- ----------------------------
-- Table structure for `visitingcards_orderdetails`
-- ----------------------------
DROP TABLE IF EXISTS `visitingcards_orderdetails`;
CREATE TABLE `visitingcards_orderdetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `card_id` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visitingcards_orderdetails
-- ----------------------------
INSERT INTO `visitingcards_orderdetails` VALUES ('1', '1', 'VC-01001', '600', '13.00', '7800.00');

-- ----------------------------
-- View structure for `orders_view`
-- ----------------------------
DROP VIEW IF EXISTS `orders_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orders_view` AS select `orders`.`order_id` AS `order_id`,`orders`.`order_ref_no` AS `order_ref_no`,`orders`.`order_date` AS `order_date`,`orders`.`user_id` AS `user_id`,`users`.`username` AS `username`,`profiles`.`firstname` AS `firstname`,`profiles`.`lastname` AS `lastname`,`orders`.`total` AS `total` from ((`orders` join `users` on((`orders`.`user_id` = `users`.`user_id`))) join `profiles` on((`orders`.`user_id` = `profiles`.`user_id`))) order by `orders`.`order_date` ;
