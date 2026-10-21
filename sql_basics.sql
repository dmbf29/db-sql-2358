-- SQL
-- SELECT ->
-- Select all rows
-- * -> everythign
-- SELECT * FROM table_name;
-- table_name is ALWAYS plural
-- SELECT * FROM doctors;

-- Select specific columns
-- SELECT column_name, column_name FROM table_name;
-- SELECT first_name, last_name FROM doctors;

-- FILTERING -> WHERE
-- SELECT * FROM doctors
-- WHERE id > 2;

-- Adding a second condition
-- AND
-- OR

-- SELECT * FROM doctors
-- WHERE specialty = "Cardiac Surgery";

-- Search through a string -> LIKE %
-- SELECT * FROM doctors
-- WHERE specialty LIKE "cardiac surgery";

-- % -> something can be here
-- SELECT * FROM doctors
-- WHERE specialty LIKE "%surgery%";

-- Ordering
-- SELECT * FROM doctors
-- ORDER BY last_name ASC;

-- Aggregate Functions
-- SELECT COUNT(*) FROM doctors;
-- SELECT AVG(age) FROM doctors;
-- SELECT MIN(age) FROM doctors;
-- SELECT MAX(age) FROM doctors;
-- SELECT ROUND(AVG(age), 2) FROM doctors;

-- GROUP BY comes with a aggregate function
-- SELECT specialty, AVG(age) AS avg FROM doctors
-- GROUP BY specialty
-- ORDER BY avg DESC;

-- SELECT * FROM first_table
-- JOIN second_table ON primary_key = foreign_key

-- SELECT * FROM appointments
-- JOIN doctors ON doctors.id = appointments.doctor_id;



-- SELECT * FROM appointments
-- JOIN doctors ON appointments.doctor_id = doctors.id

-- SELECT * FROM doctors
-- JOIN appointments ON appointments.doctor_id = doctors.id


-- Read all patients first & last names along with their appointment dates
-- SELECT first_name, last_name, occurs_on FROM patients
-- JOIN appointments ON patients.id = appointments.patient_id;

-- Read Charles Collins's appointments dates along with his patients first name & last name
-- SELECT occurs_on, patients.first_name, patients.last_name
-- FROM patients
-- JOIN appointments ON appointments.patient_id = patients.id
-- JOIN doctors ON doctors.id = appointments.doctor_id
-- WHERE doctors.id = 2;


-- Add a record into the DB
INSERT INTO doctors (first_name, age, specialty)
VALUES ('Sheldon', 49, 'Generalist');

-- Kids name
-- Robert'); DROP TABLE doctors; --')

-- Update
-- UPDATE doctors SET age = 40, first_name = 'John', last_name = 'Smith' WHERE id = 3;
-- UPDATE doctors SET last_name = 'Cooper'
-- WHERE id = 12;

-- DELETE
-- DELETE FROM doctors WHERE id = 11;


SELECT * FROM doctors;
