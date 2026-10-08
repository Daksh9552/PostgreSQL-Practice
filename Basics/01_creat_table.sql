CREATE TABLE Teachers(
	Day VARCHAR (50) Primary Key,
	Name VARCHAR (100) Not NULL,
	Subject VARCHAR (50),
	Lecture_Time TIME
);

SELECT * FROM Teachers;

CREATE TABLE Stubent(
	sid SERIAL Primary Key,
	name VARCHAR (100),
	attendance NUMERIC (4,2)
)

SELECT * FROM Stubent;