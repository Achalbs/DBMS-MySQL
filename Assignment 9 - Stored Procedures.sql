CREATE DATABASE Worker;
USE Worker;

-- ______________________________________________________________________Defining the Worker table structure_______________________________________________________________________________________

CREATE TABLE Worker (
	
	Worker_Id INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary	INT,
    JoiningDate DATETIME,
    Department VARCHAR(50)
    );
    
    
-- ________________________________________________________________1. Procedure to add workers into Worker table giving input parameters___________________________________________________________

DELIMITER $$

CREATE PROCEDURE AddWorker(
    IN P_Worker_Id INT,
    IN P_FirstName CHAR(50),
    IN P_LastName CHAR(50),
    IN P_Salary INT,
    IN P_JoiningDate DATETIME,
    IN P_Department VARCHAR(50)
)
BEGIN
    INSERT INTO Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department)
    VALUES (P_Worker_Id, P_FirstName, P_LastName, P_Salary, P_JoiningDate, P_Department);
END$$

DELIMITER ;

-- ______________________________________________________________________________________Procedure Call_____________________________________________________________________________________________


CALL AddWorker(1, 'Anusree', 'Gupta', 50000, '2024-01-01', 'HR');
CALL AddWorker(2, 'Sachin', 'Tendulkar', 150000, '2024-01-01', 'Management');
CALL AddWorker(3, 'Jack', 'Reacher', 70000, '2024-08-12', 'Security');
CALL AddWorker(4, 'Harry', 'Potter', 15000, '2022-01-01', 'Technicial');
CALL AddWorker(5, 'Sudeesh', 'Menon', 350000, '2022-09-01', 'Sales');
CALL AddWorker(6, 'Virat', 'Shetty', 600000, '2020-09-01', 'Finance');
CALL AddWorker(7, 'John', 'Smith', 450000, '2020-10-01', 'Sales');
CALL AddWorker(8, 'Äntony', 'Hopkins', 15000, '2023-09-01', 'Security');
CALL AddWorker(9, 'Gary', 'Oldman', 350000, '2020-01-01', 'Management');
CALL AddWorker(10, 'Samridhi', 'Shukla', 50000, '2024-09-01', 'HR');

select * from Worker;



-- ___________________________________________________2.Stored Procedure to Retrieve Salary(Out Parameter) Based on Worker ID(In Parameter) _______________________________________________________________________



DELIMITER $$

CREATE PROCEDURE GetWorkerSalary(
    IN Id INT,
    OUT W_Salary INT
)
BEGIN
    SELECT Salary INTO W_Salary
    FROM Worker
    WHERE Worker.Worker_Id = Id;
END$$

DELIMITER ;


-- __________________________________________________________________________________________Procedure Call_______________________________________________________________________________________


SET @Salary = 0;
CALL GetWorkerSalary(1, @Salary);
SELECT @Salary AS WorkerSalary;



-- ___________________________________________________________________3. Stored Procedure to update Department with the given the Worker Id______________________________________________________________________________


DELIMITER $$

CREATE PROCEDURE UpdateWorkerDepartment(
    IN Id INT,
    IN Dept CHAR(50)
)
BEGIN
    UPDATE Worker
    SET Department = Dept
    WHERE Worker_Id = Id;
END$$

DELIMITER ;

-- ___________________________________________________________________________________________Procedure Call________________________________________________________________________________________


CALL UpdateWorkerDepartment(1, 'Finance');


SELECT * FROM Worker;

-- __________________________________________________________________4. Stored Procedure to Count Workers in a Department__________________________________________________________________________

DELIMITER $$

CREATE PROCEDURE GetWorkerCountByDepartment(
    IN Dept CHAR(50),
    OUT WorkerCount INT
)
BEGIN
    SELECT COUNT(*) INTO WorkerCount
    FROM Worker
    WHERE Department = Dept;
END$$

DELIMITER ;

-- _______________________________________________________________________________________Procedure Call____________________________________________________________________________________________


SET @WorkerCount = 0;
CALL GetWorkerCountByDepartment('Finance', @WorkerCount);
SELECT @WorkerCount AS WorkerCount;



-- _________________________________________________________________5. Stored Procedure to Get Average Salary of a Department______________________________________________________________________


DELIMITER $$

CREATE PROCEDURE DeptAvgSalary(
	IN Dept VARCHAR(50),
    OUT AvgSalary FLOAT(10,2)
)

BEGIN
	SELECT AVG(Salary) INTO AvgSalary FROM Worker GROUP BY Worker.Department HAVING Worker.Department= Dept;
END $$

DELIMITER ;

-- ____________________________________________________________________________________Procedure Call_____________________________________________________________________________________________

SET @AvgSalary = 0.00;
CALL DeptAvgSalary('Management', @AvgSalary);
SELECT @AvgSalary AS AverageSalary;