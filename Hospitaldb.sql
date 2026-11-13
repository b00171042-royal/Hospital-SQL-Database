USE hospitaldb;

DROP TABLE IF EXISTS Appointment;
DROP TABLE IF EXISTS Illness;
DROP TABLE IF EXISTS Treatment;
DROP TABLE IF EXISTS Ward;
DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Department;



Create Table Department (
  deptno 	INT				NOT NULL,
  dname		VARCHAR(14)		NOT NULL,
  phone 	VARCHAR(10),
 Constraint Department_Primary_Key Primary Key (deptno)
 );
 
insert into Department values (1010, 'Orthopedics', '9207313818');
insert into Department values (1020, 'Cardiology', '3194899413');
insert into Department values (1030, 'Pediatrics', '2339184027');
insert into Department values (1040, 'Surgical', '9051070686');
insert into Department values (1050, 'ICU', '6529656326');
insert into Department values (1060, 'Emergency', '9083372740');
insert into Department values (1070, 'Oncology', '2202222447');
insert into Department values (1080, 'Radiology', '1215384520');
insert into Department values (1090, 'Obstetrics', '4823960165');
insert into Department values (1100, 'Office', '8404699453');

Create Table Ward (
wardid			INT				NOT NULL,
wardname		VARCHAR(50)		NOT NULL,
deptno			INT				NOT NULL,
constraint Ward_Primary_Key primary key (wardid),
constraint Ward_Department_FK foreign key (deptno) references Department (deptno)
);

insert into Ward values (2010, 'Odio', 1010);
insert into Ward values (2020, 'Nullam', 1010);
insert into Ward values (2030, 'Maurisqqqq', 1020);
insert into Ward values (2040, 'Consequat', 1020);
insert into Ward values (2050, 'Donec', 1030);
insert into Ward values (2060, 'Lacinia', 1030);
insert into Ward values (2070, 'Lobortis', 1040);
insert into Ward values (2080, 'Erat', 1040);
insert into Ward values (2090, 'Etiam', 1050);
insert into Ward values (2100, 'Dolor', 1060);
insert into Ward values (2110, 'Suspendisse', 1060);
insert into Ward values (2120, 'Vestibulum', 1060);
insert into Ward values (2130, 'Libero', 1070);
insert into Ward values (2140, 'Ace', 1070);
insert into Ward values (2150, 'Amet', 1080);
insert into Ward values (2160, 'Muse', 1080);
insert into Ward values (2170, 'Orci', 1090);
insert into Ward values (2180, 'Purus', 1090);
insert into Ward values (2190, 'Icarus', 1100);
insert into Ward values (2200, 'Kino', 1100);

Create Table Staff (
 staffno	INT 			NOT NULL,
 sname		VARCHAR(100)	NOT NULL,		
 job		VARCHAR(20)		NOT NULL,	
 mgr		INT				NULL,
 deptno		INT				NOT NULL,				
 hiredate	DATE			NOT NULL,                    
 Constraint Staff_Primary_Key primary key (staffno),
 Constraint Staff_Department_FK foreign key (deptno) references Department (deptno),
 Constraint Staff_CEO_FK foreign key (mgr) references Staff (staffno) 
 );
 
