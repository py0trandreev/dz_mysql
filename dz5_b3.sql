DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;


DROP TABLE IF EXISTS mult_nums;

CREATE TABLE mult_nums (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    `number` INT

);

INSERT INTO mult_nums (`id`, `number`) VALUES ('1', 3);
INSERT INTO mult_nums (`id`, `number`) VALUES ('2', 1);
INSERT INTO mult_nums (`id`, `number`) VALUES ('3', 2);
INSERT INTO mult_nums (`id`, `number`) VALUES ('4', 2);
INSERT INTO mult_nums (`id`, `number`) VALUES ('5', 4);
INSERT INTO mult_nums (`id`, `number`) VALUES ('6', 1);
INSERT INTO mult_nums (`id`, `number`) VALUES ('7', 5);
INSERT INTO mult_nums (`id`, `number`) VALUES ('8', 4);
INSERT INTO mult_nums (`id`, `number`) VALUES ('9', 1);
INSERT INTO mult_nums (`id`, `number`) VALUES ('10', 4);



SELECT ROUND(EXP(SUM(LOG(`number`))),1) FROM mult_nums;