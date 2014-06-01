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
`firstname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`lastname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
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

DROP TABLE `v/c`;

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

RENAME TABLE `tgss`.`letterhead_orderdetails` TO `tgss`.`letterheads_orderdetails` ;

RENAME TABLE `tgss`.`visitingcard_orderdetails` TO `tgss`.`visitingcards_orderdetails` ;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orders_view` AS select `orders`.`order_id` AS `order_id`,`orders`.`order_ref_no` AS `order_ref_no`,`orders`.`order_date` AS `order_date`,`orders`.`user_id` AS `user_id`,`users`.`username` AS `username`,`profiles`.`firstname` AS `firstname`,`profiles`.`lastname` AS `lastname`,`orders`.`total` AS `total` from ((`orders` join `users` on((`orders`.`user_id` = `users`.`user_id`))) join `profiles` on((`orders`.`user_id` = `profiles`.`user_id`))) order by `orders`.`order_date`;

ALTER TABLE `visitingcards` CHANGE `card_quality` `card_type` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ;

ALTER TABLE `visitingcards` CHANGE `card_quality_display` `card_type_display` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ;