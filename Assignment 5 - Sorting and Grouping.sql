-- CREATE DATABASE POPULATION

CREATE DATABASE POPULATION;
USE POPULATION;

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
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(100)
);

-- Inserting values to the Country table

INSERT INTO Country (Country_Id, Country_name, Population, Area) VALUES
(1, 'USA', 331002651, 9833517),
(2, 'India', 1380004385, 3287263),
(3, 'China', 1439323776, 9596961),
(4, 'Brazil', 212559417, 8515767),
(5, 'Russia', 145934462, 17098242),
(6, 'Japan', 126476461, 377975),
(7, 'Germany', 83783942, 357114),
(8, 'France', 65273511, 551695),
(9, 'UK', 67886011, 243610),
(10, 'Italy', 60317116, 301340),
(11, 'Canada', 37742154, 9984670),
(12, 'Australia', 25499884, 7692024),
(13, 'Mexico', 128932753, 1964375),
(14, 'South Korea', 51269185, 100210),
(15, 'South Africa', 59308690, 1221037);


-- Inserting values to the Persons table

INSERT INTO Persons (Person_Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 5000, 4.5, 1, 'USA'),
(2, 'Anusree', 'Gupta', 3000, 3.9, 2, 'India'),
(3, 'Lim', 'Chung', 2000, 4.7, 3, 'China'),
(4, 'Charlie', 'Puth', 4000, 4.2, 4, 'Brazil'),
(5, 'Bernadette', 'Rostankowsky', 6000, 3.8, 5, 'Russia'),
(6, 'Akira', 'Kurusova', 1500, 4.6, 6, 'Japan'),
(7, 'Eric', 'Mayer', 1000, 4.9, 7, 'Germany'),
(8, 'Hannah', 'Muller', 500, 4.3, 8, 'France'),
(9, 'Sophie', 'Turner', 7000, 3.7, 9, 'UK'),
(10, 'Antony', 'Russo', 2500, 4.4, 10, 'Italy'),
(11, 'Ryan', 'Raynolds', 3500, 3.6, 11, 'Canada'),
(12, 'Michael', 'Clarke', 4500, 4.1, 12, 'Australia'),
(13, 'Salma', 'Hayek', 1200, 4.0, 13, 'Mexico'),
(14, 'Lee', 'Joon', 1800, 3.9, 14, 'South Korea'),
(15, 'Trevor', 'Noah', 2200, 4.2, 15, 'South Africa');

-- ______________________________________________________1. TO PRINT FIRST 3 CHARACTERS OF  Country_name FROM  Country TABLE __________________________________________________________________

SELECT left(Country_name,3) AS First3CharsCountryName from Country;


-- ______________________________________________________2. CONCATENATE Fname AND Lname FROM THE Persons TABLE ______________________________________________________________________________________

SELECT CONCAT(Fname,' ',Lname) AS FullName FROM Persons;


-- _________________________________________________3. COUNT THE NUMBER OF UNIQUE COUNTRY NAMES FROM Persons TABLE__________________________________________________________________________________

SELECT COUNT(DISTINCT Country_name) AS TotalUniqueCountryNames FROM Persons;

-- ______________________________________________________4. GET THE MAXIMUM POPULATION FROM THE Country TABLE ____________________________________________________________________________________

SELECT MAX(Population) AS MaximumPopulation FROM Country;

SELECT Country_name, Population FROM Country WHERE Population = (SELECT MAX(Population) FROM Country);

-- ____________________________________________________5.TO GET MINIMUM POPULATION FROM Persons TABLE_____________________________________________________________________________________________-

SELECT MIN(Population) AS MinimumPopulation FROM Persons;

-- ___________________________________________________6. INSERTING 2 ROWS TO Persons TABLE WITH Lname NULL_________________________________________________________________________________________

INSERT INTO Persons (Person_Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES (16, 'Ameya', NULL, 1000, 4.2, 2, 'India'),
       (17, 'Barack', NULL, 3000, 3.8, 1, 'USA');
       
SELECT * FROM Persons;

-- ______________________________________________________________________COUNT Lname FROM Persons TABLE_________________________________________________________________________________________   

SELECT COUNT(Lname) AS NonNullLnameCount FROM Persons 
WHERE Lname IS NOT NULL;

-- ___________________________________________________________7. TO FIND THE NUMBER OF ROWS IN THE Persons TABLE__________________________________________________________________________________
 
 SELECT COUNT(*) AS RowCount FROM Persons;
 
 --  _________________________________________________8. TO SHOW THE Population OF THE Country TABLE FOR THE FIRTS 3 ROWS_________________________________________________________________________
 
 SELECT Country_name , Population FROM Country LIMIT 3;
 
 -- ________________________________________________________9. TO PRINT 3 RANDOM ROWS OF THE Country TABLE________________________________________________________________________________________
  
SELECT * FROM Country 
ORDER BY RAND() LIMIT 3;

-- ____________________________________________________________10 . LIST ALL Persons ORDERED BY Rating IN DESCENDING ORDER________________________________________________________________________


SELECT * FROM Persons 
ORDER BY Rating DESC;  

-- _______________________________________________________11. TO FIND THE TOTAL Population OF EACH Counrty IN Persons TABLE_______________________________________________________________________

SELECT Country_name, SUM(Population) AS TotalPopulation
FROM Persons
GROUP BY Country_name;

-- __________________________________________________12.TO FIND COUNTRIES IN THE Persons TABLE WITH Population GRETAER THAN 50000_________________________________________________________________

SELECT Country_name FROM Persons
GROUP BY Country_name
HAVING SUM(Population) > 50000;


-- _____________13.LIST THE TOTAL No. OF Persons AND AVERAGE Rating FOR EACH Country , BUT ONLY FOR COUNTRIES WITH MORE THAN 2 Person OEDERED BY AVAERAGE RATING IN DESCENDING ORDER_______________

SELECT Country_name, COUNT(*) AS TotalPersons, AVG(Rating) AS AvgRating
FROM Persons
GROUP BY Country_name
HAVING COUNT(*) >=  2
ORDER BY AvgRating ASC;