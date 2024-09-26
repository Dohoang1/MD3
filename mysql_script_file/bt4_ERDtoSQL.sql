create database StorageManagement;
use StorageManagement;

create table Exports(
eID int primary key auto_increment not null,
eDate datetime not null
);

create table Products(
pID int primary key auto_increment not null,
pName varchar(255) not null
);

create table Imports(
iID int primary key auto_increment not null,
iDate datetime not null
);

create table Supplier(
sID int primary key auto_increment not null,
sName varchar(255) not null,
sAddress varchar(255) not null,
sPhone varchar(10) not null
);

create table Orders(
oID int primary key auto_increment not null,
oDate datetime not null,
sID int not null,
foreign key (sID) references Supplier (sID)
);

create table ExportDetail(
edID int primary key auto_increment not null,
edPrice double not null,
edAmount int not null,
eID int not null,
pID int not null,
foreign key (eID) references Exports (eID),
foreign key (pID) references Products (pID)
);

create table ImportDetail(
idID int primary key auto_increment not null,
idPrice double not null,
idAmount int not null,
iID int not null,
pID int not null,
foreign key (iID) references Imports (iID),
foreign key (pID) references Products (pID)
);

create table OderDetail(
odID int primary key auto_increment not null,
odPrice double not null,
odAmount int not null,
oID int not null,
pID int not null,
foreign key (oID) references Orders (oID),
foreign key (pID) references Products (pID)
);


