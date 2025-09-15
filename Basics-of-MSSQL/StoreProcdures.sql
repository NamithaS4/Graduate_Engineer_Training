USE WindowFunction

DROP PROCEDURE retrive_data;

CREATE PROCEDURE retrive_data
@EmpID INT
AS
BEGIN 
SELECT * 
FROM Employes 
WHERE EmpID = @EmpID OR EmpID <= @EmpID;
END;

EXEC retrive_data @EmpID = 5;

ALTER TABLE Employes
ADD Salary INT;


UPDATE Employes SET Salary = 100000 WHERE EmpID = 1;
UPDATE Employes SET Salary = 200000 WHERE EmpID = 2;
UPDATE Employes SET Salary = 300000 WHERE EmpID = 3;
UPDATE Employes SET Salary = 400000 WHERE EmpID = 4;
UPDATE Employes SET Salary = 400000 WHERE EmpID = 5;



DROP PROCEDURE IF EXISTS check_emp_salary;
GO

CREATE PROCEDURE check_emp_salary
    @EmpID INT
AS
begin
BEGIN TRY
    DECLARE @Salary INT;

    SELECT @Salary = Salary 
    FROM Employes 
    WHERE EmpID = @EmpID;


    IF @Salary >= 400000
        PRINT 'High Salary Employee';
    ELSE IF @Salary >= 200000
        PRINT 'Medium Salary Employee';
    ELSE
        PRINT 'Low Salary Employee';
END TRY
BEGIN CATCH
     PRINT 'ERROR MESSAGE' + ERROR_MESSAGE();
END CATCH
END;

EXEC check_emp_salary @EmpID = 2



USE WindowFunction;
GO

-- Drop procedure if it already exists
DROP PROCEDURE IF EXISTS check_emp_salary_exception;
GO

CREATE PROCEDURE check_emp_salary_exception
    @EmpID INT
AS
BEGIN
    BEGIN TRY
        DECLARE @Salary CHAR;

        
        SELECT @Salary = Salary 
        FROM Employes 
        WHERE EmpID = @EmpID;

    
        IF @Salary >= 400000
            PRINT 'High Salary Employee';
        ELSE IF @Salary >= 200000
            PRINT 'Medium Salary Employee';
        ELSE
            PRINT 'Low Salary Employee';
    END TRY

    BEGIN CATCH
        PRINT 'Error occurred: ' + ERROR_MESSAGE();
    END CATCH
END;
GO

EXEC check_emp_salary_exception @EmpID = 4;



