CREATE DATABASE Smart_Meter

USE Smart_Meter

--created table named as customers
CREATE TABLE Customers (
    CustomerId INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Region VARCHAR(50)
);

INSERT INTO Customers 
VALUES 
 (1,'A','add1','North'),
 (2,'B','add2','South'),
 (3,'C','add3','East'),
 (4,'D','add4','West'),
 (5,'E','add5','North')

 SELECT * FROM Customers
 
--created table named as smartmeterreadings
CREATE TABLE SmartMeterReadings (
    MeterId INT,
    CustomerId INT,
    Location VARCHAR(100),
    InstalledDate DATE,
    ReadingDateTime DATETIME,
    EnergyConsumed DECIMAL(10,2),
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);
DROP TABLE SmartMeterReadings

INSERT INTO SmartMeterReadings (MeterId,CustomerId,Location,InstalledDate,
ReadingDateTime,EnergyConsumed) 
VALUES 
(100,1,'add1','2020-01-01','2020-02-02', 11.11),
(200,2,'add2','2021-01-01','2021-02-02',22.22),
(300,3,'add3','2022-01-01','2022-02-02',33.33),
(400,4,'add4','2023-01-01','2023-02-02',44.4),
(500,5,'add5','2024-01-01','2024-02-02',55.55),
(100,1,'add1','2020-01-02','2020-02-02',40.55)

SELECT * FROM SmartMeterReadings

--TASK 1
SELECT MeterId, ReadingDateTime, EnergyConsumed
FROM SmartMeterReadings WHERE 
    EnergyConsumed BETWEEN 10 AND 50
    AND ReadingDateTime BETWEEN '2022-01-01' AND '2024-12-31'
    AND InstalledDate <= '2023-06-30';

--TASK 2

SELECT 
    c.CustomerId,
    AVG(s.EnergyConsumed) AS AvgEnergy,
    MAX(s.EnergyConsumed) AS MaxEnergy
FROM 
    Customers c INNER JOIN SmartMeterReadings s ON 
	c.CustomerId = s.CustomerId GROUP BY c.CustomerId;