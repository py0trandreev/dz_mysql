DROP DATABASE IF EXISTS dz;
CREATE DATABASE dz;
USE dz;

DROP TABLE IF EXISTS catalogs;

create table catalogs (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50)
);
insert into catalogs (id, name) values (1, 'Автомобили 1');
insert into catalogs (id, name) values (2, 'Автомобили 2');
insert into catalogs (id, name) values (3, 'Автомобили 3');
insert into catalogs (id, name) values (4, 'Автомобили 4');
insert into catalogs (id, name) values (5, 'Автомобили 5');
insert into catalogs (id, name) values (6, 'Автомобили 6');
insert into catalogs (id, name) values (7, 'Автомобили 7');
insert into catalogs (id, name) values (8, 'Автомобили 8');
insert into catalogs (id, name) values (9, 'Автомобили 9');
insert into catalogs (id, name) values (10, 'Автомобили 10');


DROP TABLE IF EXISTS products;
create table products (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50),
	catalog_id INT UNSIGNED NOT NULL,
	price INT,
	FOREIGN KEY (catalog_id) REFERENCES catalogs(id)
);
insert into products (id, name, catalog_id, price) values (1, 'Nissan', 7, 23040);
insert into products (id, name, catalog_id, price) values (2, 'Saturn', 3, 16558);
insert into products (id, name, catalog_id, price) values (3, 'Dodge', 10, 15422);
insert into products (id, name, catalog_id, price) values (4, 'Pontiac', 1, 23287);
insert into products (id, name, catalog_id, price) values (5, 'Mitsubishi', 7, 3742);
insert into products (id, name, catalog_id, price) values (6, 'Volkswagen', 5, 16769);
insert into products (id, name, catalog_id, price) values (7, 'Audi', 6, 9536);
insert into products (id, name, catalog_id, price) values (8, 'Volkswagen', 6, 24181);
insert into products (id, name, catalog_id, price) values (9, 'Land Rover', 9, 10397);
insert into products (id, name, catalog_id, price) values (10, 'Land Rover', 10, 13216);
insert into products (id, name, catalog_id, price) values (11, 'Pontiac', 9, 18607);
insert into products (id, name, catalog_id, price) values (12, 'Dodge', 9, 22888);
insert into products (id, name, catalog_id, price) values (13, 'Honda', 6, 12794);
insert into products (id, name, catalog_id, price) values (14, 'GMC', 10, 19847);
insert into products (id, name, catalog_id, price) values (15, 'Mercedes-Benz', 7, 14917);
insert into products (id, name, catalog_id, price) values (16, 'Hyundai', 1, 13178);
insert into products (id, name, catalog_id, price) values (17, 'Dodge', 1, 4301);
insert into products (id, name, catalog_id, price) values (18, 'Jensen', 5, 3063);
insert into products (id, name, catalog_id, price) values (19, 'Toyota', 5, 17516);
insert into products (id, name, catalog_id, price) values (20, 'Mitsubishi', 10, 18713);
insert into products (id, name, catalog_id, price) values (21, 'Dodge', 4, 10445);
insert into products (id, name, catalog_id, price) values (22, 'Chrysler', 9, 13442);
insert into products (id, name, catalog_id, price) values (23, 'Toyota', 8, 7379);
insert into products (id, name, catalog_id, price) values (24, 'Aptera', 10, 7161);
insert into products (id, name, catalog_id, price) values (25, 'Chevrolet', 10, 8571);
insert into products (id, name, catalog_id, price) values (26, 'Chevrolet', 5, 16886);
insert into products (id, name, catalog_id, price) values (27, 'Chevrolet', 4, 6381);
insert into products (id, name, catalog_id, price) values (28, 'Ford', 10, 5840);
insert into products (id, name, catalog_id, price) values (29, 'Audi', 9, 12044);
insert into products (id, name, catalog_id, price) values (30, 'Pontiac', 6, 24974);
insert into products (id, name, catalog_id, price) values (31, 'Suzuki', 2, 18074);
insert into products (id, name, catalog_id, price) values (32, 'Ford', 7, 11490);
insert into products (id, name, catalog_id, price) values (33, 'Mitsubishi', 5, 11783);
insert into products (id, name, catalog_id, price) values (34, 'Mitsubishi', 4, 12621);
insert into products (id, name, catalog_id, price) values (35, 'Chevrolet', 1, 5370);
insert into products (id, name, catalog_id, price) values (36, 'Suzuki', 10, 5834);
insert into products (id, name, catalog_id, price) values (37, 'Lotus', 1, 20114);
insert into products (id, name, catalog_id, price) values (38, 'Mazda', 5, 9841);
insert into products (id, name, catalog_id, price) values (39, 'Saab', 5, 21019);
insert into products (id, name, catalog_id, price) values (40, 'Mitsubishi', 10, 13468);
insert into products (id, name, catalog_id, price) values (41, 'Oldsmobile', 5, 12399);
insert into products (id, name, catalog_id, price) values (42, 'Buick', 6, 14689);
insert into products (id, name, catalog_id, price) values (43, 'Land Rover', 4, 14654);
insert into products (id, name, catalog_id, price) values (44, 'Ford', 5, 22948);
insert into products (id, name, catalog_id, price) values (45, 'Nissan', 2, 23100);
insert into products (id, name, catalog_id, price) values (46, 'Isuzu', 10, 23535);
insert into products (id, name, catalog_id, price) values (47, 'Chevrolet', 8, 16210);
insert into products (id, name, catalog_id, price) values (48, 'Acura', 5, 12332);
insert into products (id, name, catalog_id, price) values (49, 'Ford', 4, 17951);
insert into products (id, name, catalog_id, price) values (50, 'Chevrolet', 7, 12009);
insert into products (id, name, catalog_id, price) values (51, 'Acura', 6, 8410);
insert into products (id, name, catalog_id, price) values (52, 'Ford', 3, 19753);
insert into products (id, name, catalog_id, price) values (53, 'Toyota', 3, 21659);
insert into products (id, name, catalog_id, price) values (54, 'Dodge', 5, 18612);
insert into products (id, name, catalog_id, price) values (55, 'Ford', 4, 9950);
insert into products (id, name, catalog_id, price) values (56, 'GMC', 7, 17203);
insert into products (id, name, catalog_id, price) values (57, 'Subaru', 1, 24010);
insert into products (id, name, catalog_id, price) values (58, 'Chevrolet', 7, 6999);
insert into products (id, name, catalog_id, price) values (59, 'Mazda', 2, 10682);
insert into products (id, name, catalog_id, price) values (60, 'Mitsubishi', 1, 15513);
insert into products (id, name, catalog_id, price) values (61, 'Mercedes-Benz', 8, 13294);
insert into products (id, name, catalog_id, price) values (62, 'Volvo', 6, 21961);
insert into products (id, name, catalog_id, price) values (63, 'Oldsmobile', 6, 14105);
insert into products (id, name, catalog_id, price) values (64, 'Toyota', 7, 3903);
insert into products (id, name, catalog_id, price) values (65, 'Infiniti', 3, 17471);
insert into products (id, name, catalog_id, price) values (66, 'Porsche', 3, 15718);
insert into products (id, name, catalog_id, price) values (67, 'Nissan', 5, 7150);
insert into products (id, name, catalog_id, price) values (68, 'Saab', 9, 7167);
insert into products (id, name, catalog_id, price) values (69, 'GMC', 2, 9705);
insert into products (id, name, catalog_id, price) values (70, 'Dodge', 10, 4077);
insert into products (id, name, catalog_id, price) values (71, 'Infiniti', 7, 24495);
insert into products (id, name, catalog_id, price) values (72, 'Volkswagen', 6, 12556);
insert into products (id, name, catalog_id, price) values (73, 'Volvo', 1, 13838);
insert into products (id, name, catalog_id, price) values (74, 'Land Rover', 6, 8999);
insert into products (id, name, catalog_id, price) values (75, 'Oldsmobile', 6, 15861);
insert into products (id, name, catalog_id, price) values (76, 'Plymouth', 2, 15749);
insert into products (id, name, catalog_id, price) values (77, 'BMW', 9, 16459);
insert into products (id, name, catalog_id, price) values (78, 'Jeep', 3, 18676);
insert into products (id, name, catalog_id, price) values (79, 'Volvo', 10, 19626);
insert into products (id, name, catalog_id, price) values (80, 'Chevrolet', 4, 21120);
insert into products (id, name, catalog_id, price) values (81, 'Mercedes-Benz', 7, 24490);
insert into products (id, name, catalog_id, price) values (82, 'Mitsubishi', 4, 6204);
insert into products (id, name, catalog_id, price) values (83, 'Dodge', 8, 17337);
insert into products (id, name, catalog_id, price) values (84, 'Land Rover', 9, 3615);
insert into products (id, name, catalog_id, price) values (85, 'Studebaker', 4, 20758);
insert into products (id, name, catalog_id, price) values (86, 'Subaru', 3, 12121);
insert into products (id, name, catalog_id, price) values (87, 'Audi', 9, 15310);
insert into products (id, name, catalog_id, price) values (88, 'Ford', 1, 20940);
insert into products (id, name, catalog_id, price) values (89, 'Pontiac', 10, 12729);
insert into products (id, name, catalog_id, price) values (90, 'Acura', 10, 24131);
insert into products (id, name, catalog_id, price) values (91, 'Chevrolet', 10, 9769);
insert into products (id, name, catalog_id, price) values (92, 'Pontiac', 1, 10115);
insert into products (id, name, catalog_id, price) values (93, 'Mercedes-Benz', 2, 3727);
insert into products (id, name, catalog_id, price) values (94, 'GMC', 8, 5809);
insert into products (id, name, catalog_id, price) values (95, 'Mitsubishi', 8, 10337);
insert into products (id, name, catalog_id, price) values (96, 'Lotus', 10, 24748);
insert into products (id, name, catalog_id, price) values (97, 'Ford', 8, 3302);
insert into products (id, name, catalog_id, price) values (98, 'GMC', 4, 20831);
insert into products (id, name, catalog_id, price) values (99, 'Pontiac', 5, 20001);
insert into products (id, name, catalog_id, price) values (100, 'Toyota', 2, 8723);

select 
id,
name,
(select name from catalogs where id=products.catalog_id) as catalog,
price
from products;