insert into Staff values (3010, 'Georgina Aujouanet', 'Administrator', NULL, 1050, '2020-01-15');
insert into Staff values (3020, 'Justina Adamides', 'Office worker', NULL, 1010, '2021-03-01');
insert into Staff values (3030, 'Constanta Errett', 'Nurse', NULL, 1070, '2020-10-26');
insert into Staff values (3040, 'Gayle Bamlett', 'Nurse', NULL, 1020, '2017-10-22');
insert into Staff values (3050, 'Cortie Bereford', 'Doctor', NULL, 1070, '2012-06-19');
insert into Staff values (3060, 'Sergeant Giaomozzo', 'Support', NULL, 1020, '2017-05-02');
insert into Staff values (3070, 'Beniamino Catmull', 'Doctor', NULL, 1090, '2020-05-14');
insert into Staff values (3080, 'Hube Andover', 'Doctor',  NULL, 1010, '2015-05-04');
insert into Staff values (3090, 'Gennifer Stirley', 'Administrator', NULL, 1040, '2019-09-09');
insert into Staff values (3100, 'Agnella Forty', 'Research', NULL, 1060, '2022-03-12');
insert into Staff values (3110, 'Christyna MacTeggart', 'Office worker', NULL, 1060, '2014-11-05');
insert into Staff values (3120, 'Vernor Buttfield', 'IT Support', NULL, 1080, '2013-04-17');
insert into Staff values (3130, 'Pippo Swyn', 'Doctor', NULL, 1080, '2015-01-06');
insert into Staff values (3140, 'Erma Dickson', 'Administrator', NULL, 1030, '2018-12-29');
insert into Staff values (3150, 'Clarice Zucker', 'Nurse', NULL, 1060, '2020-11-06');
insert into Staff values (3160, 'Rebeka Damp', 'Support', NULL, 1050, '2017-10-29');
insert into Staff values (3170, 'Cordie Wark', 'Doctor', NULL, 1010, '2018-08-23');
insert into Staff values (3180, 'Rey Downing', 'Nurse', NULL, 1050, '2008-09-28');
insert into Staff values (3190, 'Marie Rudyard', 'Office worker', NULL, 1020, '2019-03-04');
insert into Staff values (3200, 'Cobbie Amthor', 'Doctor', NULL, 1020, '2017-09-10');
insert into Staff values (3210, 'Kavin Smith', 'Doctor', NULL, 1010, '2012-12-03');
insert into Staff values (3220, 'Michael Dean', 'CEO', NULL, 1100, '2008-01-01');
 
 Create Table Patient (
  patientno INT				NOT NULL,
  pname		VARCHAR(30)		NOT NULL, 
  dob		DATE,
  phone		VARCHAR(10),
  address	VARCHAR(40),
  deptno	int				NOT NULL,
  Constraint Patient_Primary_Key primary key (patientno),
  constraint Patient_Department_FK foreign key (deptno) references Department (deptno)
  );
  
insert into Patient values (5612, 'John Bob', '1980-07-15', '0851111111', '12 Oak Road', 1010);
insert into Patient values (3456, 'tim conn', '1990-03-12', '0852222222', '45 River Street', 1020);
insert into Patient values (5001, 'Kipper Gai', '1975-10-02', '0853333333', '3 lucan Road', 1030);
insert into Patient values (5002, 'Noel Gerwood', '1988-09-09', '0854444444', '6 liffey Avenue', 1040);
insert into Patient values (5003, 'Marinna Odd', '1979-11-01', '0855555555', '9 tallahht Road', 1050);
insert into Patient values (5004, 'Rodolfo Rosencratz', '1986-02-18', '0856666666', '14 blanch Road', 1060);
insert into Patient values (5005, 'Garner Bartod', '1997-01-22', '0857777777', '51 grange Street', 1070);
insert into Patient values (5006, 'Andriette Menilove', '2001-04-19', '0858888888', '88 Cherry Road', 1080);
insert into Patient values (5007, 'Hamlen Grinin', '1992-09-30', '0859999999', '21 Rainbow Road', 1090);
insert into Patient values (5008, 'Vanya Abrams', '1978-05-10', '0851010101', '2 finglas Close', 1100);
insert into Patient values (5009, 'Mal Cathie', '1983-07-11', '0852020202', '77 table Lane', 1030);
insert into Patient values (5010, 'Dermot Cottie', '1995-02-05', '0853030303', '44 ticknock Road', 1100);

Create Table Treatment (
 treatmentid	INT				NOT NULL,
 wardid			INT 			NOT NULL,
 deptno			INT				NOT NULL,
 constraint Treatment_Primary_Key primary key (treatmentid),
 constraint Treatment_Department_FK foreign key (deptno) references Department (deptno),
 constraint Treatment_Ward_FK foreign key (wardid) references Ward (wardid)
 );
 
