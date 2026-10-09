SELECT * FROM students;

-- Deleting an column
ALTER TABLE students DROP COLUMN attendance;

-- Adding a column to table
ALTER TABLE students ADD COLUMN total_percentage INT;

-- Deleting an row
DELETE FROM students WHERE sid=3;

--Deleting table
DROP TABLE IF EXISTS student;-- IF EXISTS Term skips the operation if the table is not in DB

--Deleting Database
DROP DATABASE school;