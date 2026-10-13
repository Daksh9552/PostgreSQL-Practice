DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
employee_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR (50),
salary INT,
joining_date DATE,
age INT

);

SELECT * FROM employee;

ALTER TABLE employee
ALTER COLUMN salary TYPE NUMERIC (10,2)

COPY
employee (employee_id, first_name, last_name, department, salary, joining_date, age )
FROM 'D:\New folder\employee_data.csv'
DELIMITER ','
CSV HEADER;