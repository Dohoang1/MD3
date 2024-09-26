create database exam_score_management;

use exam_score_management;

create table Students(
id int primary key auto_increment not null,
first_name varchar(255) not null,
last_name varchar(255) not null,
gender varchar(10) not null,
birth datetime not null,
idClass int not null,
description varchar(255),
foreign key (idClass) references Classes(id)
);

create table Teachers(
id int primary key auto_increment not null,
first_name varchar(255) not null,
last_name varchar(255) not null,
gender varchar(10) not null,
birth datetime not null
);

create table Classes(
id int primary key auto_increment not null,
className varchar(255) not null unique,
idTeacher int not null unique,
foreign key (idTeacher) references Teachers(id)
);

create table Scores(
id int primary key auto_increment not null,
scoreValue int not null,
idSubject int not null,
idStudent int not null,
foreign key (idSubject) references Subject(id),
foreign key (idStudent) references Students(id)
);

create table Subject(
id int primary key auto_increment not null,
subjectName varchar(255) not null unique
);


create view cau1 as
select id , concat (first_name, ' ', last_name) as 'Name', 
birth from Students;


create view cau2 as
select id , concat (first_name, ' ', last_name) as 'Name', 
birth from Students where day(birth) = 20;


create view cau3 as
select id , concat (first_name, ' ', last_name) as 'Name', 
birth from Students where birth = '1999-09-06';


create view cau4 as
select id , concat (first_name, ' ', last_name) as 'Name', 
birth from Students where last_name = 'NA';


create view cau5 as
select id , concat (first_name, ' ', last_name) as 'Name', 
birth from Students where last_name like 'N%';


create view cau6 as
select id , concat (first_name, ' ', last_name) as 'Name', 
birth from Students where last_name like '%NA%';


create view cau7 as
select count(*) as 'number of students'
from Students where last_name like 'N%';

create view cau8 as
select concat(Students.first_name, ' ', Students.last_name) as 'Name',
Students.birth, className,
concat(teachers.first_name, ' ', teachers.last_name) as 'Teacher'
from Students 
join Classes on students.idClass = Classes.id
join Teachers on classes.idTeacher = teachers.id;



create view cau9 as
select concat(Students.first_name, ' ', Students.last_name) as 'Name', Students.birth,
coalesce(avg(Scores.scoreValue),0) as Avg,
case
when coalesce(avg(Scores.scoreValue),0) >= 9.5 then 'HS Xuat Sac'
when coalesce(avg(Scores.scoreValue),0) >= 8 then 'HS Gioi'
when coalesce(avg(Scores.scoreValue),0) >= 7 then 'HS Kha'
when coalesce(avg(Scores.scoreValue),0) >= 5 then 'HS TB'
else 'HS Yeu'
end as Ranking
from Students
left join Scores on students.id = Scores.idStudent
group by Students.id;

create view cau10 as
select 
Classes.className,
count(Students.id) as 'number of Students'
from 
classes
left join 
Students on Classes.id = Students.idClass
group by
Classes.className;

create view cau11 as
select 
Classes.className as 'so lop co HS > 5'
from 
classes
left join 
Students on Classes.id = Students.idClass
group by
Classes.className
having count(Students.id) > 5;



