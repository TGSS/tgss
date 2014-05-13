CREATE ALGORITHM = UNDEFINED VIEW `orders_view` AS SELECT `orders`.`order_id` , `orders`.`order_ref_no`,`orders`.`order_date` , `orders`.`user_id` ,`users`.`username`, `profiles`.`firstname` , `profiles`.`lastname` , `orders`.`total`
FROM `orders`
INNER JOIN `users` ON `orders`.`user_id`=`users`.`user_id`
INNER JOIN `profiles` ON `orders`.`user_id` = `profiles`.`user_id`
ORDER BY `order_date` 