DROP TABLE IF EXISTS students_2025;

--CREATING FIRST TABLE students_2025

CREATE TABLE students_2025(
	sid SERIAL PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50),
	marks SMALLINT
);

INSERT INTO students_2025 (first_name, last_name, marks) 
VALUES
	('Sarthak', 'Raut', 54),
	('Vineet', 'Unde', 67),
	('Atharv', 'Shinde', 86),
	('Manish', 'Londhe', 74),
	('Om', 'Dangre', 43);

SELECT * FROM students_2025;

--CREATING SECOND TABLE students_2026
CREATE TABLE students_2026(
	sid SERIAL PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50),
	marks SMALLINT
);

INSERT INTO students_2026 (first_name, last_name, marks) 
VALUES
	('Sarthak', 'Raut', 54),
	('Vineet', 'Unde', 67),
	('Vishal', 'Shinde', 79),
	('Krushna', 'Nalkar', 85),
	('Sumit', 'Vairagar', 95);

SELECT * FROM students_2026;

--UNION Operator(Selects common attributes, remove duplicates)
SELECT * FROM students_2025 
UNION
SELECT * FROM students_2026 ORDER BY sid;

--UNION ALL Operator (Select all attributes with duplicates)
SELECT * FROM students_2025 
UNION All
SELECT * FROM students_2026 ORDER BY sid;

--INTERSECT Operator (Selects only attributs that are common in both table)
SELECT * FROM students_2025 
INTERSECT
SELECT * FROM students_2026 ORDER BY sid;

--EXCEPT operator (Select attributes that exist in first table but not in second)
SELECT * FROM students_2025 
EXCEPT
SELECT * FROM students_2026 ORDER BY sid;