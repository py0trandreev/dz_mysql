DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;


DROP TABLE IF EXISTS users;

CREATE TABLE users (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(50),
    created_at VARCHAR(50),
    updated_at VARCHAR(50)

) COMMENT 'пользователи';

insert into users (id, name) values (1, 'cbeardwell0');
insert into users (id, name) values (2, 'lreyes1');
insert into users (id, name) values (3, 'bonslow2');
insert into users (id, name) values (4, 'nbottoner3');
insert into users (id, name) values (5, 'bmarc4');
insert into users (id, name) values (6, 'pfrayne5');
insert into users (id, name) values (7, 'rbraisby6');
insert into users (id, name) values (8, 'hfoard7');
insert into users (id, name) values (9, 'nmildmott8');
insert into users (id, name) values (10, 'otie9');
insert into users (id, name) values (11, 'dscraneya');
insert into users (id, name) values (12, 'sraynardb');
insert into users (id, name) values (13, 'dturrellc');
insert into users (id, name) values (14, 'cocoskerryd');
insert into users (id, name) values (15, 'kletertree');
insert into users (id, name) values (16, 'jkingzettf');
insert into users (id, name) values (17, 'mtattersallg');
insert into users (id, name) values (18, 'hdreschlerh');
insert into users (id, name) values (19, 'cmowsdalei');
insert into users (id, name) values (20, 'bruskj');


UPDATE users SET created_at = NOW(), updated_at = NOW()