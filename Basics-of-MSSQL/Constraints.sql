USE Employees;

CREATE TABLE University (
    ID INTEGER PRIMARY KEY IDENTITY (1,1), 
    Names VARCHAR(100),
	Dept VARCHAR(100),
    Fees FLOAT
);

ALTER TABLE University ADD Email VARCHAR(100) UNIQUE;

INSERT INTO University (Names, Dept, Fees, Email)
VALUES ('Akash' , 'Mechanical', 300000.00, 'akash@gmail.com'),
('Shanaya' ,  'AI/ML' , 600000.00, 'shanaya@gmail.com'),
('Priyanka' , 'CSE' , 500000.00, 'priyanka@gmail.com'),
('Rohit' , 'ECE' , 400000.00, 'rohit@gmail.com'),
('Priya' , 'CSE' , 500000.00, 'priya@gmail.com');

SELECT * FROM University;

DROP TABLE University;

CREATE TABLE Student (
    StudentID INTEGER, 
    StudentName VARCHAR(100),
	Class VARCHAR(100),
	FOREIGN KEY (StudentID) REFERENCES University(ID)
);

DROP TABLE Student;

SELECT * FROM Student;

INSERT INTO Student (StudentID, StudentName, Class)
VALUES (1, 'Akash' , 'Mechanical'),
(2, 'Shanaya' ,  'AI/ML'),
(3, 'Priyanka' , 'CSE'),
(4, 'Rohit' , 'ECE'),
(5, 'Priya' , 'CSE');

DELETE FROM University WHERE ID = 4;

INSERT INTO Student (StudentID, StudentName, Class) VALUES (6, 'Meenal' , 'ECE');