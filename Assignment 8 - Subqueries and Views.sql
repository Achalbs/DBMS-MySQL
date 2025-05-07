USE Country;

TRUNCATE TABLE persons;
TRUNCATE TABLE Country;

INSERT INTO Country (Country_Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9833517),
(2, 'India', 1400000000, 3287263),
(3, 'China', 1440000000, 9596961),
(4, 'Brazil', 4000000, 8515767),
(5, 'Russia', 6000000, 17098242),
(6, 'Japan', 1550000, 377975),
(7, 'Germany', 83000000, 357114),
(8, 'France',  67000000, 551695),
(9, 'UK', 67000000, 243610),
(10, 'Italy', 2556000, 301340),
(11, 'Canada', 38000000, 9984670),
(12, 'Australia', 450000, 7692024),
(13, 'Mexico', 127000, 1964375),
(14, 'South Korea', 52000000, 100210),
(15, 'South Africa',60000000, 1221037);


SELECT * FROM Country;
INSERT INTO Persons (Person_Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.5, 1, 'USA'),
(2, 'Alice', 'Johnson',331000000, 3.9, 1, 'USA'),
(3, 'Michael', 'Williams',331000000, 4.2, 1, 'USA'),
(4, 'Emily', 'Clark', 331000000, 3.7, 1, 'USA'),
(5, 'Daniel', 'Miller',331000000, 4.0, 1, 'USA'),
(6, 'Isabella', 'Lopez', 331000000, 4.0, 1, 'USA'),
(7, 'Lucas', 'Hill', 331000000, 4.3, 1, 'USA'),
(8, 'Charlotte', 'Young', 331000000, 3.7, 1, 'USA'),
(9, 'Henry', 'King', 331000000, 4.4, 1, 'USA'),
(10, 'Amelia', 'Wright', 331000000, 3.8, 1, 'USA'),
(11, 'Anusree', 'Gupta', 1400000000, 3.9, 2, 'India'),
(12, 'Rahul', 'Kumar', 1400000000, 4.6, 2, 'India'),
(13, 'Priya', 'Sharma', 1400000000, 3.8, 2, 'India'),
(14, 'Karan', 'Gupta', 1400000000, 4.0, 2, 'India'),
(15, 'Anjali', 'Kapoor', 1400000000, 4.2, 2, 'India'),
(16, 'Vikram', 'Reddy', 1400000000, 4.5,2, 'India'),
(17, 'Lim', 'Chung', 1440000000, 4.7, 3, 'China'),
(18, 'Li', 'Wei', 1440000000, 4.8, 3, 'China'),
(19, 'Zhang', 'Hua', 1440000000, 4.2, 3, 'China'),
(20, 'Wang', 'Lei', 1440000000, 3.9, 3, 'China'),
(21, 'Chen', 'Mei', 1440000000, 4.3, 3, 'China'),
(22, 'Liu', 'Yang', 1440000000, 4.0, 3, 'China'),
(23, 'Charlie', 'Puth', 4000000, 4.2, 4, 'Brazil'),
(24, 'Bernadette', 'Rostankowsky', 6000000, 3.8, 5, 'Russia'),
(25, 'Akira', 'Kurusova', 1550000, 4.6, 6, 'Japan'),
(26, 'Eric', 'Mayer',  83000000, 4.9, 7, 'Germany'),
(27, 'Hans', 'Schmidt', 83000000, 4.1, 7, 'Germany'),
(28, 'Anna', 'Müller', 83000000, 3.9, 7, 'Germany'),
(29, 'Markus', 'Becker', 83000000, 4.2, 7, 'Germany'),
(30, 'Julia', 'Schneider', 83000000, 4.0, 7, 'Germany'),
(31, 'Stefan', 'Weber', 83000000, 3.8, 7, 'Germany'),
(32, 'Hannah', 'Muller', 67000000, 4.3, 8, 'France'),
(33, 'Marie', 'Curie', 67000000, 4.4, 8, 'France'),
(34, 'Luc', 'Dubois', 67000000, 3.7, 8, 'France'),
(35, 'Chloe', 'Lemoine', 67000000, 4.0, 8, 'France'),
(36, 'Leo', 'Martin', 67000000, 4.1, 8, 'France'),
(37, 'Sophie', 'Bernard', 67000000, 4.3, 8, 'France'),
(38, 'Sophie', 'Turner', 67000000, 3.7, 9, 'UK'),
(39, 'Oliver', 'Jones', 67000000, 4.3, 9, 'UK'),
(40, 'Charlotte', 'Brown', 67000000, 4.0, 9, 'UK'),
(41, 'Harry', 'Wilson', 67000000, 4.1, 9, 'UK'),
(42, 'Emily', 'Taylor', 67000000, 3.9, 9, 'UK'),
(43, 'James', 'Smith', 67000000, 4.2, 9, 'UK'),
(44, 'Antony', 'Russo', 2556000, 4.4, 10, 'Italy'),
(45, 'Ryan', 'Raynolds',38000000, 3.6, 11, 'Canada'),
(46, 'Robert', 'Taylor', 38000000, 4.0, 11, 'Canada'),
(47, 'Sophia', 'Wilson', 38000000, 4.3, 11, 'Canada'),
(48, 'James', 'Anderson', 38000000, 3.7, 11, 'Canada'),
(49, 'Olivia', 'Moore', 38000000, 4.1, 11, 'Canada'),
(50, 'Ethan', 'Martin', 38000000, 4.4, 11, 'Canada'),
(51, 'Michael', 'Clarke', 450000, 4.1, 12, 'Australia'),
(52, 'Salma', 'Hayek', 127000, 4.0, 13, 'Mexico'),
(53, 'Lee', 'Joon', 52000000, 3.9, 14, 'South Korea'),
(54, 'Kim', 'Jin', 52000000, 4.5, 14, 'South Korea'),
(56, 'Choi', 'Min', 52000000, 3.8, 14, 'South Korea'),
(57, 'Lee', 'Hyun', 52000000, 4.2, 14, 'South Korea'),
(58, 'Jun', 'Huang', 1440000000, 4.0, 3, 'China'),
(59, 'Wei', 'Gao', 1440000000, 3.7, 3, 'China'),
(60, 'Ping', 'Zhao', 1440000000, 4.4, 3, 'China'),
(61, 'Hye', 'Shin', 52000000, 4.5, 14, 'South Korea'),
(62, 'Joon', 'Kang', 52000000, 3.8, 14, 'South Korea'),
(63, 'Eun', 'Oh', 52000000, 4.4, 14, 'South Korea'),
(64, 'Ayanda', 'Dlamini', 60000000, 3.7, 15, 'South Africa'),
(65, 'Nandi', 'Khumalo', 60000000, 4.4, 15, 'South Africa'),
(66, 'Nomsa', 'Mdletshe', 60000000, 3.9, 15, 'South Africa'),
(67, 'Sibusiso', 'Ngcobo', 60000000, 4.5, 15, 'South Africa'),
(68, 'Mia', 'Watson', 67000000, 3.8, 9, 'UK'),
(69, 'Alfie', 'Cooper', 67000000, 4.4, 9, 'UK'),
(70, 'Ella', 'King', 67000000, 3.7, 9, 'UK');



