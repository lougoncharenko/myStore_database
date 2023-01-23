git commit -m "first commit"-- Creating database
CREATE DATABASE mystore;
-- displays list of data bases
SHOW DATABASES;
-- uses specific data
USE mystore;

-- Create tables
CREATE TABLE items ( 
item_id int PRIMARY KEY,
name varchar(50) NOT NULL,
year int,
price decimal(7,2),
quantity int
);

CREATE TABLE customers(
customer_id int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
street varchar(50),
city varchar(50),
province char(2),
postal_code varchar(50),
country varchar(50),
email varchar(50)
);

-- show tables
SHOW TABLES;

-- describe tables
DESCRIBE items;
DESCRIBE customers;

-- Creating another table
CREATE TABLE orders (
order_id int AUTO_INCREMENT PRIMARY KEY,
customer_id int NOT NULL,
order_date date NOT NULL,
total decimal(7,2),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
-- inserting values
INSERT INTO orders(customer_id, order_date, total)
VALUES
(4, "2020-01-04", 8894.95),
(3, "2020-02-13", 100.34),
(3, "2019-03-20", 3045.65),
(1, "2019-08-01", 200.56),
(2, "2019-09-09", 1078.99);

CREATE TABLE companies ( 
company_id int AUTO_INCREMENT PRIMARY KEY, 
company_name varchar(100)
);

INSERT INTO companies (company_name)
VALUES
("Philips"),
("Sega"),
("Atari"),
("Sony"),
("Nintendo"),
("Sinclair");

-- Altering table
ALTER table items
ADD COLUMN company_id int,
ADD FOREIGN KEY (company_id) REFERENCES companies(company_id);


-- Using Case to update
UPDATE items
SET name = CASE item_id
WHEN 1 THEN "Master System"
WHEN 2 THEN "Lynx"
WHEN 3 THEN "CD-I"
WHEN 4 THEN "Virtual Boy"
WHEN 6 THEN "Jaguar"
WHEN 7 THEN "64"
WHEN 8 THEN "Genesis"
WHEN 9 THEN "Mega Drive II"
WHEN 10 THEN "Playstation"
WHEN 11 THEN "Game Boy"
WHEN 12 THEN "ZX Spectrum"
END;

SELECT * FROM items;

UPDATE items
SET company_id = CASE item_id
WHEN 1 THEN 2
WHEN 2 THEN 3
WHEN 3 THEN 1
WHEN 4 THEN 5
WHEN 6 THEN 3
WHEN 7 THEN 5
WHEN 8 THEN 2
WHEN 9 THEN 2
WHEN 10 THEN 4
WHEN 11 THEN 5
WHEN 12 THEN 6
END;

SELECT * FROM items;