
USE Employees;

CREATE TABLE Employee (
    EmpID INTEGER PRIMARY KEY, 
    Name VARCHAR(50),
	Branch VARCHAR(100),
    Salary FLOAT
);

INSERT INTO Employee (EmpID, Name, Branch, Salary)
VALUES (1, 'Akash' , 'Mechanical', 100000.00),
(2, 'Shanaya' ,  'AI/ML' , 200000.00),
(3, 'Priyanka' , 'CSE' , 300000.00),
(4, 'Rohit' , 'ECE' , 400000.00),
(5, 'Priya' , 'CSE' , 500000.00);

SELECT * FROM Employee;

SELECT * FROM Employee WHERE Salary > 100000;

UPDATE Employee SET Name = 'Shivam' WHERE EmpID = 4;

DELETE FROM Employee WHERE Name = 'Shivam';

ALTER TABLE Employee ADD Phone_No VARCHAR(50);

ALTER TABLE Employee ALTER COLUMN Phone_No BIGINT;

EXEC sp_help Employee;

ALTER TABLE Employee DROP COLUMN Phone_No;

EXEC sp_rename 'Employee.Name' , 'Emp_Name' , 'Column';

EXEC sp_rename 'Employees' , 'Employee';

SELECT SUM(Salary) AS Total_Salary FROM Employee;

SELECT TOP 3 Emp_Name, Salary FROM Employee ORDER BY Salary DESC;

SELECT Emp_Name, Salary FROM Employee ORDER BY Salary DESC OFFSET 2 ROWS FETCH NEXT 3 ROWS ONLY;

TRUNCATE TABLE Employee;

DROP TABLE Employee;

DROP DATABASE Employees;