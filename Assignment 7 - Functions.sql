use country;

-- ___________________________________________________________1.Add a new column called DOB in the Persons table______________________________________________________________________________________

ALTER TABLE Persons
ADD DOB DATE;


UPDATE Persons SET DOB = '1980-01-01' WHERE Person_Id = 1;
UPDATE Persons SET DOB = '1990-05-15' WHERE Person_Id = 2;
UPDATE Persons SET DOB = '1985-07-20' WHERE Person_Id = 3;
UPDATE Persons SET DOB = '1992-03-10' WHERE Person_Id = 4;
UPDATE Persons SET DOB = '1988-12-25' WHERE Person_Id = 5;
UPDATE Persons SET DOB = '1975-09-09' WHERE Person_Id = 6;
UPDATE Persons SET DOB = '2000-11-30' WHERE Person_Id = 7;
UPDATE Persons SET DOB = '1995-06-18' WHERE Person_Id = 8;
UPDATE Persons SET DOB = '1983-08-22' WHERE Person_Id = 9;
UPDATE Persons SET DOB = '1998-04-05' WHERE Person_Id = 10;

SELECT * FROM Persons;

-- ___________________________________________________________ 1.Function to calculate age from DOB________________________________________________________________________________________________

DELIMITER $$

CREATE FUNCTION CalculateAge(DOB DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE Age INT;

    -- __________________________________________________________________Calculate the difference in years__________________________________________________________________________________
    
    SET Age = YEAR(CURDATE()) - YEAR(DOB);

    -- ______________________________________________________Adjust if the birthday has not occurred this year______________________________________________________________________________
    
    IF MONTH(dob) > MONTH(CURDATE()) OR (MONTH(DOB) = MONTH(CURDATE()) AND DAY(DOB) > DAY(CURDATE())) THEN
        SET Age = Age - 1;
    END IF;

    RETURN Age;
END$$

DELIMITER ;



-- ___________________________________________________________3.Select query to fetch the Age of all persons using the function created____________________________________________________________


SELECT CONCAT(Fname,' ', Lname) AS Name , DOB, CalculateAge(DOB) AS Age FROM Persons;


-- ___________________________________________________________4. Find the length of each country name in the Country table__________________________________________________________________________


SELECT Country_name AS Country, LENGTH(Country_name) AS Length from Country; 


-- ________________________________________________5.Extract the first three characters of each country's name in the Country table._______________________________________________________________


SELECT Country_name AS Country, SUBSTR(Country_name,1,3) AS First3Characters FROM Country;


-- ____________________________________________________6.Convert all country names to uppercase and lowercase in the Country table.._______________________________________________________________


SELECT Country_name AS Country, UCASE(Country_name) AS InUpperCase, LCASE(Country_name) AS InLowerCase FROM Country;