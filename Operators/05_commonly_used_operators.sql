SELECT * FROM employee;

--show entries where department column is null (IS NULL)
SELECT first_name, last_name, department
FROM employee
WHERE department IS NULL;

--Show table data in ascending order of salary (ORDER BY)
SELECT * FROM employee
ORDER BY salary;

--Show table data in descending order of salary (ORDER BY)
SELECT * FROM employee
ORDER BY salary DESC;

--show top 5 employees with heighest salary (LIMIT)
SELECT first_name, last_name, salary
FROM employee
ORDER BY salary DESC
LIMIT 5;

--Show all departments present in the table (DISTINCT)
SELECT DISTINCT department FROM employee;

--Show number of employees with salary heigher than 50000 (COUNT)
SELECT COUNT (salary>50000) FROM employee;