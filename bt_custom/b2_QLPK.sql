create database QLPK;
use QLPK;

/*
1. muc dich : qly phong kham

2. xd cac doi tuong, field cua cac doi tuong, pk:
+ Doctor: doctor_ID, doctor_name, specialized, doctor_phone, email, exp
+ Patient: patient_ID, patient_name, patient_age, patient_gender, patient_phone, patient_address, medical_history, patient_status, diagnose
+ Appointment: appointment_ID, appointment_date, patient_ID, doctor_ID, appointment_status
+ Prescription: prescription_ID, doctor_ID, patient_ID, medic_ID, dosage, user_manual
+ Invoice: invoice_ID, patient_ID, total_fee, payment_method, payment_date, prescription_ID
+ Medicine: medic_ID, medic_name, medic_effect, medic_quantity, measure_unit, medic_price

3. xd cac mqh
doctor - patient : n - n 
Doctor - Appointment : 1 - n
Doctor - Prescription : 1 - n
Patient - Appointment : 1 - n
Patient - Invoice : 1 - n
Patient - Prescription : 1 - n
Invoice - Prescription : 1 - n
Prescription - Medicine : 1 - n
*/

create table Doctor(
doctor_ID int primary key auto_increment not null,
doctor_name varchar(255) not null,
specialized varchar(255) not null,
doctor_phone varchar(10) not null unique check (doctor_phone regexp '^[0-9]+$'),
email varchar(255) not null unique check (email like '%@gmail.com'),
exp_year tinyint(2)
);

create table Patient(
patient_ID int primary key auto_increment not null,
patient_name varchar(255) not null,
patient_age tinyint(3) not null,
patient_gender varchar(20) not null check (patient_gender in ('male', 'female')),
patient_phone varchar(10) not null unique check (patient_phone regexp '^[0-9]+$'),
patient_address varchar(255),
medical_history varchar(255),
patient_status varchar(255) not null,
diagnose varchar(255)
);

create table Appointment(
appointment_ID int primary key auto_increment not null, 
appointment_date datetime not null, 
patient_ID int not null, 
doctor_ID int not null, 
appointment_status varchar(255) not null check(appointment_status in ('unfinished', 'completed')),
foreign key(patient_ID) references Patient(patient_ID),
foreign key(doctor_ID) references Doctor(doctor_ID),
unique (appointment_date, patient_ID),
unique (appointment_date, doctor_ID),
unique (appointment_date, patient_ID, doctor_ID)
);


create table Medic(
medic_ID int primary key auto_increment not null, 
medic_name varchar(255) not null unique, 
medic_effect varchar(255) not null, 
medic_quantity int not null, 
measure_unit varchar(255) not null, 
medic_price double not null
);

create table Prescription (
prescription_ID int primary key auto_increment not null, 
doctor_ID int not null,
patient_ID int not null,
medic_ID int not null,
medic_quantity int not null,
user_manual varchar(255),
foreign key (doctor_ID) references Doctor(doctor_ID),
foreign key (patient_ID) references patient(patient_ID),
foreign key (medic_ID) references Medic(medic_ID)
);


create table Invoice(
invoice_ID int primary key auto_increment not null, 
patient_ID int not null, 
prescription_ID int not null,
total_fee double not null, 
payment_method varchar(255) not null, 
payment_date datetime not null,
foreign key (patient_ID) references Patient(patient_ID),
foreign key(prescription_ID) references Prescription(prescription_ID)
);