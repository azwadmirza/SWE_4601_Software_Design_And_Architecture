
use kids_shop;
-- Dummy Data
INSERT INTO employee(name) VALUES("alex1");
INSERT INTO employee(name) VALUES("alex2");
INSERT INTO employee(name) VALUES("alex3");
INSERT INTO employee(name) VALUES("alex4");
INSERT INTO customer(name) VALUES("rob1");
INSERT INTO customer(name) VALUES("rob2");
INSERT INTO customer(name) VALUES("rob3");
INSERT INTO customer(name) VALUES("rob4");
INSERT INTO sale(product_id,employee_id,customer_id,sale_timestamp) VALUES(1,1,1,NOW());
INSERT INTO sale(product_id,employee_id,customer_id,sale_timestamp) VALUES(2,2,2,NOW());
INSERT INTO sale(product_id,employee_id,customer_id,sale_timestamp) VALUES(3,3,3,NOW());
INSERT INTO sale(product_id,employee_id,customer_id,sale_timestamp) VALUES(4,4,4,NOW());
INSERT INTO sale(product_id,employee_id,customer_id,sale_timestamp) VALUES(5,2,2,NOW());
INSERT INTO invoice(customer_id,seller_id,invoice_time) VALUES(1,1,NOW());
INSERT INTO invoice(customer_id,seller_id,invoice_time) VALUES(2,2,NOW());
INSERT INTO invoice(customer_id,seller_id,invoice_time) VALUES(3,3,NOW());
INSERT INTO invoice(customer_id,seller_id,invoice_time) VALUES(4,4,NOW());
INSERT INTO invoice(customer_id,seller_id,invoice_time) VALUES(2,2,NOW());

drop database if exists reporting_db;
create database reporting_db;
use reporting_db;
drop table if exists fact_sale;

create table fact_sale(
	id int not null auto_increment primary key,
	category_id int, 
	employee_id int,
    product_id int,
    rating_id int,
    sale_id int
);

drop table if exists dim_category;
drop table if exists dim_product;
drop table if exists dim_employee;
drop table if exists dim_rating;
drop table if exists dim_sale;

create table dim_category(
    id int not null auto_increment primary key,
    name varchar(100)
);

create table dim_product (
    id int not null auto_increment primary key,
    name varchar(100),
    category_id int not null,
    average_rating int not null default 0
);

create table dim_rating (
	id int not null auto_increment primary key,
    product_id int not null,
    rating_value int,
    rating_datetime timestamp
);

create table dim_employee (
    id int primary key auto_increment,
    name varchar(255) not null
);

create table dim_sale(
	sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    employee_id INT,
    customer_id INT,
    sale_timestamp TIMESTAMP
);

use kids_shop;
call add_to_change_log("Mirza Mohammad Azwad","010_fact.sql","IMPLEMENTING FACT TABLE AND APPROPRIATE DIMENSION TABLES");