SELECT * FROM employee;

-- Calculating salary & 10% bonus
SELECT 	first_name,
		salary,
		(salary * 0.10) AS bonus
FROM employee;

-- Calculate annual salary and 5% salary increment, show the monthley new salary as well
SELECT 	first_name, last_name, salary,
		(salary * 0.05) AS salary_increment,
		(salary * 1.05) AS new_salary
FROM employee;