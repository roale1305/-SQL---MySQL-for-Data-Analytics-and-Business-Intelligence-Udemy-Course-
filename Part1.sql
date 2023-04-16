create database if not exists Sales;

use Sales;

create table if not exists sales
(
	purchase_number int not null primary key auto_increment,
    date_of_purchase date not null, 
    customer_id int,
    item_code varchar(10) not null
);

create table if not exists customers
(
	customer_id int,
    fist_name varchar(255), 
    last_name varchar(255), 
    email_address varchar(255), 
    number_of_complaints int
);

select * from sales;


drop table sales; 

create table if not exists sales
(
	purchase_number int not null auto_increment,
    date_of_purchase date not null, 
    customer_id int,
    item_code varchar(10) not null,
Primary key (purchase_number)
);

drop table customers; 

create table if not exists customers
(
	customer_id int,
    fist_name varchar(255), 
    last_name varchar(255), 
    email_address varchar(255), 
    number_of_complaints int,
primary key (customer_id) 
);


create table if not exists items
(
	item_code varchar(255),
    item varchar(255), 
    unit_price numeric(10,2), 
    company_id varchar(255),
primary key (item_code)
);


create table if not exists companies
(
	company_id varchar(255),
    company_name varchar(255), 
    headquarters_phone_number int(12),
primary key (company_id)
);

alter table sales 
add foreign key(customer_id) references customers (customer_id) on delete cascade;

alter table sales
drop foreign key sales_ibfk_1;

drop table sales; 
drop table customers;
drop table items; 
drop table companies; 



CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id)
);

ALTER TABLE customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

alter table customers
change column number_of_complaints number_of_complaints int default 0; 

INSERT INTO customers (first_name, last_name, gender)
VALUES ('Peter', 'Figaro', 'M');

select * from customers;

alter table customers
alter column number_of_complaints drop default; 


create table companies (
	company_id varchar(255) PRIMARY KEY,
    company_name varchar(255),
    hedquarters_phone_number varchar(255) unique default 'x'
);

drop table companies;


create table companies (
	company_id int auto_increment PRIMARY KEY,
    company_name varchar(255) not null,
    hedquarters_phone_number varchar(255) 
);


alter table companies
modify company_name varchar(255) null;

alter table companies
change column company_name company_name varchar(255) not null;

insert into companies (hedquarters_phone_number, company_name)
values ('+1 (202) 555-0296', 'Company A');

select * from companies;

alter table companies
modify hedquarters_phone_number varchar(255) null;

alter table companies
change column hedquarters_phone_number hedquarters_phone_number varchar(255) not null; 


