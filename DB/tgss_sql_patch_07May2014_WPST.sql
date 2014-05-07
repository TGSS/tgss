CREATE TABLE `billing_addresses` (
`billing_address_id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`order_id`  int(11) UNSIGNED NOT NULL ,
`email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`firstname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`lastname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`address1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`address2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`city`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`country`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`postcode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`phoneno`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`mobileno`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`billing_address_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=Compact
;

CREATE TABLE `delivery_addresses` (
`delivery_address_id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`order_id`  int(11) UNSIGNED NOT NULL ,
`address1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`address2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`city`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`country`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`postcode`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`phoneno`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`mobileno`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`delivery_address_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=Compact
;

CREATE TABLE `letterheads_orderdetails` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`order_id`  int(11) UNSIGNED NOT NULL ,
`card_id`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`quantity`  int(11) NOT NULL ,
`price`  decimal(10,2) NOT NULL ,
`total`  decimal(10,2) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=Compact
;

CREATE TABLE `orders` (
`order_id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`order_ref_no`  int(10) NOT NULL ,
`order_date`  int(8) NOT NULL ,
`user_id`  int(11) UNSIGNED NOT NULL ,
`total`  decimal(10,2) NOT NULL ,
PRIMARY KEY (`order_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=Compact
;

CREATE TABLE `visitingcards_orderdetails` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`order_id`  int(11) UNSIGNED NOT NULL ,
`card_id`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`quantity`  int(11) NOT NULL ,
`price`  decimal(10,2) NOT NULL ,
`total`  decimal(10,2) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=Compact
;

DROP TABLE IF EXISTS `letterhead_orderdetails`;

DROP TABLE IF EXISTS `v/c`;

DROP TABLE IF EXISTS `visitingcard_orderdetails`;