-- _______________________________________________________________________1. Find the number of persons in each country______________________________________________________________________________


SELECT Country_name, COUNT(*) AS Number_Of_Persons FROM Persons 
GROUP BY Country_name;


-- __________________________________________________________________2. Find the number of persons in each country sorted from high to low_________________________________________________________________

SELECT Country_name, COUNT(*) AS Number_Of_Persons FROM Persons 
GROUP BY Country_name
ORDER BY Number_Of_Persons DESC;

-- __________________________________________________________3. Find the average rating for Persons in respective countries if the average is greater than 3.0_______________________________________________________

SELECT Country_name, AVG(Rating) AS Avg_Rating FROM Persons
GROUP BY Country_name 
HAVING Avg_Rating > 3.0;

-- _______________________________________________________________________4. Find the countries with the same rating as the USA_____________________________________________________________________________

SELECT Country_name
FROM Country
WHERE Country_name IN (
    SELECT Country_name
    FROM Persons
    WHERE Rating = (
        SELECT AVG(Rating)
        FROM Persons
        WHERE Country_name = 'USA'
    )
);

-- _________________________________________________5. Select all countries whose population is greater than the average population of all nations:______________________________________________________________________________


 SELECT Country_name, Population FROM Country
 WHERE Population > (
 SELECT AVG( Population) FROM Country
 );
 
 
