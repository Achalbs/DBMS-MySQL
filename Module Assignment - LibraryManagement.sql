-- _________________________________________________________________________________Creating Database___________________________________________________________________________________________________


CREATE DATABASE Library;
USE Library;

-- _________________________________________________________________________________Creating Tables___________________________________________________________________________________________________


CREATE TABLE Branch (

    Branch_No INT PRIMARY KEY,
    Manager_Id INT,
    Branch_Address VARCHAR(250),
    Contact_No VARCHAR(15)
    
);

CREATE TABLE Employee (

    Emp_Id INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Position VARCHAR(25),
    Salary DECIMAL(10, 2),
    Branch_No INT,
    FOREIGN KEY (Branch_No) REFERENCES Branch(Branch_No)
    
);

    
CREATE TABLE Books (

    ISBN VARCHAR(20) PRIMARY KEY,
    Book_Title VARCHAR(250),
    Category VARCHAR(50),
    Rental_Price DECIMAL(10, 2),
    Book_Status VARCHAR(5) CHECK (Book_Status IN ('Yes', 'No')),
    Author VARCHAR(100),
    Publisher VARCHAR(100)
    
);


CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Customer_Address VARCHAR(250),
    Reg_Date DATE
);


CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_Cust INT,
    Issued_Book_Name VARCHAR(250),
    Issue_Date DATE,
    ISBN_Book VARCHAR(20),
    FOREIGN KEY (Issued_Cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (ISBN_Book) REFERENCES Books(ISBN)
);


CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_Cust INT,
    Return_Book_Name VARCHAR(250),
    Return_Date DATE,
    ISBN_Book2 VARCHAR(20),
    FOREIGN KEY (Return_Cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (ISBN_Book2) REFERENCES Books(ISBN)
);


-- _________________________________________________________________________________Inserting values into the tables________________________________________________________________________________



INSERT INTO Branch (Branch_No, Manager_Id, Branch_Address, Contact_No) VALUES
(1, 101, '123 Main Street, Springfield, IN', '555-123-4567'),
(2, 102, '456 Oak Avenue, Riverside, AZ', '555-234-5678'),
(3, 103, '789 Pine Road, Austin, TX', '555-345-6789'),
(4, 104, '101 Birch Lane, Denver, CA', '555-456-7890'),
(5, 105, '202 Cedar Drive, Miami, FL', '555-567-8901'),
(6, 106, '303 Elm Boulevard, Seattle, WA', '555-678-9012'),
(7, 107, '404 Ash Court, Boston, MA', '555-789-0123'),
(8, 108, '505 Willow Street, Chicago, IL', '555-890-1234'),
(9, 109, '606 Spruce Way, Phoenix, AZ', '555-901-2345'),
(10, 110, '707 Palm Road, Atlanta, UT', '555-012-3456');

SELECT * FROM Branch;

INSERT INTO Employee (Emp_Id, Emp_Name, Position, Salary, Branch_No) VALUES
(101, 'Alice Johnson', 'Manager', 75000.00, 1),
(102, 'Bob Smith', 'Assistant Manager', 50000.00, 8),
(301, 'Carol White', 'Librarian', 35000.00, 1),
(104, 'David Brown', 'Manager', 76000.00, 2),
(501, 'Emma Davis', 'Cataloguer', 32000.00, 7),
(601, 'Franklin Miller', 'Customer Support', 34000.00, 2),
(107, 'Grace Wilson', 'Manager', 77000.00, 3),
(801, 'Henry Moore', 'Director', 55000.00, 10),
(901, 'Ivy Taylor', 'Cataloguer', 33000.00, 3),
(111, 'Jack Anderson', 'Manager', 78000.00, 4),
(110, 'Kathy Thomas', 'Customer Support', 34500.00, 4),
(120, 'Leo Martinez', 'Assistant Manager', 51000.00, 9),
(103, 'Maria Clark', 'Manager', 79000.00, 5),
(140, 'Nina Walker', 'Librarian', 35500.00, 5),
(150, 'Oscar Wright', 'Cataloguer', 32500.00, 5),
(160, 'Paula Harris', 'Manager', 80000.00, 6),
(170, 'Quincy Adams', 'Director', 56000.00, 8),
(180, 'Rachel Evans', 'Customer Support', 35000.00, 6),
(109, 'Samuel Green', 'Manager', 81000.00, 7),
(200, 'Tina Baker', 'Librarian', 36000.00, 7);

SELECT * FROM Employee;


