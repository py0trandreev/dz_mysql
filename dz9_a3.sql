use dz;
truncate users;
create table users (
	id INT,
	name VARCHAR(50),
	birthday_at  DATE,
	created_at DATE,
	updated_at DATE
);
insert into users (id, name, birthday_at , created_at, updated_at) values (1, 'Kilian Adame', '2006-07-18', '2018-08-01', '2018-08-01');
insert into users (id, name, birthday_at , created_at, updated_at) values (2, 'Revkah Corradino', '2001-01-23', '2018-08-04', '2018-08-04');
insert into users (id, name, birthday_at , created_at, updated_at) values (3, 'Fae Simanek', '2004-04-04', '2018-08-16', '2018-08-16');
insert into users (id, name, birthday_at , created_at, updated_at) values (4, 'Ginnifer Gregoire', '2010-04-03', '2018-08-17', '2018-08-17');


drop procedure if exists doWhile;
DELIMITER //  
CREATE PROCEDURE doWhile()   
BEGIN
DECLARE i INT DEFAULT 1; 
WHILE (i <= 31) DO
    INSERT INTO numbers () VALUES (); 
    SET i = i+1;
END WHILE;
END;
//  numbers
DELIMITER ;


DROP TABLE IF EXISTS numbers; 
CREATE TABLE numbers (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);
CALL doWhile(); 


SELECT 
	CONCAT("2018","-","08","-", LPAD(num.id, 2, 0))  date_of_aug, 
    usr.created_at,
    IF(CONCAT("2018","-","08","-", LPAD(num.id, 2, 0))=usr.created_at,1,0) as ToF
    FROM numbers as num LEFT JOIN users as usr
    ON usr.created_at = CONCAT("2018","-","08","-", LPAD(num.id, 2, 0) );



