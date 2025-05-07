-- CREATE DATABASE COUNTRY

CREATE DATABASE COUNTRY;
USE COUNTRY;

CREATE TABLE Country (
    Country_Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area FLOAT
);

CREATE TABLE Persons (
    Person_Id INT PRIMARY KEY,
    Fname VARCHAR(100),
    Lname VARCHAR(100),
    Population INT,
	Rating DECIMAL(3,2),
    Country_Id INT,
    Country_name VARCHAR(100)
);

-- Inserting values to the Country table

INSERT INTO Country (Country_Id, Country_name, Population, Area) VALUES
(1, 'USA', 331002651, 9833517),
(2, 'India', 1380004385, 3287263),
(3, 'China', 1439323776, 9596961),
(4, 'Russia', 145934462, 17098242),
(5, 'Japan', 126476461, 377975),
(6, 'Germany', 83783942, 357114),
(7, 'France', 65273511, 551695),
(8, 'UK', 67886011, 243610),
(9, 'Canada', 37742154, 9984670),
(10, 'Australia', 25499884, 7692024);



-- Inserting values to the Persons table

INSERT INTO Persons (Person_Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 5000, 4.5, 1, 'USA'),
(2, 'Anusree', 'Gupta', 3000, 3.9, 2, 'India'),
(3, 'Lim', 'Chung', 2000, 4.7, 3, 'China'),
(4, 'Bernadette', 'Rostankowsky', 6000, 3.8, 5, 'Russia'),
(5, 'Akira', 'Kurusova', 1500, 4.6, 6, 'Japan'),
(6, 'Eric', 'Mayer', 1000, 4.9, 7, 'Germany'),
(7, 'Hannah', 'Muller', 500, 4.3, 8, 'France'),
(8, 'Sophie', 'Turner', 7000, 3.7, 9, 'UK'),
(9, 'Ryan', 'Raynolds', 3500, 3.6, 11, 'Canada'),
(10, 'Michael', 'Clarke', 4500, 4.1, 12, 'Australia');


--  _____________________________________________________________________1. LIST DISTINCT COUNTRY NAMES FROM Persons TABLE_________________________________________________________________________

SELECT DISTINCT Country_name AS DistinctCountries FROM Persons;

--  ____________________________________________________________________2. SELECT Fname AND Lname FROM Persons AS ALIASES__________________________________________________________________________

SELECT Fname AS FirstName, Lname AS LastName FROM Persons;

-- ______________________________________________________________________3.FIND ALL Persons WITH Rating GREATER THAN 4.0___________________________________________________________________________

SELECT * FROM Persons 
WHERE Rating > 4.0;

-- ________________________________________________________________4. FIND COUNTRIES WITH Population GREATER THAN 10 lAKHS_________________________________________________________________________

SELECT Country_name AS Country FROM Country 
WHERE Population > 1000000;


-- _______________________________________________________________5. FIND Persons FROM USA OR HAVE Rating GREATER THAN 4.5_________________________________________________________________________

SELECT CONCAT(Fname,' ',Lname) AS Person_Name FROM Persons 
WHERE Country_name = "ÚSA" OR Rating > 4.5; 

-- __________________________________________________________________6. FIND ALL Persons WHERE THE Country_name IS NULL___________________________________________________________________________

SELECT CONCAT(Fname,' ',Lname) AS Person_Name FROM Persons 
WHERE Country_name = NULL;

-- ______________________________________________________________7. FIND ALL Persons FROM THE COUNTRIES USA, CANADA AND UK________________________________________________________________________

SELECT CONCAT(Fname,' ',Lname) AS Person_Name FROM Persons 
WHERE Country_name IN ('USA','CANADA','UK');

-- ______________________________________________________________8.FINd ALL Persons NOT FROM COUNTRIES INDIA AND AUSTRALIA________________________________________________________________________

SELECT CONCAT(Fname,' ',Lname) AS Person_Name FROM Persons 
WHERE Country_name NOT IN ('INDIA','AUSTRALIA');

-- __________________________________________________________9.FIND ALL COUNTRTIES WITH POPULATION BETWEEN 5LAKHS OR 20LAKHS______________________________________________________________________

SELECT Country_name AS Country FROM Country 
WHERE Population BETWEEN 500000 AND 2000000;

-- ______________________________________________________________10. FIND ALL COUNTRIES WHOSE NAME DOES NOT START WITH C__________________________________________________________________________


SELECT Country_name AS Country FROM Country 
WHERE Country_name NOT LIKE 'C%';