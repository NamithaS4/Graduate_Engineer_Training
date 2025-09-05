USE Employees;

CREATE TABLE Employee (
    ID INTEGER PRIMARY KEY, 
    Name VARCHAR(50),
	Dept VARCHAR(50),
    Salary VARCHAR(40)
);

DROP TABLE Employee;

INSERT INTO Employee (ID, Name, Dept, Salary)
VALUES (1, 'NB' , 'IT', 100000),
(2, 'SD' ,  'IOT' , 100000),
(3, 'Manjit' , 'AI' , 150000),
(4, 'Sahil' , 'Marketing' , 150000),
(5, 'Poojitha' , 'SDE' , 125000);

ALTER TABLE Employee ADD Phone_No BIGINT;

ALTER TABLE Employee ALTER COLUMN Salary INTEGER;

SELECT * FROM Employee;

UPDATE Employee SET Phone_No = CASE
	WHEN ID = 4 THEN 9273648900
	WHEN ID = 5 THEN 9473653850
END;

SELECT * FROM Employee WHERE ID = 3;

SELECT * FROM Employee WHERE ID <> 3;

SELECT * FROM Employee WHERE ID != 3;

SELECT * FROM Employee WHERE ID IN (2,4,6,8);

SELECT * FROM Employee WHERE ID NOT IN (2,4,6,8);

SELECT * FROM Employee WHERE Salary > 100000;

SELECT * FROM Employee WHERE Salary <= 100000;

SELECT * FROM Employee WHERE Salary BETWEEN 100000 AND 125000;

SELECT * FROM Employee WHERE Name LIKE '%a%';

SELECT * FROM Employee WHERE Name NOT LIKE '%a' AND Name NOT LIKE 'a%' AND Name LIKE '%a%';

SELECT * FROM Employee WHERE Phone_No IS NULL;

SELECT * FROM Employee WHERE Phone_No IS NOT NULL;

SELECT * FROM Employee WHERE ID IN (SELECT S_ID FROM Salary WHERE Salary = 150000);

SELECT SUM(Salary) AS Total_Salary FROM Employee;

SELECT MAX(Salary) AS Total_Salary FROM Employee;

SELECT MIN(Salary) AS Total_Salary FROM Employee;

SELECT AVG(Salary) AS Total_Salary FROM Employee;

SELECT COUNT(*) AS Total_Entries FROM Employee;

SELECT COUNT(Phone_No) AS Total_Entries FROM Employee;