-- ___________________________________________________________Calling Stored Procedure Add_Book to insert values to Books table_____________________________________________________________________


call Add_Book("978-0-123456-47-2", "The Great Gatsby","Fiction", 30, "Yes" , "F. Scott Fitzgerald", "Scribner");
call Add_Book("978-0-987654-31-0", "To Kill a Mockingbird", "Fiction" , 35, "No", "Harper Lee", "J.B. Lippincott & Co.");
call Add_Book("978-1-234567-89-7", "1984", "Science Fiction", 50, "Yes", "George Orwell", "Secker & Warburg");
call Add_Book("978-0-321456-22-8", "The Catcher in the Rye", "Fiction", 20, "Yes", "J.D. Salinger", "Brown and Company");
call Add_Book("978-0-543210-12-6", "The Hobbit", "Fantasy", 45, "No", "J.R.R. Tolkien", "Allen & Unwin");
call Add_Book("978-0-567890-32-4", "War and Peace", "Historical", 15, "Yes", "Leo Tolstoy", "The Russian Messenger");
call Add_Book("978-0-765432-19-9", "Pride and Prejudice", "Fiction", 25, "Yes", "Jane Austen", "Thomas Egerton");
call Add_Book("978-0-876543-45-1", "The Alchemist", "Fiction", 30, "Yes", "Paulo Coelho", "HarperTorch");
call Add_Book("978-0-135792-46-8", "Brave New World", "Science Fiction",50, "Yes", "Aldous Huxley", "Chatto & Windus" );
call Add_Book("978-0-987123-99-3", "The Road", "Fiction", 50, "No", "Cormac McCarthy", "Knopf" );
call Add_Book("978-1-734820-45-2", "Harry Potter&The Sorcerer's Stone", "Fantasy", 30, "Yes", "J.K. Rowling", "Bloomsbury");
call Add_Book("978-0-315789-21-7",  "The Da Vinci Code", "Mystery", 40, "No", "Dan Brown", "Doubleday" );
call Add_Book("978-0-765432-45-4", "The Midnight Library", "Fiction", 15, "Yes", "Matt Haig", "Canongate Books");
call Add_Book("978-0-987678-21-3", "The Light We Carry", "Non-Fiction", 30,"No", "Michelle Obama", "Crown Publishing" );
call Add_Book("978-0-678934-22-5", "Little Women", "Classic", 20, "No", "Louisa May Alcott", "Roberts Brothers" );
call Add_Book( "978-1-765432-56-3", "The Secret Garden", "Classic", 20, "Yes", "Frances Hodgson Burnett ", "Frederick A.Stokes Company" );
call Add_Book("978-0-876543-33-2", "The Subtle Art of Not Giving a F*ck", "Self-Help",25, "No", "Mark Manson", "HarperOne" );
call Add_Book("978-1-567890-34-5", "The Art of War", "Classic", 30, "Yes", "Sun Tzu", "Oxford University Press" );
call Add_Book("978-0-876543-44-1", "Cosmos", "Science", 40, "No", "Carl Sagan", "Ballantine Books" );
call Add_Book("978-1-987654-78-6", "Think Like a Monk ", "Self-Help", 40, "No", "Jay Shetty", "Simon & Schuster");
call Add_Book("978-1-123456-78-9", "The Lean Startup", "Business",20, "No", "Eric Ries","Crown Publishing Group ");
call Add_Book("978-1-234567-98-7", "Becoming", "Biography", 25, "Yes", "Michelle Obama", "Crown Publishing Group" );
call Add_Book("978-1-453627-44-1", "Outliers", "Psychology", 35, "Yes", "Malcolm Gladwell,Little", "Brown and Company" );
call Add_Book("978-1-567890-55-3", "A Brief History of Time", "Science",40, "No", "Stephen Hawking", "Bantam Books");
call Add_Book("978-0-765432-21-7", "Man's Search for Meaning", "Philosophical", 20, "Yes", "Viktor E. Frankl", "Beacon Press" );
call Add_Book("978-0-546789-20-3", "The Shining", "Horror", 40, "Yes", "Stephen King", "Doubleday");


SELECT * FROM Books;
-- _____________________________________________________Calling Stored Procedure Add_Customer to insert values to Customer table_____________________________________________________________________