-- _______________________________________________________________________Creating Database Product with given requirements_________________________________________________________________________


CREATE DATABASE Product;

USE Product;

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Email VARCHAR(100),
    Phone_no VARCHAR(15),
    Address VARCHAR(200),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip_code VARCHAR(10),
    Country_name VARCHAR(50)
);
 


INSERT INTO Customer (Customer_Id, First_name, Last_name, Email, Phone_no, Address, City, State, Zip_code, Country_name)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890', '123 Elm St', 'New York', 'New York', '10001', 'USA'),
(2, 'Alice', 'Smith', 'alice.smith@example.com', '1234567891', '456 Oak Ave', 'California', 'California', '90001', 'USA'),
(3, 'Michael', 'Brown', 'michael.brown@example.com', '1234567892', '789 Pine Dr', 'Chicago', 'Illunoi', '60601', 'USA'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '1234567893', '321 Maple Rd', 'Houston', 'Texas', '77001', 'USA'),
(5, 'Daniel', 'Miller', 'daniel.miller@example.com', '1234567894', '654 Cedar Ln', 'Phoenix', 'Arizona', '85001', 'USA'),
(6, 'Robert', 'Taylor', 'robert.taylor@example.ca', '1234567895', '987 Birch St', 'Toronto', 'Ontario', 'M4B1B3', 'Canada'),
(7, 'Sophia', 'Wilson', 'sophia.wilson@example.ca', '1234567896', '321 Spruce Blvd', 'Vancouver', 'BC', 'V5K0A1', 'Canada'),
(8, 'James', 'Anderson', 'james.anderson@example.ca', '1234567897', '123 Fir Ct', 'Montreal', 'QC', 'H1A0A1', 'Canada'),
(9, 'Olivia', 'Moore', 'olivia.moore@example.ca', '1234567898', '456 Ash Dr', 'Calgary', 'AB', 'T1X0L3', 'Canada'),
(10, 'Ethan', 'Martin', 'ethan.martin@example.ca', '1234567899', '789 Poplar Ln', 'Edmonton', 'AB', 'T6X0L4', 'Canada'),
(11, 'Oliver', 'Jones', 'oliver.jones@example.co.uk', '9876543210', '123 Beech Rd', 'London', 'ENG', 'SW1A1AA', 'UK'),
(12, 'Charlotte', 'Brown', 'charlotte.brown@example.co.uk', '9876543211', '456 Holly St', 'Manchester', 'ENG', 'M11AA', 'UK'),
(13, 'Harry', 'Wilson', 'harry.wilson@example.co.uk', '9876543212', '789 Willow Ln', 'Birmingham', 'ENG', 'B11AA', 'UK'),
(14, 'Emily', 'Taylor', 'emily.taylor@example.co.uk', '9876543213', '321 Chestnut Blvd', 'Liverpool', 'ENG', 'L11AA', 'UK'),
(15, 'James', 'Smith', 'james.smith@example.co.uk', '9876543214', '654 Alder Ct', 'Leeds', 'ENG', 'LS11AA', 'UK'),
(16, 'Liam', 'Harris', 'liam.harris@example.com.au', '8765432100', '987 Acacia St', 'Sydney', 'NSW', '2000', 'Australia'),
(17, 'Emma', 'Johnson', 'emma.johnson@example.com.au', '8765432101', '321 Eucalyptus Ave', 'Melbourne', 'VIC', '3000', 'Australia'),
(18, 'Benjamin', 'Walker', 'benjamin.walker@example.com.au', '8765432102', '123 Gumtree Dr', 'Brisbane', 'QLD', '4000', 'Australia'),
(19, 'Olivia', 'Scott', 'olivia.scott@example.com.au', '8765432103', '456 Wattle Rd', 'Perth', 'WA', '6000', 'Australia'),
(20, 'William', 'Adams', 'william.adams@example.com.au', '8765432104', '789 Jacaranda Ln', 'Adelaide', 'SA', '5000', 'Australia'),
(21, 'Rahul', 'Kumar', 'rahul.kumar@example.in', '7890123456', '123 Mango St', 'Mumbai', 'MH', '400001', 'India'),
(22, 'Priya', 'Sharma', 'priya.sharma@example.in', '7890123457', '456 Neem Ave', 'Delhi', 'DL', '110001', 'India'),
(23, 'Karan', 'Gupta', 'karan.gupta@example.in', '7890123458', '789 Banyan Dr', 'Bangalore', 'KA', '560001', 'India'),
(24, 'Anjali', 'Kapoor', 'anjali.kapoor@example.in', '7890123459', '321 Peepal Rd', 'Hyderabad', 'TG', '500001', 'India'),
(25, 'Vikram', 'Reddy', 'vikram.reddy@example.in', '7890123460', '654 Coconut Blvd', 'Chennai', 'TN', '600001', 'India'),
(26, 'John', 'Smith', 'john.smith@example.com', '1234566890', '123 Maple St', 'Los Angeles', 'California', '90001', 'USA'),
(27, 'Emma', 'Brown', 'emma.brown@example.com', '1234569891', '456 Oak Ave', 'San Francisco', 'California', '94101', 'USA'),
(28, 'James', 'Johnson', 'james.johnson@example.com', '1234567892', '789 Pine Rd', 'Sacramento', 'California', '77001', 'USA'),
(29, 'Sophia', 'Williams', 'sophia.williams@example.com', '1234567893', '321 Cedar Ln', 'Los Angeles', 'California', '73301', 'USA'),
(30, 'William', 'Davis', 'william.davis@example.com', '1234567894', '654 Birch Ct', 'Sacramento', 'California', '10001', 'USA'),
(31, 'Olivia', 'Miller', 'olivia.miller@example.com', '1234567895', '987 Ash Dr', 'Buffalo', 'New York', '14201', 'USA'),
(32, 'Ethan', 'Martinez', 'ethan.martinez@example.com', '1234567896', '123 Palm Blvd', 'Yonkers','New York', '33101', 'USA'),
(33, 'Isabella', 'Garcia', 'isabella.garcia@example.com', '1234567897', '456 Mango St', 'Syracuse', 'New York', '32801', 'USA'),
(34, 'Michael', 'Lopez', 'michael.lopez@example.com', '1234567898', '789 Citrus Ave', 'Utica', 'New York', '92101', 'USA'),
(35, 'Ava', 'Harris', 'ava.harris@example.com', '1234567899', '321 Bay St', 'Rochester', 'New York', '33601', 'USA');


-- ____________________________________6. Create a view named customer_info for the Customer table that displays Customer’s Full Name and email address.___________________________________________


CREATE VIEW Customer_Info AS SELECT CONCAT(First_name,"  ", Last_name) as Name, Email FROM Customer;


SELECT * FROM Customer_Info;

-- _________________________________________________________7. Create a view named US_Customers that displays customers located in the US._________________________________________________________


CREATE VIEW US_Customers AS SELECT CONCAT(First_name,"  ", Last_name) as Name FROM Customer 
WHERE Country_name = "USA";


SELECT Name AS US_Customers FROM US_Customers;

-- _________________________________________________8. Create another view named Customer_Details with columns full name, email, phone_no, and state_______________________________________________



CREATE VIEW Customer_Details AS SELECT CONCAT(First_name,"  ", Last_name) as Full_Name, Email, Phone_no, State FROM Customer;

SELECT * FROM Customer_Details;


-- ________________________________________________9. Update phone numbers of customers who live in California for Customer_Details view___________________________________________________________

UPDATE Customer_Details SET Phone_no = 9876543210 WHERE State = "California";

SELECT * FROM Customer_Details;