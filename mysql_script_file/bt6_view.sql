create database demo;
use demo;

create table Products(
id int primary key auto_increment not null,
productCode int not null unique,
productName varchar(255) not null unique,
productPrice double,
productAmount int default 0,
productDescription varchar (255),
productStatus varchar(255)
);

create view ProductInfo as 
select productCode, productName, productPrice, productStatus
from products;

alter view ProductInfo as
select productCode, productName, productPrice, productStatus, productAmount
from products;