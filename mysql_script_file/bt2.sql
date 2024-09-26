create database QuanLySinhVien;
use QuanLySinhVien;

create table Class(
ClassID int primary key auto_increment not null,
ClassName varchar(60) not null,
StartDate datetime not null,
Status bit
);

create table Student(
StudentID int primary key auto_increment not null,
StudentName varchar (30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
ClassID int not null,
foreign key(ClassID) references Class(ClassID)
);

create table Subject(
SubID int not null auto_increment primary key,
SubName varchar(30) not null,
Credit tinyint not null default 1 check (credit >=1),
Status bit default 1
);

	create table Mark(
	MarkID int primary key auto_increment not null,
	SubID int not null unique,
	StudentID int not null unique,
	Mark Float check (Mark between 0 and 100) default 0 ,
	ExamTimes tinyint Default 1,
    foreign key(SubID) references Subject(SubID),
    foreign key(StudentID) references Student(StudentID)
	);