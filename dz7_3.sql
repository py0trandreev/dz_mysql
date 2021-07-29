DROP DATABASE IF EXISTS dz;
CREATE DATABASE dz;
USE dz;

DROP TABLE IF EXISTS cities;

create table cities (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	label VARCHAR(50),
	name VARCHAR(50)
);
insert into cities (id, label, name) values (1, 'moscow', 'Москва');
insert into cities (id, label, name) values (2, 'irkutsk', 'Иркутск');
insert into cities (id, label, name) values (3, 'novgorod', 'Новгород');
insert into cities (id, label, name) values (4, 'kazan', 'Казань');
insert into cities (id, label, name) values (5, 'omsk', 'Омск');



DROP TABLE IF EXISTS flights;

create table flights (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	fl_from VARCHAR(50),
	fl_to VARCHAR(50)
);
insert into flights (id, fl_from, fl_to) values (1, 'moscow', 'omsk');
insert into flights (id, fl_from, fl_to) values (2, 'novgorod', 'kazan');
insert into flights (id, fl_from, fl_to) values (3, 'irkutsk', 'moscow');
insert into flights (id, fl_from, fl_to) values (4, 'omsk', 'irkutsk');
insert into flights (id, fl_from, fl_to) values (5, 'moscow', 'kazan');


SELECT 
id, 
(SELECT name FROM dz.cities where label=fl_from) as fl_from_rus,
(SELECT name FROM dz.cities where label=fl_to) as fl_to_rus
FROM dz.flights;