insert into Treatment values (1001, 2010, 1010);
insert into Treatment values (1002, 2020, 1010);
insert into Treatment values (1011, 2030, 1020);
insert into Treatment values (1012, 2040, 1020);
insert into Treatment values (1021, 2050, 1030);
insert into Treatment values (1022, 2060, 1030);
insert into Treatment values (1000, 2070, 1040);
insert into Treatment values (1032, 2080, 1040);
insert into Treatment values (1041, 2090, 1050);
insert into Treatment values (1042, 2160, 1050);
insert into Treatment values (1051, 2100, 1060);
insert into Treatment values (1052, 2110, 1060);
insert into Treatment values (1061, 2130, 1070);
insert into Treatment values (1062, 2140, 1070);
insert into Treatment values (1071, 2150, 1080);
insert into Treatment values (1072, 2160, 1080);
insert into Treatment values (1081, 2170, 1090);
insert into Treatment values (1082, 2180, 1090);
insert into Treatment values (1091, 2190, 1100);
insert into Treatment values (1092, 2200, 1100);

Create Table Illness (
 illnessname	VARCHAR(20)		NOT NULL,
 patientno		INT				NOT NULL,
 Constraint Illness_Primary_Key primary key (patientno, illnessname),
 Constraint Illness_Patient_FK foreign key (patientno) references Patient (patientno)
 );
  
insert into Illness values ('Diabetes', 5612);
insert into Illness values ('Flu', 3456);
insert into Illness values ('Asthma', 5001);
insert into Illness values ('Diabetes', 5002);
insert into Illness values ('Flu', 5003);
insert into Illness values ('Hypertension', 5004);
insert into Illness values ('Migraine', 5005);
insert into Illness values ('Diabetes', 5006);
insert into Illness values ('Allergy', 5007);
insert into Illness values ('Arthritis', 5008);
insert into Illness values ('Diabetes', 5009);
insert into Illness values ('Anxiety', 5010);
  
Create Table Appointment (
 apptid			INT			NOT NULL,
 staffno		INT			NOT NULL,
 patientno		INT			NOT NULL, 
 treatmentid	INT			NOT NULL,
 wardid			INT,	
 appt_datetime	DATETIME	NOT NULL,
 Constraint Appointment_Primary_Key primary key (apptid),
 constraint Appointment_Staff_FK foreign key (staffno) references Staff (staffno),
 constraint Appointment_Patient_FK foreign key (patientno) references Patient (patientno),
 constraint Appointment_Treatment_FK foreign key (treatmentid) references Treatment (treatmentid),
 constraint Appointment_Ward_FK foreign key (wardid) references Ward (wardid)
 );
 
 
insert into Appointment values (4001, 3210, 5612, 1000, 2070, '2025-06-15 03:06:35');
insert into Appointment values (4002, 3200, 3456, 1011, 2030, '2025-03-07 12:23:56');
insert into Appointment values (4003, 3200, 5001, 1021, 2050, '2025-09-21 12:38:04');
insert into Appointment values (4004, 3050, 5002, 1032, 2080, '2025-04-07 16:47:50');
insert into Appointment values (4005, 3170, 5003, 1041, 2090, '2025-08-22 22:15:35');
insert into Appointment values (4007, 3050, 5005, 1061, 2130, '2025-05-17 20:14:27');
insert into Appointment values (4008, 3130, 5006, 1071, 2150, '2025-05-15 01:44:38');
insert into Appointment values (4009, 3070, 5007, 1081, 2170, '2024-12-15 13:01:08');
insert into Appointment values (4010, 3080, 5008, 1091, 2190, '2025-06-11 20:15:16');
insert into Appointment values (4011, 3080, 5612, 1001, 2010, '2025-05-15 19:42:50');
insert into Appointment values (4012, 3200, 5009, 1011, 2030, '2025-04-23 13:14:30');
 


 


