-- MySQL dump 10.13  Distrib 5.5.37, for Linux (x86_64)
--
-- Host: localhost    Database: tgssprin_tgss
-- ------------------------------------------------------
-- Server version	5.5.37-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `country_code` char(2) NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('AF','Afghanistan'),('AX','Aland Islands'),('AL','Albania'),('DZ','Algeria'),('AS','American Samoa'),('AD','Andorra'),('AO','Angola'),('AI','Anguilla'),('AG','Antigua and Barbuda'),('AR','Argentina'),('AM','Armenia'),('AW','Aruba'),('AU','Australia'),('AT','Austria'),('AZ','Azerbaijan'),('BS','Bahamas'),('BH','Bahrain'),('BD','Bangladesh'),('BB','Barbados'),('BY','Belarus'),('BE','Belgium'),('BZ','Belize'),('BJ','Benin'),('BM','Bermuda'),('BT','Bhutan'),('BO','Bolivia'),('BA','Bosnia and Herzegovina'),('BW','Botswana'),('BR','Brazil'),('VG','British Virgin Islands'),('BN','Brunei'),('BG','Bulgaria'),('BF','Burkina Faso'),('BI','Burundi'),('KH','Cambodia'),('CM','Cameroon'),('CA','Canada'),('CV','Cape Verde'),('KY','Cayman Islands'),('CF','Central African Republic'),('TD','Chad'),('CL','Chile'),('CN','China'),('CX','Christmas Island'),('CC','Cocos (Keeling) Islands'),('CO','Colombia'),('KM','Comoros'),('CG','Congo (Brazzaville)'),('CD','Congo (Kinshasa)'),('CK','Cook Islands'),('CR','Costa Rica'),('HR','Croatia'),('CU','Cuba'),('CW','Curaçao'),('CY','Cyprus'),('CZ','Czech Republic'),('DK','Denmark'),('DJ','Djibouti'),('DM','Dominica'),('DO','Dominican Republic'),('EC','Ecuador'),('EG','Egypt'),('SV','El Salvador'),('GQ','Equatorial Guinea'),('ER','Eritrea'),('EE','Estonia'),('ET','Ethiopia'),('FK','Falkland Islands'),('FO','Faroe Islands'),('FJ','Fiji'),('FI','Finland'),('FR','France'),('GF','French Guiana'),('PF','French Polynesia'),('TF','French Southern Territories'),('GA','Gabon'),('GM','Gambia'),('GE','Georgia'),('DE','Germany'),('GH','Ghana'),('GI','Gibraltar'),('GR','Greece'),('GL','Greenland'),('GD','Grenada'),('GP','Guadeloupe'),('GU','Guam'),('GT','Guatemala'),('GG','Guernsey'),('GN','Guinea'),('GW','Guinea-Bissau'),('GY','Guyana'),('HT','Haiti'),('HN','Honduras'),('HK','Hong Kong S.A.R., China'),('HU','Hungary'),('IS','Iceland'),('IN','India'),('ID','Indonesia'),('IR','Iran'),('IQ','Iraq'),('IE','Ireland'),('IM','Isle of Man'),('IL','Israel'),('IT','Italy'),('CI','Ivory Coast'),('JM','Jamaica'),('JP','Japan'),('JE','Jersey'),('JO','Jordan'),('KZ','Kazakhstan'),('KE','Kenya'),('KI','Kiribati'),('KW','Kuwait'),('KG','Kyrgyzstan'),('LA','Laos'),('LV','Latvia'),('LB','Lebanon'),('LS','Lesotho'),('LR','Liberia'),('LY','Libya'),('LI','Liechtenstein'),('LT','Lithuania'),('LU','Luxembourg'),('MO','Macao S.A.R., China'),('MK','Macedonia'),('MG','Madagascar'),('MW','Malawi'),('MY','Malaysia'),('MV','Maldives'),('ML','Mali'),('MT','Malta'),('MH','Marshall Islands'),('MQ','Martinique'),('MR','Mauritania'),('MU','Mauritius'),('YT','Mayotte'),('MX','Mexico'),('FM','Micronesia'),('MD','Moldova'),('MC','Monaco'),('MN','Mongolia'),('ME','Montenegro'),('MS','Montserrat'),('MA','Morocco'),('MZ','Mozambique'),('MM','Myanmar'),('NA','Namibia'),('NP','Nepal'),('NL','Netherlands'),('NC','New Caledonia'),('NZ','New Zealand'),('NI','Nicaragua'),('NE','Niger'),('NG','Nigeria'),('NU','Niue'),('NF','Norfolk Island'),('MP','Northern Mariana Islands'),('KP','North Korea'),('NO','Norway'),('OM','Oman'),('PK','Pakistan'),('PW','Palau'),('PS','Palestinian Territory'),('PA','Panama'),('PG','Papua New Guinea'),('PY','Paraguay'),('PE','Peru'),('PH','Philippines'),('PN','Pitcairn'),('PL','Poland'),('PT','Portugal'),('PR','Puerto Rico'),('QA','Qatar'),('RE','Reunion'),('RO','Romania'),('RU','Russia'),('RW','Rwanda'),('BL','Saint Barthélemy'),('SH','Saint Helena'),('KN','Saint Kitts and Nevis'),('LC','Saint Lucia'),('MF','Saint Martin (French part)'),('PM','Saint Pierre and Miquelon'),('VC','Saint Vincent and the Grenadines'),('WS','Samoa'),('SM','San Marino'),('ST','Sao Tome and Principe'),('SA','Saudi Arabia'),('SN','Senegal'),('RS','Serbia'),('SC','Seychelles'),('SL','Sierra Leone'),('SG','Singapore'),('SK','Slovakia'),('SI','Slovenia'),('SB','Solomon Islands'),('SO','Somalia'),('ZA','South Africa'),('GS','South Georgia and the South Sandwich Islands'),('KR','South Korea'),('ES','Spain'),('LK','Sri Lanka'),('SD','Sudan'),('SR','Suriname'),('SJ','Svalbard and Jan Mayen'),('SZ','Swaziland'),('SE','Sweden'),('CH','Switzerland'),('SY','Syria'),('TW','Taiwan'),('TJ','Tajikistan'),('TZ','Tanzania'),('TH','Thailand'),('TL','Timor-Leste'),('TG','Togo'),('TO','Tonga'),('TT','Trinidad and Tobago'),('TN','Tunisia'),('TR','Turkey'),('TM','Turkmenistan'),('TC','Turks and Caicos Islands'),('TV','Tuvalu'),('VI','U.S. Virgin Islands'),('UG','Uganda'),('UA','Ukraine'),('AE','United Arab Emirates'),('GB','United Kingdom'),('US','United States'),('UY','Uruguay'),('UZ','Uzbekistan'),('VU','Vanuatu'),('VA','Vatican'),('VE','Venezuela'),('VN','Vietnam'),('WF','Wallis and Futuna'),('EH','Western Sahara'),('YE','Yemen'),('ZM','Zambia'),('ZW','Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `profile_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (18,18,'Ko Zin','Thet','asdf','','Yangon','Myanmar','2060','655',''),(19,19,'wpst','006','a','a','a','Myanmar','a','a','');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (18,'kozinthet@gmail.com','kozin','customer'),(19,'wpst006@gmail.com','admin','customer');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v/c`
--

DROP TABLE IF EXISTS `v/c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v/c` (
  `Card_Quality` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v/c`
--

LOCK TABLES `v/c` WRITE;
/*!40000 ALTER TABLE `v/c` DISABLE KEYS */;
INSERT INTO `v/c` VALUES ('A/C','1C',600,13),('A/C','1C',1200,8),('A/C','1C',2400,6),('A/C','1C',3600,5),('A/C','2C',600,23),('A/C','2C',1200,13),('A/C','2C',2400,9),('A/C','2C',3600,7),('A/C','3C',600,33),('A/C','3C',1200,18),('A/C','3C',2400,12),('A/C','3C',3600,9),('A/C','4C',600,43),('A/C','4C',1200,23),('A/C','4C',2400,15),('A/C','4C',3600,11),('W/C','1C',600,14),('W/C','1C',1200,9),('W/C','1C',2400,7),('W/C','1C',3600,6),('W/C','2C',600,24),('W/C','2C',1200,14),('W/C','2C',2400,10),('W/C','2C',3600,8),('W/C','3C',600,34),('W/C','3C',1200,19),('W/C','3C',2400,13),('W/C','3C',3600,10),('W/C','4C',600,44),('W/C','4C',1200,24),('W/C','4C',2400,16),('W/C','4C',3600,12),('S/C','1C',600,21),('S/C','1C',1200,13),('S/C','1C',2400,10),('S/C','1C',3600,9),('S/C','2C',600,34),('S/C','2C',1200,19),('S/C','2C',2400,13),('S/C','2C',3600,11),('S/C','3C',600,47),('S/C','3C',1200,25),('S/C','3C',2400,16),('S/C','3C',3600,13),('S/C','4C',600,60),('S/C','4C',1200,31),('S/C','4C',2400,19),('S/C','4C',3600,15);
/*!40000 ALTER TABLE `v/c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitingcards`
--

DROP TABLE IF EXISTS `visitingcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitingcards` (
  `card_id` varchar(30) NOT NULL,
  `card_quality` varchar(255) NOT NULL,
  `card_quality_display` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitingcards`
--

LOCK TABLES `visitingcards` WRITE;
/*!40000 ALTER TABLE `visitingcards` DISABLE KEYS */;
INSERT INTO `visitingcards` VALUES ('VC-01001','AC','Art Card','1C',600,13.00),('VC-01002','AC','Art Card','1C',1200,8.00),('VC-01003','AC','Art Card','1C',2400,6.00),('VC-01004','AC','Art Card','1C',3600,5.00),('VC-01005','AC','Art Card','2C',600,23.00),('VC-01006','AC','Art Card','2C',1200,13.00),('VC-01007','AC','Art Card','2C',2400,9.00),('VC-01008','AC','Art Card','2C',3600,7.00),('VC-01009','AC','Art Card','3C',600,33.00),('VC-01010','AC','Art Card','3C',1200,18.00),('VC-01011','AC','Art Card','3C',2400,12.00),('VC-01012','AC','Art Card','3C',3600,9.00),('VC-01013','AC','Art Card','4C',600,43.00),('VC-01014','AC','Art Card','4C',1200,23.00),('VC-01015','AC','Art Card','4C',2400,15.00),('VC-01016','AC','Art Card','4C',3600,11.00),('VC-02001','WC','White Card','1C',600,14.00),('VC-02002','WC','White Card','1C',1200,9.00),('VC-02003','WC','White Card','1C',2400,7.00),('VC-02004','WC','White Card','1C',3600,6.00),('VC-02005','WC','White Card','2C',600,24.00),('VC-02006','WC','White Card','2C',1200,14.00),('VC-02007','WC','White Card','2C',2400,10.00),('VC-02008','WC','White Card','2C',3600,8.00),('VC-02009','WC','White Card','3C',600,34.00),('VC-02010','WC','White Card','3C',1200,19.00),('VC-02011','WC','White Card','3C',2400,13.00),('VC-02012','WC','White Card','3C',3600,10.00),('VC-02013','WC','White Card','4C',600,44.00),('VC-02014','WC','White Card','4C',1200,24.00),('VC-02015','WC','White Card','4C',2400,16.00),('VC-02016','WC','White Card','4C',3600,12.00),('VC-03001','FC','Fragrance Card','1C',600,15.00),('VC-03002','FC','Fragrance Card','1C',1200,10.00),('VC-03003','FC','Fragrance Card','1C',2400,8.00),('VC-03004','FC','Fragrance Card','1C',3600,7.00),('VC-03005','FC','Fragrance Card','2C',600,25.00),('VC-03006','FC','Fragrance Card','2C',1200,15.00),('VC-03008','FC','Fragrance Card','2C',3600,9.00),('VC-03009','FC','Fragrance Card','3C',600,35.00),('VC-03010','FC','Fragrance Card','3C',1200,20.00),('VC-03011','FC','Fragrance Card','3C',2400,14.00),('VC-03012','FC','Fragrance Card','3C',3600,11.00),('VC-03013','FC','Fragrance Card','4C',600,45.00),('VC-03014','FC','Fragrance Card','4C',1200,25.00),('VC-03015','FC','Fragrance Card','4C',2400,17.00),('VC-03016','FC','Fragrance Card','4C',3600,13.00),('VC-04001','SC','Singapore Card (Normal)','1C',600,21.00),('VC-04002','SC','Singapore Card (Normal)','1C',1200,13.00),('VC-04003','SC','Singapore Card (Normal)','1C',2400,10.00),('VC-04004','SC','Singapore Card (Normal)','1C',3600,9.00),('VC-04005','SC','Singapore Card (Normal)','2C',600,34.00),('VC-04006','SC','Singapore Card (Normal)','2C',1200,19.00),('VC-04007','SC','Singapore Card (Normal)','2C',2400,13.00),('VC-04008','SC','Singapore Card (Normal)','2C',3600,11.00),('VC-04009','SC','Singapore Card (Normal)','3C',600,47.00),('VC-04010','SC','Singapore Card (Normal)','3C',1200,25.00),('VC-04011','SC','Singapore Card (Normal)','3C',2400,16.00),('VC-04012','SC','Singapore Card (Normal)','3C',3600,13.00),('VC-04013','SC','Singapore Card (Normal)','4C',600,60.00),('VC-04014','SC','Singapore Card (Normal)','4C',1200,31.00),('VC-04015','SC','Singapore Card (Normal)','4C',2400,19.00),('VC-04016','SC','Singapore Card (Normal)','4C',3600,15.00),('VC-05001','SC_OR','Singapore Card','1C',600,29.00),('VC-05002','SC_OR','Singapore Card','1C',1200,21.00),('VC-05003','SC_OR','Singapore Card','1C',2400,18.00),('VC-05004','SC_OR','Singapore Card','1C',3600,17.00),('VC-05005','SC_OR','Singapore Card','2C',600,42.00),('VC-05006','SC_OR','Singapore Card','2C',1200,27.00),('VC-05007','SC_OR','Singapore Card','2C',2400,21.00),('VC-05008','SC_OR','Singapore Card','2C',3600,29.00),('VC-05009','SC_OR','Singapore Card','3C',600,55.00),('VC-05010','SC_OR','Singapore Card','3C',1200,33.00),('VC-05011','SC_OR','Singapore Card','3C',2400,24.00),('VC-05012','SC_OR','Singapore Card','3C',3600,21.00),('VC-05013','SC_OR','Singapore Card','4C',600,68.00),('VC-05014','SC_OR','Singapore Card','4C',1200,39.00),('VC-05015','SC_OR','Singapore Card','4C',2400,27.00),('VC-05016','SC_OR','Singapore Card','4C',3600,23.00),('VC-06001','AC_300','Art Cart (300 gm) with Lamination','1C',600,26.00),('VC-06002','AC_300','Art Cart (300 gm) with Lamination','1C',1200,18.00),('VC-06003','AC_300','Art Cart (300 gm) with Lamination','1C',2400,15.00),('VC-06004','AC_300','Art Cart (300 gm) with Lamination','1C',3600,14.00),('VC-06005','AC_300','Art Cart (300 gm) with Lamination','2C',600,39.00),('VC-06006','AC_300','Art Cart (300 gm) with Lamination','2C',1200,24.00),('VC-06007','AC_300','Art Cart (300 gm) with Lamination','2C',2400,18.00),('VC-06008','AC_300','Art Cart (300 gm) with Lamination','2C',3600,16.00),('VC-06009','AC_300','Art Cart (300 gm) with Lamination','3C',600,52.00),('VC-06010','AC_300','Art Cart (300 gm) with Lamination','3C',1200,30.00),('VC-06011','AC_300','Art Cart (300 gm) with Lamination','3C',2400,21.00),('VC-06012','AC_300','Art Cart (300 gm) with Lamination','3C',3600,18.00),('VC-06013','AC_300','Art Cart (300 gm) with Lamination','4C',600,65.00),('VC-06014','AC_300','Art Cart (300 gm) with Lamination','4C',1200,36.00),('VC-06015','AC_300','Art Cart (300 gm) with Lamination','4C',2400,24.00),('VC-06016','AC_300','Art Cart (300 gm) with Lamination','4C',3600,20.00),('VC-03007','FC','Fragrance Card','2C',2400,11.00);
/*!40000 ALTER TABLE `visitingcards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-02  6:41:20
