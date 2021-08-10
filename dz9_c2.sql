use dz;

drop table products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) ,
  description TEXT,
  price DECIMAL (11,2) ,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

) ;

DELIMITER //

DROP TRIGGER IF EXISTS check_name_n_description//
CREATE TRIGGER check_name_n_description BEFORE INSERT ON dz.products FOR EACH ROW
BEGIN
       IF (NEW.name IS NULL AND NEW.description IS NULL) THEN
           SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Поля name и description не должны быть пустыми!';
       END IF;
END//

DELIMITER ;



INSERT INTO `products` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES ('1', 'numquam', 'Ea omnis perferendis officiis placeat.', '263247654.70', '2000-06-26 04:14:01', '2006-01-06 02:09:59');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES ('2', 'voluptatibus', 'Facilis non non animi provident exercitationem.', '1390.60', '1997-01-26 11:29:41', '1971-09-15 18:49:22');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES ('3', NULL, 'Quo voluptas quibusdam quaerat quis unde ad quasi.', '92883.04', '1972-04-06 15:53:25', '1977-06-21 03:22:35');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES ('4', 'facere', 'Vel ab voluptas mollitia voluptas consequuntur quod.', '4319.00', '1995-01-25 02:07:04', '1975-02-22 20:34:01');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES ('5', 'cupiditate', NULL, '18914.22', '2012-02-25 04:24:37', '1975-11-06 15:43:46');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES ('6', 'et', 'Et explicabo tempora tempora aut.', '402889.00', '1990-11-16 20:31:33', '1978-12-08 00:01:46');
INSERT INTO `products` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES ('7', NULL, NULL, '408.28', '1997-02-10 06:23:23', '2009-05-10 14:50:35');
