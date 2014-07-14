ALTER TABLE `orders` ADD COLUMN `payment_status`  int(1) NOT NULL DEFAULT 0 AFTER `total`;
ALTER TABLE `orders` ADD COLUMN `payment_status_text`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `payment_status`;
ALTER TABLE `payments` ADD COLUMN `installment_no`  int(1) NOT NULL AFTER `user_id`;

ALTER 
ALGORITHM=UNDEFINED 
DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER 
VIEW `orders_view` AS 
select `orders`.`order_id` AS `order_id`,`orders`.`order_ref_no` AS `order_ref_no`,`orders`.`order_date` AS `order_date`,`orders`.`user_id` AS `user_id`,`users`.`username` AS `username`,`profiles`.`firstname` AS `firstname`,`profiles`.`lastname` AS `lastname`,`orders`.`total` AS `total`,`orders`.`payment_status` AS `payment_status`,`orders`.`payment_status_text` AS `payment_status_text` from ((`orders` join `users` on((`orders`.`user_id` = `users`.`user_id`))) join `profiles` on((`orders`.`user_id` = `profiles`.`user_id`))) order by `orders`.`order_date` ;

DELETE FROM `payments` WHERE 1=1;

UPDATE `orders`
SET `payment_status`=0,
`payment_status_text`='pending';