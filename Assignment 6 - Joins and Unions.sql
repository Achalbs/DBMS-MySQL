use country;


-- __________________________________________________________________________________INNER JOIN ____________________________________________________________________________________________________

SELECT Persons.Fname, Persons.Lname, Country.Country_name, Persons.Rating
FROM Persons
INNER JOIN Country ON Persons.Country_ID = Country.Country_ID;

-- __________________________________________________________________________________LEFT JOIN ____________________________________________________________________________________________________

SELECT Persons.Fname, Persons.Lname, Country.Country_name, Persons.Rating
FROM Persons
LEFT JOIN Country ON Persons.Country_Id = Country.Country_Id;

-- __________________________________________________________________________________RIGHT JOIN ____________________________________________________________________________________________________

SELECT Persons.Fname, Persons.Lname, Country.Country_name, Persons.Rating
FROM Persons
RIGHT JOIN Country ON Persons.Country_Id = Country.Country_Id;


-- ___________________________________________________________2. List all distinct country names from both the Country and Persons tables _____________________________________________________________

SELECT DISTINCT Country_name FROM Country
UNION
SELECT DISTINCT Country_name FROM Persons;


-- _______________________________________________ 3. List all country names from both the Country and Persons tables, including duplicates________________________________________________________


SELECT Country_name FROM Country
UNION ALL
SELECT Country_name FROM Persons;

-- ____________________________________________________________________4.Round the ratings of all persons to the nearest integer __________________________________________________________________

SELECT Person_Id, Fname, Lname, Country_Id, ROUND(Rating, 0) AS RoundedRating
FROM Persons;