CALL Add_Customer(1, 'Allen Barry', '234 Pine St, Alaska', '2023-01-15');
CALL Add_Customer(2, 'Bob Marley', '22 Baker St, London', '2023-04-15');
CALL Add_Customer(3, 'Anusree Gupta', '567 Cedar St, Sanfrancisco', '2022-11-20');
CALL Add_Customer(4, 'Bob Green', '57 Vindam St, New York', '2020-11-02');
CALL Add_Customer(5, 'David Dsuza', '367 Cedar St, Sanfrancisco', '2022-11-20');
CALL Add_Customer(6, 'Carol White', '789 Pine Road, Austin, TX', '2022-03-10');
CALL Add_Customer(7,'Franklin Miller', '303 Elm Boulevard, Seattle, WA', '2022-06-12');
CALL Add_Customer(8,'Quincy Adams', '555 Juniper Court, Charlotte, NC', '2023-05-12');
CALL Add_Customer(9, 'Leo Martinez', '909 Cypress Lane, Orlando, FL', '2022-12-15');
CALL Add_Customer(10, 'Maria Clark', '111 Magnolia Drive, Nashville, TN', '2023-01-10');
CALL Add_Customer(11,'Uma Collins', '999 Olive Street, Salt Lake City, UT', '2023-09-28');
CALL Add_Customer(12,'Xavier Lee', '91011 Birch Hollow, Minneapolis, MN', '2023-12-07');
CALL Add_Customer(13,'Grace Wilson', '404 Ash Court, Boston, MA', '2022-07-25');
CALL Add_Customer(14, 'Henry Moore', '505 Willow Street, Chicago, IL', '2022-08-14');
CALL Add_Customer(15,'Samuel Green', '777 Poplar Drive, Las Vegas, NV', '2023-07-19');
CALL Add_Customer(16, 'Victor Hughes', '1234 Maple Ridge, Pittsburgh, PA', '2023-10-15');
CALL Add_Customer(17,'Hazel Grace', '121314 Cedar Valley, Detroit, MI', '2024-01-20');
CALL Add_Customer(18,'Chris Evans', '456 Oak Avenue, Riverside, CA', '2022-02-20');
CALL Add_Customer(19,'Oscar Wright', '333 Cherry Boulevard, Dallas, TX', '2023-03-18');
CALL Add_Customer(20, 'Issac Taylor', '606 Spruce Way, Phoenix, AZ', '2022-09-30');

SELECT * FROM Customer;

INSERT INTO IssueStatus (Issue_Id, Issued_Cust, Issued_Book_Name, Issue_Date, ISBN_Book) VALUES
(1, 1, "The Great Gatsby", '2023-01-10', "978-0-123456-47-2");
INSERT INTO IssueStatus (Issue_Id, Issued_Cust, Issued_Book_Name, Issue_Date, ISBN_Book) VALUES
(2, 12, 'To Kill a Mockingbird', '2023-01-12', '978-0-987654-31-0');
INSERT INTO IssueStatus (Issue_Id, Issued_Cust, Issued_Book_Name, Issue_Date, ISBN_Book) VALUES
(3, 3, '1984', '2023-01-15', '978-1-234567-89-7');
INSERT INTO IssueStatus (Issue_Id, Issued_Cust, Issued_Book_Name, Issue_Date, ISBN_Book) VALUES
(4, 5, 'The Hobbit', '2023-02-05', '978-0-543210-12-6');
INSERT INTO IssueStatus VALUES
(5, 20, 'The Shining', '2023-05-15', '978-0-546789-20-3');
INSERT INTO IssueStatus VALUES
(6, 8, 'War and Peace', '2023-02-12', '978-0-567890-32-4');
INSERT INTO IssueStatus VALUES
(7, 11, 'Pride and Prejudice', '2023-02-20', '978-0-765432-19-9');
INSERT INTO IssueStatus VALUES
(8, 2, 'The Alchemist', '2023-02-25', '978-0-876543-45-1');
INSERT INTO IssueStatus VALUES
(9, 10, 'The Road', '2023-03-08', '978-0-987123-99-3');
INSERT INTO IssueStatus VALUES
(10, 11, "The Subtle Art of Not Giving a F*ck", '2023-06-15', "978-0-876543-33-2");
INSERT INTO IssueStatus VALUES
(11, 7, "The Midnight Library", '2023-06-20', "978-0-765432-45-4");
INSERT INTO IssueStatus VALUES
(12, 12,  "Harry Potter&The Sorcerer's Stone", '2023-03-20', '978-1-734820-45-2');
INSERT INTO IssueStatus VALUES
(13, 15, "The Midnight Library", '2023-10-25',"978-0-765432-45-4");
INSERT INTO IssueStatus VALUES
(14, 9, "The Art of War", '2023-04-01', "978-1-567890-34-5");
INSERT INTO IssueStatus VALUES
(15, 6, "A Brief History of Time", '2023-06-10',"978-1-567890-55-3");

