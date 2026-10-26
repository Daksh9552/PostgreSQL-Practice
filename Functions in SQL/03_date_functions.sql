SELECT * FROM products;

--1) Get current date and time (NOW)
SELECT NOW() AS currentdatetime;

--2) Get current date and subtract date column in products table from it (CURRENT_DATE)
SELECT CURRENT_DATE AS "current_date";

SELECT (CURRENT_DATE - added_date) AS "age"
FROM products;

--3) Extact day mont and year saperately from date column (EXTRACT)
SELECT EXTRACT (YEAR FROM added_date)
		AS added_year,
		EXTRACT (MONTH FROM added_date)
		AS added_month,
		EXTRACT (DAY FROM added_date)
		AS added_day
FROM products;

--4) Calculate time difference between current date and added date from products table (AGE)
SELECT AGE (CURRENT_DATE, added_date)
AS time_difference
FROM products;

--5) Change the date format of added_date column to "DD-MON-YYYY" (TO_CHAR)
SELECT TO_CHAR(added_date, 'DD-Mon-YYYY') 
FROM products;

--6) Show which day of week it was when the product was added (DATE_PART)
SELECT DATE_PART ('dow', added_date)
AS day_of_week
FROM products;

--7) Show starting date of the week when the product was added (DATE_TRUNC)

SELECT DATE_TRUNC ('WEEK', added_date)
AS added_week
FROM products;

--8) Add 6 month interval to each date in added_date (INTERVAL)
SELECT added_date + INTERVAL '6MONTHS'
AS new_date
FROM products;

--9) show current time (CURRENT_TIME)
SELECT CURRENT_TIME AS "current_time";

--10) Convert a strig of date to actual date "datatype" (TO_DATE)
SELECT TO_DATE ('28-12-2007', 'DD-MM-YYYY') AS "date";






