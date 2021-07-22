DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;


DROP TABLE IF EXISTS users;

CREATE TABLE users (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(50),
    birthday DATE

) COMMENT 'пользователи';

INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('1', 'Sophie', '1970-06-19');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('2', 'Brendon', '2011-05-23');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('3', 'Coty', '2008-03-08');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('4', 'Kaya', '1990-12-13');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('5', 'Rod', '1999-04-25');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('6', 'Merlin', '2016-06-22');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('7', 'Claire', '1973-12-31');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('8', 'Elza', '2013-07-24');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('9', 'Lavina', '1981-12-29');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('10', 'Kitty', '1984-03-10');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('11', 'Jennie', '2019-12-23');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('12', 'Alvis', '2016-06-19');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('13', 'Ava', '1974-09-18');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('14', 'Francisca', '1978-06-29');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('15', 'Sonia', '1993-09-16');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('16', 'Marcus', '1971-03-28');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('17', 'Valentin', '2010-08-13');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('18', 'Doris', '1987-01-26');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('19', 'Eldridge', '2013-03-29');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('20', 'Eli', '2008-02-25');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('21', 'Abigayle', '1986-11-13');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('22', 'Leda', '2011-12-29');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('23', 'Letitia', '1970-04-23');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('24', 'Camilla', '1983-04-15');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('25', 'Jamie', '2010-07-31');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('26', 'Josh', '1985-03-13');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('27', 'Brenna', '2008-07-31');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('28', 'Vito', '1975-03-25');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('29', 'Kathlyn', '1988-02-01');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('30', 'Herman', '2004-12-22');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('31', 'Margarette', '1977-07-17');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('32', 'Rex', '1972-12-24');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('33', 'Eugene', '1997-07-14');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('34', 'Ocie', '2001-10-23');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('35', 'Lawrence', '1991-09-16');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('36', 'Derick', '1985-02-15');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('37', 'Judy', '1979-02-26');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('38', 'Jeffery', '2006-07-11');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('39', 'Rylan', '1993-06-22');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('40', 'Kelton', '1999-11-07');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('41', 'Reina', '2021-01-03');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('42', 'Reggie', '2021-04-28');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('43', 'Mia', '1991-11-11');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('44', 'Anissa', '2018-05-08');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('45', 'Yoshiko', '1980-08-24');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('46', 'Cesar', '2014-05-13');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('47', 'Cristopher', '2009-07-09');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('48', 'Calista', '1983-05-09');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('49', 'Harold', '2008-11-24');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('50', 'Rosanna', '2012-10-27');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('51', 'Joana', '1995-09-27');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('52', 'Dessie', '2006-12-19');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('53', 'Tanya', '1988-11-15');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('54', 'Thea', '2008-09-25');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('55', 'Christopher', '1996-04-22');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('56', 'Quinten', '2006-05-13');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('57', 'June', '2002-03-23');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('58', 'Rhoda', '1980-03-15');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('59', 'Marge', '1989-07-25');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('60', 'Montana', '1970-01-19');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('61', 'Vance', '1988-01-29');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('62', 'Ellen', '1970-08-10');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('63', 'Candace', '2018-10-01');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('64', 'Natasha', '1975-06-21');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('65', 'Callie', '2012-09-07');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('66', 'Wilburn', '1980-03-08');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('67', 'Gregorio', '2017-09-12');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('68', 'Waylon', '1987-02-09');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('69', 'Christa', '2009-12-02');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('70', 'Keshawn', '1984-07-30');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('71', 'Kennedy', '1975-08-10');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('72', 'Lynn', '2003-12-04');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('73', 'Alfreda', '1999-10-01');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('74', 'Dulce', '2006-12-20');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('75', 'Nella', '1986-07-28');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('76', 'Robbie', '1971-10-07');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('77', 'Zoila', '1990-04-22');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('78', 'Coty', '1970-05-11');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('79', 'Steve', '2009-04-30');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('80', 'Giovanny', '1977-06-28');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('81', 'Lavada', '2016-07-07');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('82', 'Katelin', '2012-02-08');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('83', 'Rex', '2021-03-19');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('84', 'Barbara', '2008-05-09');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('85', 'Nikolas', '1999-09-20');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('86', 'Johann', '1975-08-29');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('87', 'Murray', '2011-08-29');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('88', 'Lelah', '2014-04-26');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('89', 'Aric', '1979-07-03');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('90', 'Vernice', '2007-11-09');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('91', 'Eliza', '2018-03-21');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('92', 'Crystel', '1976-06-20');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('93', 'Delbert', '1986-07-05');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('94', 'Waldo', '1975-11-04');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('95', 'Baylee', '1972-08-12');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('96', 'Alda', '1972-06-15');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('97', 'Taurean', '1986-05-27');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('98', 'Aaliyah', '1991-01-26');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('99', 'Justina', '2003-02-01');
INSERT INTO `users` (`id`, `name`, `birthday`) VALUES ('100', 'Joyce', '2016-09-19');

-- SELECT DAYOFWEEK(`birthday`) as weekday_number, COUNT(*) AS total  FROM `users` GROUP BY `weekday_number`;
-- SELECT DAYOFWEEK(`birthday`) as weekday_number, COUNT(*) AS total  FROM `users` GROUP BY `weekday_number`;


-- SELECT DATE_FORMAT(DATE_ADD(`birthday`, INTERVAL (YEAR(CURRENT_DATE()) - YEAR(`birthday`)) YEAR), '%Y-%m-%d') `date` FROM `users`;

SELECT DAYOFWEEK(DATE_FORMAT(DATE_ADD(`birthday`, INTERVAL (YEAR(CURRENT_DATE()) - YEAR(`birthday`)) YEAR), '%Y-%m-%d')) AS `weekday_number`, 
	COUNT(*) AS `total`,
	(CASE
		WHEN DAYOFWEEK(DATE_FORMAT(DATE_ADD(`birthday`, INTERVAL (YEAR(CURRENT_DATE()) - YEAR(`birthday`)) YEAR), '%Y-%m-%d')) = 1 THEN "Воскресенье"
		WHEN DAYOFWEEK(DATE_FORMAT(DATE_ADD(`birthday`, INTERVAL (YEAR(CURRENT_DATE()) - YEAR(`birthday`)) YEAR), '%Y-%m-%d')) = 2 THEN "Понедельник"
		WHEN DAYOFWEEK(DATE_FORMAT(DATE_ADD(`birthday`, INTERVAL (YEAR(CURRENT_DATE()) - YEAR(`birthday`)) YEAR), '%Y-%m-%d')) = 3 THEN "Вторник"
		WHEN DAYOFWEEK(DATE_FORMAT(DATE_ADD(`birthday`, INTERVAL (YEAR(CURRENT_DATE()) - YEAR(`birthday`)) YEAR), '%Y-%m-%d')) = 4 THEN "Среда"
		WHEN DAYOFWEEK(DATE_FORMAT(DATE_ADD(`birthday`, INTERVAL (YEAR(CURRENT_DATE()) - YEAR(`birthday`)) YEAR), '%Y-%m-%d')) = 5 THEN "Четверг"
		WHEN DAYOFWEEK(DATE_FORMAT(DATE_ADD(`birthday`, INTERVAL (YEAR(CURRENT_DATE()) - YEAR(`birthday`)) YEAR), '%Y-%m-%d')) = 6 THEN "Пятница"
		ELSE "Суббота"
	END) AS `weekday_rus` 
FROM `users` GROUP BY `weekday_number` ORDER BY `weekday_number`;

