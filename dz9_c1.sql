USE dz;
DROP FUNCTION IF EXISTS hello;

delimiter //

CREATE FUNCTION hello()
RETURNS VARCHAR(15) DETERMINISTIC
BEGIN
    DECLARE morning, `day`, evening, night VARCHAR(15);
    DECLARE this_moment VARCHAR(15);
    SET morning="Доброе утро!";
    SET `day`="Добрый день!";
    SET evening="Добрый вечер!";
    SET night="Доброй ночи!";
	SET this_moment=DATE_FORMAT(CURRENT_TIME(), '%H:%i:%s');

	IF (this_moment >= '06:00:00' AND this_moment < '12:00:00') THEN
		RETURN morning;
    ELSEIF (this_moment >= '12:00:00' AND this_moment < '18:00:00') THEN
        RETURN `day`;
    ELSEIF (this_moment >= '18:00:00' AND this_moment < '23:59:59') THEN
        RETURN evening;
    ELSEIF (this_moment >= '00:00:00' AND this_moment < '06:00:00') THEN
        RETURN night;
	END IF;
END//

Delimiter ;


SELECT hello();