SELECT * FROM IssueStatus;

INSERT INTO ReturnStatus (Return_Id, Return_Cust, Return_Book_Name, Return_Date, ISBN_Book2) VALUES
(1, 1, 'The Great Gatsby', '2023-02-10', '978-0-123456-47-2'),
(2, 12, 'To Kill a Mockingbird', '2023-02-15', '978-0-987654-31-0'),
(3, 3, '1984', '2023-02-20', '978-1-234567-89-7'),
(4, 5, 'The Hobbit', '2023-03-10', '978-0-543210-12-6'),
(5, 9, "The Art of War", '2023-05-01', "978-1-567890-34-5"),
(6, 8, 'War and Peace', '2023-03-15', '978-0-567890-32-4'),
(7, 11, 'Pride and Prejudice', '2023-03-20', '978-0-765432-19-9'),
(8, 2, 'The Alchemist', '2023-03-25', '978-0-876543-45-1'),
(9, 10, 'The Road', '2023-04-08', '978-0-987123-99-3'),
(10, 15, "The Midnight Library", '2023-11-25',"978-0-765432-45-4");


SELECT * FROM ReturnStatus;


-- ___________________________________________________________1. Retrieve the book title, category, and rental price of all available books.________________________________________________________

SELECT Book_Title, Category, Rental_Price FROM Books 
WHERE Book_Status="Yes"; 

-- ______________________________________________________2. List the employee names and their respective salaries in descending order of salary.____________________________________________________

SELECT Emp_Name AS Employee_Name, Salary FROM Employee 
ORDER BY Salary DESC; 

-- _____________________________________________________3. Retrieve the book titles and the corresponding customers who have issued those books.____________________________________________________

SELECT I.Issued_Book_Name as Book_Title, C.Customer_Name as Customer FROM 
IssueStatus I JOIN Customer C ON I.Issued_Cust = C. Customer_Id;

-- ________________________________________________________________4. Display the total count of books in each category.____________________________________________________________________________

SELECT  Category, COUNT(*) AS Total_Count FROM BOOKS 
GROUP BY Category; 

-- _____________________________________________5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000_____________________________________________

SELECT Emp_Name AS Employee_Name, Position, Salary FROM Employee 
WHERE Salary > 50000;

-- _____________________________________________________6. List the customer names who registered before 2022-01-01 and have not issued any books yet.______________________________________________

SELECT Customer_Name FROM Customer  
WHERE Reg_Date > '2022-01-01' 
AND Customer_Id NOT IN (SELECT Issued_Cust FROM IssueStatus);

-- ___________________________________________________________7. Display the branch numbers and the total count of employees in each branch.________________________________________________________

SELECT Branch_No, COUNT(*) AS Total_Employees FROM Employee 
GROUP BY Branch_No;

-- __________________________________________________________8. Display the names of customers who have issued books in the month of June 2023._____________________________________________________

SELECT DISTINCT C.Customer_Name, I.Issue_Date FROM 
Customer C JOIN IssueStatus I ON I.Issued_Cust = C. Customer_Id  
WHERE MONTH(I.Issue_Date) = "6"; 

-- _____________________________________________________________9. Retrieve Book_title from the Books table containing the word "history".__________________________________________________________

SELECT 	Book_Title FROM Books 
WHERE Book_Title LIKE "%history%";

-- _________________________________________10. Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.____________________________________________

SELECT Branch_No, COUNT(*) AS Total_Employees FROM Employee 
GROUP BY Branch_No HAVING COUNT(*)>5;

-- _________________________________________________11. Retrieve the names of employees who manage branches and their respective branch addresses.________________________________________________________

SELECT E.Emp_Name AS Employee_Name, B.Branch_Address, B.Branch_No FROM Employee E 
JOIN Branch B ON  E.Emp_Id=B.Manager_Id; 

-- __________________________________________________12. Display the names of customers who have issued books with a rental price higher than Rs. 25._______________________________________________

  SELECT C.Customer_Name, B.Book_Title, B.Rental_Price FROM 
  IssueStatus I JOIN Books B ON I.ISBN_Book = B.ISBN 
  JOIN Customer C ON I.Issued_Cust = C.Customer_Id 
  WHERE B.Rental_Price > 25 ;