#Task Three Queries
use hospitaldb;

#1) Show details of all medical departments of hospital.
SELECT deptno, dname, phone
FROM Department
ORDER BY dname;

#2) Contact details of patient “John Bob” whose patient ID is 5612.
SELECT patientno, pname, phone, address
FROM Patient
WHERE patientno = 5612 AND pname = 'John Bob';

#3) Update the patient ID number 3456 contact details.
UPDATE Patient
SET phone = '0857676767',
address = '23 grove Street, Dublin'
WHERE patientno = 3456;
SELECT patientno, pname, phone, address
FROM patient
WHERE patientno = 3456 AND pname = 'tim conn';

#4)Schedule a new medical appointment.
INSERT INTO Appointment VALUES (4013, 3130, 5006, 1071, 2150, '2025-11-29 13:20:27');
SELECT apptid, staffno, patientno, treatmentid, wardid, appt_datetime
FROM Appointment
WHERE apptid = 4013 AND appt_datetime = '2025-11-29 13:20:27';


#5)Details of all patients who have Diabetes.
SELECT p.patientno, p.pname, p.phone, p.address
FROM Patient p
JOIN Illness i ON i.patientno = p.patientno
WHERE i.illnessname = 'Diabetes';

#6) Display the first name and surname of all patients who are under the care of Dr. Kavin Smith.
SELECT
  SUBSTRING_INDEX(p.pname,' ',1)     AS first_name,
  SUBSTRING_INDEX(p.pname,' ',-1)    AS surname,
  p.patientno
FROM Appointment a
JOIN Patient p ON p.patientno = a.patientno
JOIN Staff   s ON s.staffno   = a.staffno
WHERE s.job   = 'Doctor'
  AND s.sname = 'Kavin Smith'
GROUP BY p.patientno, p.pname;

#8) Display the first name, surname, and hire date of all doctors sorted in descending order by hire date.
SELECT
  SUBSTRING_INDEX(s.sname,' ',1)   AS first_name,
  SUBSTRING_INDEX(s.sname,' ',-1)  AS surname,
  s.hiredate
FROM Staff s
WHERE s.job = 'Doctor'
ORDER BY s.hiredate DESC;

#9) Heart Surgery Count
SELECT COUNT(DISTINCT a.patientno) AS heart_surgery_patients
FROM Appointment a
WHERE a.treatmentid = 1000;


