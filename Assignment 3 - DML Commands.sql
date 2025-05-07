CREATE DATABASE ORGANISATION;
USE ORGANISATION;

-- CREATING TABLE Managers WITH SPECIFIED FIELDS AND CONSTRINTS

CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY, 							-- PRIMARY KEY constraint
    First_Name VARCHAR(50) NOT NULL, 						-- NOT NULL constraint
    Last_Name VARCHAR(50) NOT NULL,							-- NOT NULL constraint
    DOB DATE NOT NULL,										-- NOT NULL constraint
    Age INT CHECK (Age > 25), 								-- CHECK constraint
    Last_Update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,		-- NOT NULL constraint
    Department VARCHAR(50) NOT NULL,						-- NOT NULL constraint
    Salary DECIMAL(10, 2) NOT NULL 							-- NOT NULL constraint
);

-- INSERTING ROWS(VALUES) INTO THE Managers TABLE

INSERT INTO Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Gender, Department, Salary) VALUES
(1, 'James', 'Doe', '1985-03-15', 38, 'Male', 'IT', 30000),
(2, 'Aaliya', 'Bhatt', '1990-07-22', 33, 'Female', 'HR', 25000),
(3, 'Michael', 'Smith', '1978-11-05', 45, 'Male', 'IT', 40000),
(4, 'Sarah', 'Brown', '1987-01-19', 36, 'Female', 'Finance', 28000),
(5, 'Robin', 'Wilson', '1992-04-12', 31, 'Male', 'IT', 32000),
(6, 'Emily', 'Davis', '1989-10-03', 34, 'Female', 'Marketing', 24000),
(7, 'James', 'Johnson', '1980-12-25', 43, 'Male', 'Finance', 45000),
(8, 'Sophia', 'Garcia', '1995-05-30', 28, 'Female', 'HR', 22000),
(9, 'Daniel', 'Martinez', '1983-08-14', 40, 'Male', 'IT', 27000),
(10, 'Lilly', 'Lopez', '1997-06-18', 26, 'Female', 'Marketing', 20000);


-- RETREIVING SPECIFIC ATTRIBUTES OF SPECIFIC ROW

SELECT First_Name, Last_Name, DOB  FROM Managers WHERE Manager_Id = 1; 

-- QUERY TO DISPLAY ANNUAL INCOME OF ALL MANAGERS IN THE TABLE

SELECT First_Name, Last_Name, (Salary * 12) AS Annual_Income FROM Managers; 

-- QUERY TO DISPLY ALL RECORDS OF THE TABLE ManagerS EXCEPT "Aaliya"

SELECT * FROM Managers WHERE First_Name !="Aaliya";

-- QUERY TO DISPLAY DETAILS OF MANAGERS WHOSE DEPARTMENT IS IT AND EARNS MORE THAN 25000 PER MONTH

SELECT * FROM Managers WHERE Department= "IT" AND Salary > 25000;

-- QUERY TO DISPLAY DETAILS OF MANAGERS WHOSE SALARY IS BETWEEN 10000 AND 35000

SELECT * FROM Managers WHERE Salary BETWEEN 10000 AND 35000;









