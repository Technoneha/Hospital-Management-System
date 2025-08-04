---Doctor Table
create Table Doctors(
 doctor_id SERIAL primary key,
 name varchar(100),
 specialty varchar(100),
 phone varchar(15)
);

select * from Doctors

---INSERT DOCTORS
INSERT INTO Doctors(name,specialty,phone)
values
('Dr Saurabh','cardiologist','9878345689'),
('Dr sk dubey','pediatrician','9876567459');


---Patient tabel
create table patient(
  patient_id SERIAL PRIMARY KEY,
  name varchar (100)not null,
  age int,
  gender varchar(10),
  phone varchar(15)
);

SELECT * FROM patient

insert into patient(name,age,gender,phone)
values
('Surbhi',30,'Female','8757886738'),
('Kant',76,'Male','7898564733');


---Appointment table
create table appointment(
  appointments_id SERIAL primary key,
  Patient_id INT REFERENCES patient(patient_id) ,
  doctor_id INT REFERENCES Doctors(doctor_id),
  date DATE,
  time TIME
);

select * from appointment


insert into appointment(patient_id,doctor_id,date,time)values
(1,1,'2025-09-09','10:00'),
(2,2,'2025-09-10','11:15');


---Medication Table 
create table medication(
  medication_id SERIAL primary key,
  name Varchar(100),
  description TEXT,
  cost NUMERIC(10,2)
);

insert into medication(name,description,cost)values
('paracetamole','used to treat for fever and pain',10.00),
('Amoxicillin','antibiotic For infection',20.00);

select * from medication

---precription table

create table prescription(
  precription_id SERIAL primary key,
  appointments_id INT REFERENCES appointment(appointments_id),
  medication_id INT REFERENCES medication(medication_id),
  dosage VARCHAR(50),
  frequency VARCHAR(50),
  duration VARCHAR(50),
  instruction TEXT
);

insert into prescription(appointments_id,medication_id,dosage,frequency,duration,instruction)
values
(1,1,'500mg','2 times a day','5 days','after breakfast'),
(2,2,'250mg','3 times a day','7 days','before meal');

select * from prescription
