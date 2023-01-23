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