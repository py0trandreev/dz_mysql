USE dz;

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  created_at DATETIME,
  table_name VARCHAR(50),
  key_id INT,
  name VARCHAR(50)

) ENGINE=Archive;


DROP TABLE IF EXISTS products;
create table products (
  id INT,
  name VARCHAR(50),
  catalog_id INT,
  price INT
);


DELIMITER //
DROP TRIGGER IF EXISTS products_log//
CREATE TRIGGER products_log AFTER INSERT 
ON products
FOR EACH ROW
BEGIN
  DECLARE table_name VARCHAR(10);
  SET table_name="products";

  INSERT INTO logs (created_at, table_name, key_id, name)
  VALUES(NOW(), table_name, NEW.id, NEW.name);
END//
DELIMITER ;

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





DROP TABLE IF EXISTS catalogs;
create table catalogs (
  id INT,
  name VARCHAR(50)
);

DELIMITER //
DROP TRIGGER IF EXISTS catalogs_log//
CREATE TRIGGER catalogs_log AFTER INSERT 
ON catalogs
FOR EACH ROW
BEGIN
  DECLARE table_name VARCHAR(10);
  SET table_name="catalogs";

  INSERT INTO logs (created_at, table_name, key_id, name)
  VALUES(NOW(), table_name, NEW.id, NEW.name);
END//
DELIMITER ;

insert into catalogs (id, name) values (1, 'Материнские карты');
insert into catalogs (id, name) values (2, 'Процессоры');
insert into catalogs (id, name) values (3, 'Жесткие диски');
insert into catalogs (id, name) values (4, 'SSD Диски');
insert into catalogs (id, name) values (5, 'RAM память');
insert into catalogs (id, name) values (6, 'Корпусы');
insert into catalogs (id, name) values (7, 'Дисководы');
insert into catalogs (id, name) values (8, 'Акустика');
insert into catalogs (id, name) values (9, 'Мониторы');
insert into catalogs (id, name) values (10, 'Периферийные устройства');



DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(50)
) COMMENT 'пользователи';

DELIMITER //
DROP TRIGGER IF EXISTS users_log//
CREATE TRIGGER users_log AFTER INSERT 
ON users
FOR EACH ROW
BEGIN
  DECLARE table_name VARCHAR(10);
  SET table_name="users";

  INSERT INTO logs (created_at, table_name, key_id, name)
  VALUES(NOW(), table_name, NEW.id, NEW.name);
END//
DELIMITER ;

