START TRANSACTION;
SELECT @name_id1 := name FROM shop.users WHERE id=1;
SELECT @birthday_at_id1 := birthday_at FROM shop.users WHERE id=1;

INSERT INTO sample.users (id, name, birthday_at)
    VALUES (1, @name_id1, @birthday_at_id1)
        ON DUPLICATE KEY UPDATE ID = 1; 

DELETE FROM shop.users WHERE id=1;
COMMIT;


