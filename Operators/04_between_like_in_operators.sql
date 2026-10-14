SELECT * FROM employee;

--Show employees whose salary between 40000 & 60000 (BEWEEN Operator)
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 40000 AND 60000;

--Show employees whose email is on gmail (LIKE Operator)
SELECT first_name, last_name, email
FROM employee
WHERE email LIKE '%gmail.com';

--Show employees from Finance, IT and HR department
SELECT first_name, last_name, department
FROM employee
WHERE department IN ('Finance', 'HR', 'IT');