insert into users (id, name) values (1, 'Floria Tarborn');
insert into users (id, name) values (2, 'Jeri Findlow');
insert into users (id, name) values (3, 'Lenee Feldbau');
insert into users (id, name) values (4, 'Celeste McQuarter');
insert into users (id, name) values (5, 'Garrott Freebury');
insert into users (id, name) values (6, 'Albertine Slarke');
insert into users (id, name) values (7, 'Estele Bannerman');
insert into users (id, name) values (8, 'Woodie Stoile');
insert into users (id, name) values (9, 'Ashlin Domleo');
insert into users (id, name) values (10, 'Imogene Peris');
insert into users (id, name) values (11, 'Hurlee Bartlet');
insert into users (id, name) values (12, 'Heinrick McElwee');
insert into users (id, name) values (13, 'Mathe Richen');
insert into users (id, name) values (14, 'Randi Gore');
insert into users (id, name) values (15, 'Concettina Feldberg');
insert into users (id, name) values (16, 'Paddie Pinhorn');
insert into users (id, name) values (17, 'Armin Saice');
insert into users (id, name) values (18, 'Brear Pisco');
insert into users (id, name) values (19, 'Dara Parlatt');
insert into users (id, name) values (20, 'Ruthy Pittock');
insert into users (id, name) values (21, 'Gal Veschambre');
insert into users (id, name) values (22, 'Celina Stadden');
insert into users (id, name) values (23, 'Lyman Seaborne');
insert into users (id, name) values (24, 'Miriam Hartnup');
insert into users (id, name) values (25, 'Hyacinthie Haggata');
insert into users (id, name) values (26, 'Genny Leckie');
insert into users (id, name) values (27, 'Perrine Iorizzo');
insert into users (id, name) values (28, 'Eduard Morecomb');
insert into users (id, name) values (29, 'Debby Constantine');
insert into users (id, name) values (30, 'Flemming Kerswill');
insert into users (id, name) values (31, 'Waylen Travis');
insert into users (id, name) values (32, 'Murry Pryn');
insert into users (id, name) values (33, 'Travus Balharrie');
insert into users (id, name) values (34, 'Revkah Arsnell');
insert into users (id, name) values (35, 'Dex Tassell');
insert into users (id, name) values (36, 'Huntley McKeowon');
insert into users (id, name) values (37, 'Tybi Sabbin');
insert into users (id, name) values (38, 'Lucille Tissier');
insert into users (id, name) values (39, 'Liane MacAlister');
insert into users (id, name) values (40, 'Reidar Stormouth');
insert into users (id, name) values (41, 'Gawen Hallyburton');
insert into users (id, name) values (42, 'Gabriellia Showers');
insert into users (id, name) values (43, 'Laurette Stavers');
insert into users (id, name) values (44, 'Kathe Hastler');
insert into users (id, name) values (45, 'Arney Barajaz');
insert into users (id, name) values (46, 'Tatum Kamen');
insert into users (id, name) values (47, 'Rubin Rosetti');
insert into users (id, name) values (48, 'Avrit Jayes');
insert into users (id, name) values (49, 'Georgia Gypps');
insert into users (id, name) values (50, 'Clemmie Pere');
insert into users (id, name) values (51, 'Abdul Breeze');
insert into users (id, name) values (52, 'Janifer Armor');
insert into users (id, name) values (53, 'Nigel Duggon');
insert into users (id, name) values (54, 'Cari Cramond');
insert into users (id, name) values (55, 'Archibaldo Forte');
insert into users (id, name) values (56, 'Myriam Fairlamb');
insert into users (id, name) values (57, 'Susann Rimour');
insert into users (id, name) values (58, 'Yance Dovermann');
insert into users (id, name) values (59, 'Marin Fayter');
insert into users (id, name) values (60, 'Alisander Dobrowlski');
insert into users (id, name) values (61, 'Michel Arnaut');
insert into users (id, name) values (62, 'Cordelie Goldspink');
insert into users (id, name) values (63, 'Aggi Locker');
insert into users (id, name) values (64, 'Abagail Maffulli');
insert into users (id, name) values (65, 'Sadye Dargavel');
insert into users (id, name) values (66, 'Amalee Seabourne');
insert into users (id, name) values (67, 'Alfonso Kingzett');
insert into users (id, name) values (68, 'Ronda Wadman');
insert into users (id, name) values (69, 'Haskell Dysart');
insert into users (id, name) values (70, 'Steve Telezhkin');
insert into users (id, name) values (71, 'Lira O''Ferris');
insert into users (id, name) values (72, 'Rufus Lodovichi');
insert into users (id, name) values (73, 'Paula Grigoryov');
insert into users (id, name) values (74, 'Jill Wendover');
insert into users (id, name) values (75, 'Harlene Spinley');
insert into users (id, name) values (76, 'Carlin Wilsone');
insert into users (id, name) values (77, 'Giovanna Aldritt');
insert into users (id, name) values (78, 'Ben Burnall');
insert into users (id, name) values (79, 'Warde Gomez');
insert into users (id, name) values (80, 'Orland Berendsen');
insert into users (id, name) values (81, 'Ahmad Kleinhaut');
insert into users (id, name) values (82, 'Shelton Anfrey');
insert into users (id, name) values (83, 'Courtenay France');
insert into users (id, name) values (84, 'Lyndsey Skeggs');
insert into users (id, name) values (85, 'Joelle Cattrell');
insert into users (id, name) values (86, 'Ave Kleinstub');
insert into users (id, name) values (87, 'Zed Gavin');
insert into users (id, name) values (88, 'Pamella Turfus');
insert into users (id, name) values (89, 'Dalton Younglove');
insert into users (id, name) values (90, 'Delly Lothlorien');
insert into users (id, name) values (91, 'Eugenio Duckels');
insert into users (id, name) values (92, 'Alfi Crumpe');
insert into users (id, name) values (93, 'Laurene Jenner');
insert into users (id, name) values (94, 'Briana De Fries');
insert into users (id, name) values (95, 'Hew Renard');
insert into users (id, name) values (96, 'Gleda Ruhben');
insert into users (id, name) values (97, 'Valli Witherbed');
insert into users (id, name) values (98, 'Kiel Astridge');
insert into users (id, name) values (99, 'Sydelle Thurlbeck');
insert into users (id, name) values (100, 'Irma Winscomb');
insert into users (id, name) values (101, 'Camel Krolik');
insert into users (id, name) values (102, 'Mile Weymont');
insert into users (id, name) values (103, 'Cleo Van der Merwe');
insert into users (id, name) values (104, 'Jennette Ashdown');
insert into users (id, name) values (105, 'Gherardo Wisbey');
insert into users (id, name) values (106, 'Oberon Charlton');
insert into users (id, name) values (107, 'Laurice Erie');
insert into users (id, name) values (108, 'Tedda Crombleholme');
insert into users (id, name) values (109, 'Randie Mowling');
insert into users (id, name) values (110, 'Kirby Tulk');
insert into users (id, name) values (111, 'Kyle Livard');
insert into users (id, name) values (112, 'Gloriane Simonite');
insert into users (id, name) values (113, 'Gideon Clawsley');
insert into users (id, name) values (114, 'Becka Cordel');
insert into users (id, name) values (115, 'Mercie Toffoloni');
insert into users (id, name) values (116, 'Corney Levensky');
insert into users (id, name) values (117, 'Orren Free');
insert into users (id, name) values (118, 'Abraham Batey');
insert into users (id, name) values (119, 'Hilary Cummine');
insert into users (id, name) values (120, 'Jimmie Draye');
insert into users (id, name) values (121, 'Mildrid Halton');
insert into users (id, name) values (122, 'Taddeo Iapico');
insert into users (id, name) values (123, 'Jana Omand');
insert into users (id, name) values (124, 'Joice Moodycliffe');
insert into users (id, name) values (125, 'Odilia Poat');
insert into users (id, name) values (126, 'Currie Baldassi');
insert into users (id, name) values (127, 'Kinny Regnard');
insert into users (id, name) values (128, 'Constantia Solway');
insert into users (id, name) values (129, 'Yankee Veschi');
insert into users (id, name) values (130, 'Chane Tierney');
insert into users (id, name) values (131, 'Reg Izon');
insert into users (id, name) values (132, 'Annaliese Garford');
insert into users (id, name) values (133, 'Britteny Molohan');
insert into users (id, name) values (134, 'Aurie Vanyukhin');
insert into users (id, name) values (135, 'Nike Pauer');
insert into users (id, name) values (136, 'Sidnee Burgess');
insert into users (id, name) values (137, 'Hadria Allcroft');
insert into users (id, name) values (138, 'Reiko MacCarter');
insert into users (id, name) values (139, 'Hillary Collumbell');
insert into users (id, name) values (140, 'Rodi Gowrich');
insert into users (id, name) values (141, 'Franchot Robrose');
insert into users (id, name) values (142, 'Forrester Gregoraci');
insert into users (id, name) values (143, 'Gustavo Gosby');
insert into users (id, name) values (144, 'Karrah Faireclough');
insert into users (id, name) values (145, 'Marcellina Joerning');
insert into users (id, name) values (146, 'Conney Lifsey');
insert into users (id, name) values (147, 'Gaultiero Marshfield');
insert into users (id, name) values (148, 'Patin Jiruca');
insert into users (id, name) values (149, 'Ephraim Earingey');
insert into users (id, name) values (150, 'Helenelizabeth Korneichik');

