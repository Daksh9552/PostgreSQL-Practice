SELECT * FROM employee;

--AND Operator, Q. Show employees whose age is more than 30 and salary higher than 50000
SELECT first_name, last_name, age, salary
FROM employee
WHERE age>30 AND salary>50000;

--OR Operattor, Q. Show employee with age more than 60 or salary less than 45000
SELECT first_name, last_name, age, salary
FROM employee
WHERE age>60 OR salary < 45000;

--NOT Operator Q. Show all employee except from IT department
SELECT first_name, last_name
FROM employee
WHERE NOT (department = 'IT');