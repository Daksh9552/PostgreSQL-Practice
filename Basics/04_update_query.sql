SELECT * FROM students;

UPDATE students
SET total_percentage = 96
WHERE name = 'Daksh';

SELECT * FROM students
ORDER BY sid ASC;

UPDATE students
SET total_percentage = 65, email_id= 'ramesh12@hotmail.com'
WHERE name = 'Ramesh';

ALTER TABLE students ADD COLUMN "city" VARCHAR (50);

UPDATE students 
 

SET city = 'Kolkata'
WHERE email_id LIKE '%@yahoomail.com';
