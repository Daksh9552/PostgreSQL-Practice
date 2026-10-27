-- Create Employees Table
CREATE TABLE Employees3 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

-- Insert Data into Employees
INSERT INTO Employees3 (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit', 'Verma', 103),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);

SELECT * FROM employees3;

-- Create Departments Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert Data into Departments
INSERT INTO Departments (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');


SELECT * FROM Departments;

--1) show only common elements in both table (INNER JOIN)

SELECT e.employee_id, e.first_name, d.department_name
FROM employees3 e
INNER JOIN 
	departments d
ON e.department_id = d.department_id;

--2) show all elements in employees table and only common elements from departments table (LEFT JOIN)
SELECT e.employee_id, e.first_name, d.department_name
FROM employees3 e
LEFT JOIN 
	departments d
ON e.department_id = d.department_id;

--3) show all elements in departments table and only common elements from employees table (RIGHT JOIN)
SELECT e.first_name, d.department_name, d.department_id
FROM employees3 e
RIGHT JOIN 
	departments d
ON e.department_id = d.department_id;

--4) show everything from both tables (FULL OUTER JOIN)
SELECT e.employee_id, e.first_name, e.last_name,
		d.department_id, d.department_name
FROM employees3 e
FULL OUTER JOIN
	departments d
ON e.department_id = d.department_id;

--5) give all possible combinations of first name and department name from the tables (CROSS JOIN)
SELECT e.first_name, d.department_name
FROM employees3 e
CROSS JOIN
	departments d;

--6) find the employees with same department id in employees table (SELF JOIN)
SELECT e1. first_name, e2.first_name, e2.department_id
FROM employees3 e1 JOIN employees3 e2
ON e1.department_id= e2.department_id AND e1.employee_id != e2.employee_id;























