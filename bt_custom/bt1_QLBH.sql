create database QLBH;
use QLBH;

create table Customer(
cID int primary key auto_increment not null,
cName varchar(25) not null,
cAge tinyint(10)
);
insert into Customer (cName, cAge) values
('Minh Quan', 10),
('Ngoc Oanh', 20),
('Hong Ha', 50),
('Kha Banh', 30);	


create table Orders (
oID int primary key auto_increment not null,
cID int not null,
foreign key (cID) references Customer (cID),	
oDAte datetime not null,
oTotalPrice int
);
insert into Orders (cID, oDate, oTotalPrice) values
(1,'2006-03-21', null),
(2,'2006-03-23', null),
(1,'2006-03-16', null);


create table Product(
pID int primary key auto_increment not null,
pName varchar(25) not null,
pPrice int not null
);
insert into Product(pName, pPrice) values
('May Giat', 3),
('Tu Lanh', 5),
('Dieu Hoa', 7),
('Quat', 1),
('Bep Dien', 2);


create table OrderDetail(
oID int not null,
pID int not null,
odQTY int not null,
primary key (oID,pID),
foreign key (oID) references Orders (oID),
foreign key (pID) references Product (pID)
);
insert into OrderDetail(oID, pID, odQTY) values
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);

/* (cau2) hien thi hoa don */
select oID, cID, oDate, oTotalPrice
from Orders
order by oDate desc;

/* (cau3) hien thi sp dat nhat  */
select pName, pPrice
from Product
where pPrice = (select max(pPrice) from Product);

/* (cau4) hien thi danh sach KH da mua hang  */
select Customer.cName, Product.pName
from Customer
join Orders 
on Customer.cID = Orders.cID
join OrderDetail
on Orders.oID = OrderDetail.oID
join Product
on OrderDetail.pID = Product.pID;


/* (cau5) hien thi danh sach KH chua mua gi */
select cName
from Customer
where cID not in (select cID from Orders);


/* (cau6) hien thi chi tiet tung hoa don */
select orders.oID, oDate, odQTY, product.pName, product.pPrice
from orders
join orderdetail 
on orders.oID = orderdetail.oID
join product
on orderdetail.pID = product.pID;

/* (cau7) hien thi ma hoa don, ngay ban, gia tien cua tung hoa don */
select orders.oID, oDate, sum(odQTY * pPrice) as Total
from orders
join orderdetail
on orders.oID = orderdetail.oID
join product
on orderdetail.pID = product.pID
group by orders.oID, oDate;
