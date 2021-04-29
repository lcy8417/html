 CREATE DATABASE ecommerce;
 USE eommerce;
 SHOW DATABASES;
 CREATE TABLE product(
	CODE VARCHAR(20) NOT NULL,
    TITLE VARCHAR(200) NOT NULL,
    ORI_PRICE INT,
    DISCOUNT_PRICE INT,
    DISCOUNT_PERCENT INT,
    DELIVERY VARCHAR(2),
    PRIMARY KEY(CODE)
);

ALTER TABLE product CHANGE CODE PRODUCT_CODE VARCHAR(20) NOT NULL; 
DESC product;

CREATE TABLE ranking(
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    CATEGORY VARCHAR(50),
    SUBCATEGORY VARCHAR(50),
    RANKING INT NOT NULL,
    PRODUCT_CODE VARCHAR(20) NOT NULL,
    PRIMARY KEY(ID)
);
DESC ranking;

INSERT INTO product VALUES('215673140', '스위트바니 여름신상5900원', 23000, 6900, 70, 'F');
SELECT * FROM product;










