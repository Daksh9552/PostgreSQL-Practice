SELECT * FROM Students;

INSERT INTO Students (name, attendance)
VALUES
('Sarthak', 62.78),
('Atharva', 79.23),
('Manish', 52.01);

TRUNCATE TABLE Students RESTATRT IDENTITY; 
--The term RESTART IDENTITY is use to make the index 0
-- If we don't use it the index will start from where we left.