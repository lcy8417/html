USE mydata;
SHOW TABLES;
DESC mytable;
INSERT INTO mytable VALUES(1, 'i7', '7700', 'Kaby Lake');
SELECT * FROM mytable;
INSERT INTO mytable(name, model_num, model_type) VALUES('i7', '7700k', 'KABY Late');
-- 아이디 안넣어도 id 값이 auto로 올라감 --
SELECT * FROM mytable;
DESC mytable;
ALTER TABLE mytable MODIFY model_type VARCHAR(30) NOT NULL;
INSERT INTO mytable(name, model_num, model_type) VALUES('I5', '9600K', 'Coffee Lake Refresh');
INSERT INTO mytable(name, model_num, model_type) VALUES('I5', '9400F', 'Coffee Lake Refresh');
INSERT INTO mytable(name, model_num, model_type) VALUES('I7', '9700K', 'Coffee Lake Refresh');
INSERT INTO mytable(name, model_num, model_type) VALUES('I7', '8700', 'Coffee Lake');
INSERT INTO mytable(name, model_num, model_type) VALUES('I5', '8500', 'Coffee Lake');
SELECT * FROM mytable;
SELECT name FROM mytable;
SELECT * FROM mytable;
SELECT name, model_num FROM mytable;
SELECT name, model_num, model_type, id FROM mytable;
SELECT name AS cup_name FROM mytable;
SELECT * FROM mytable;
SELECT id, name FROM mytable ORDER BY id DESC;
SELECT id, name FROM mytable ORDER BY name DESC;
SELECT id FROM mytable ORDER BY id ASC;
SELECT id, name FROM mytable WHERE id < 3 AND name = 'i7';
SELECT id, name FROM mytable WHERE name > 'i6' AND name = 'i7';

SELECT id, name FROM mytable WHERE name LIKE '%7';
SELECT id, name FROM mytable WHERE name LIKE '%7%';
SELECT id, name FROM mytable WHERE name LIKE '_7';
SELECT * FROM mytable WHERE model_type LIKE '%LAKE%';
SELECT * FROM mytable WHERE model_type Like 'Kaby%';
SELECT * FROM mytable WHERE model_type Like 'Kaby_____';
SELECT * FROM mytable WHERE model_type Like '_____Lake' or id > 3;
SELECT * FROM mytable;
SELECT id, name FROM mytable LIMIT 5;
SELECT id, name FROM mytable LIMIT 2, 2;
SELECT id, name FROM mytable ORDER BY id DESC LIMIT 2, 2;
SELECT id, name FROM mytable WHERE id < 4 AND name LIKE '%I%' ORDER BY id DESC LIMIT 2;
SELECT * FROM mytable;
SELECT * FROM mytable 
WHERE model_num LIKE '7700%';
SELECT* FROM mytable WHERE name = 'I7';
SELECT * FROM mytable WHERE model_type LIKE 'kaby%' LIMIT 1;
UPDATE mytable SET name = 'i3' WHERE id = 3;
SELECT * FROM mytable;
UPDATE mytable SET name = 'I5', model_num = '5500k' WHERE id = 3;
SELECT * FROM mytable;
DELETE FROM mytable WHERE id = 1;
SELECT * FROM mytable;
SHOW DATABASES;
USE mydata;
ALTER TABLE mytable ADD COLUMN lowest_price INT UNSIGNED NOT NULL;
DESC mytable;
SELECT * FROM mytable;
UPDATE mytable SET lowest_price = 176660 WHERE id = 2;
UPDATE mytable SET lowest_price = 468090 WHERE id = 3;
UPDATE mytable SET lowest_price = 357520 WHERE id = 4;
UPDATE mytable SET lowest_price = 252130 WHERE id = 5;
UPDATE mytable SET lowest_price = 368880 WHERE id = 6;
SELECT name, model_num FROM mytable WHERE lowest_price <= 3000000;
SELECT * FROM mytable WHERE lowest_price >= 400000;

