SELECT * FROM employee;

--Get employees with age 30 and heigher
SELECT first_name, last_name, age
FROM employee
WHERE age>=30;

--Get employees with salary 50000 and lower than that.
SELECT first_name, last_name, salary
FROM employee
WHERE salary<=50000;

--Retrive employees from IT department
SELECT first_name, last_name, department
FROM employee 
WHERE department = 'IT';

--Retrive all employees except from Finance department
SELECT first_name, last_name, department
FROM employee 
WHERE department != 'Finance'; -- we can also use "<>" insted of "!="
