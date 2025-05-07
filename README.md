# DBMS - MySQL
#### SQL Projects as I learn along the way

## Assignment 1 - DDL Commands
#### A School Database is created using the basic DDL Commands

### Full Workflow as each step demonstrates a DDL command in action:
Create the database and table.
Insert sample data and display it using SELECT.
Add the Contact column.
Remove the Grade column.
Rename the table to CLASSTEN.
Delete all rows from the table using TRUNCATE.
Remove the table entirely using DROP.
## Assignment 2 - DDL Constraints
A Sales Database is created using basic DDL Constrints such as PRIMARY KEY, NOT NULL AND UNIQUE. Further manipulated/updated the database with DDL & DML commands such as INSERT, RENAME, UPDATE, ADD and DROP etc.

### Summary of Commands:
Created the database and table.
Added a new column to the table.
Renamed the table.
Inserted 10 rows into the renamed table.
Retrieved specific columns using SELECT command.
Updated a specific row in the table.
Dropped the table entirely from the database.
## Assignment 3 - DML Commands
A Organisation database is created in which a Managers table is created with specific constriants. Required data/records are then retrieved with different DML commands

### Summary of Commands :
Created the Managers table with constraints like PRIMARY KEY, NOT NULL, and CHECK.
Inserted 10 rows with relevant data.
Retrieved specific manager information using SELECT.
Calculated annual income using expressions in the query.
Filtered records using WHERE with conditions like !=, BETWEEN, and logical operators like AND.
## Assignment 4 - SQL Queries
This project demonstrates the use of SQL for creating, managing, and querying relational databases. It includes two tables: Country and Persons, which contain information about countries and individuals, respectively. The project showcases various SQL operations such as table creation, data insertion, and complex queries.

### Summary of Commands :
Created Country database with 2 tables Country and Persons
Inserted 10 rows of relevant data.
Retrieve distinct records using the DISTINCT funtion.
Used AS function to show alias names in the result.
Logicl operators(AND, OR), Comparison operators(<,>,=), IN and BETWEEN operators and LIKE function were used to retrieve the required records from the table.
## Assigment 5 - Grouping and Sorting
This project involves working with two related tables: Country and Persons. The project showcases various SQL operations, such as table creation, data insertion, along with GROUP BY and ORDER BY functions for grouping and sorting of the records.

### Summary of Commands
Created Population database with 2 tables Country and Persons
Inserted 15 rows of relevant data.
Substring function was used to retrtieve a substring of specific length 
Used AS function to show alias names in the result.
Arithmetic functions such as MAX, MIN, COUNT,AVG etc were used to retirive the required records from the table.
LIMIT function was used to limit the number of records returned from a query.
GROUP BY function is used to group the records in the table according to the given condition.
ORDER BY function was used to sort the result of the query.
HAVING function is used filter the records in the table acoording to a givwen condition.
## Assignment 6 - Joins and Unions
This document provides instructions for performing specific SQL operations on the Country and Persons tables. The tasks include joining tables, listing country names, and manipulating data.

### Summary of Commands
INNER JOIN is used to retrieve matching rows from both the Country and Persons tables based on the Country_Id
LEFT JOIN is used to retrieve all rows from the Persons table, and the matching rows from the Country table. If no match is found, NULL values are included for the Country columns.
RIGHT JOIN is used to retrieve all rows from the Country table, and the matching rows from the Persons table. If no match is found, NULL values are included for the Persons columns.
DISTINCT and UNION commands are used to retrieve all unique country names present in either the Country or Persons tables.
Just UNION command is used to retrieve all country names present in both the Country and Persons tables, allowing duplicates.
ROUND command is used to display the Persons table with ratings rounded to the nearest integer.
## Assignment 7 - Functions
The file contains SQL commands for managing a database named Country, with specific operations performed on its tables. The primary focus is on adding and updating a DOB column to the Persons Table, calculating age from DOB using a user-defined function, and performing various other operations with SQL built-in-functions as well on the Country table.

### Sumary of Cammands
Altered the Persons table in the Country database by adding a DOB column and added values using the update command
Wrote a User Defined Function called CalculateAge() to calculate the age by giving DOB as the parameter.
Select query to fetch the Age of all persons using the function created CalculateAge() giving DOB of Persons as its parameter.
Used SQL Built-In-Functions such as Length(),Substr(), Ucase() and Lcase() to get the desired results on the Country table.
## Assignment 8 - Subqueries and Views
The sql file contains commands for mananging the database Country, subqueries, creating views with specific operation performed in the tables and views. The primary focus is on subqueries and creating desired views.

### Summary of Commands
Subqueries are written to get the desired output as per the requirements.
A new table named Customer is created and values were inserted for further use of creating views.
Creating and updating of views were done as per the required conditions.
Various built-in SQl commads and aggregae functions such as create, update, group by, order by etc were used as per requirement to get the desired result/views.
## Assignment 9 - Stored Procedures
This sql file outlines the strored procedures created for managing the Worker table in the Worker Database along with their usage and examples.

### Summary of Commands
Wroker taqble schema is defined with required attributes and datatypes.
A stored procedure named AddWorker() is written to take in the column values as input parameters to add those values to the worker table.
Stored procedure GetWorkerSalary() is written to  retrieve Salary(Out Parameter) based on Worker ID(In Parameter).
Stored procedure UpdateWorkerDepartment() is written to  update Department(In) with the given the Worker Id(In) in the worker table.
Stored procedure GetWorkerCountByDepartment() is written to give the total worker count(Out) in any deaprtment given the department name(In) from the worker table.
Stored procedu8re DeptAvgSalary() is written to get the average salary of the particular department given as the input parameter from the wroker table.
## Assignment 10 - Triggers
This project implements a teachers table with related SQL triggers to enforce data integrity, validate input, and log actions for INSERT and DELETE operations. It ensures proper management of the data in a relational database.

### Summary of Commands
Two tables , Techers and Teachers_Log are created according to the given attributes :

Teachers: Stores details of teachers, including their ID, name, subject, experience, and salary.

Teacher_Log: Logs actions performed on the teachers table, including inserts and deletions.
Use the log table for auditing changes to the teachers table.
Triggers ensure data consistency and enforce business rules. We can modify the trigger logic to adapt to specific requirements. The following Triggers are created to initiate the necessary events when and where required :

before_insert_teacher: Validates salary during insertion to ensure it is not negative.

after_insert_teacher: Logs every new entry in the teachers table into the teacher_log table.

before_delete_teacher: Prevents deletion of teachers with more than 10 years of experience.

after_delete_teacher: Logs every deletion in the teachers table into the teacher_log table.

## Library Management with MySQL
This project implements a library database management system using MySQL. It organizes data related to library branches, employees, books, customers, and their transactions (issue and return statuses). The database is designed to ensure data consistency through proper relationships and constraints. The Library Management System project is a database management solution designed to efficiently track and manage library resources, including books, customers, employees, and branch operations. This system maintains critical information such as book availability, rental pricing, customer registrations, and employee details while supporting common library operations like book issue and return.

### Summary of Commands
A database named library is created which includes the following six tables: Branch, Employee, Books, Customer, IssueStatus, ReturnStatus with required attributes. Stored procedure to insert values into Books and Customer table were created and values were inserted to the corresponding tables.

Basic query commands were used to retrieve data based on specified conditions. Such as :

SELECT FROM : Fetches data from one or more tables.

WHERE: Filters records based on specific conditions.

ORDER BY: Sorts the retrieved data in ascending or descending order.

Aggregate Functions were used to calculate totals, averages, counts, etc. Such as :

COUNT(*): Counts the number of rows.

GROUP BY: Groups data based on specified columns.

HAVING: Filters grouped data.

Joins were used to combine data from multiple tables based on relationships.

INNER JOIN/ JOIN : Fetches matching rows from multiple tables.

ON: Specifies the condition for the join.

Date Filters were used for querying records based on dates.

MONTH(): Fetches month from a given date.

Wildcards to search for patterns in text fields were also used.

LIKE '%word%': Finds rows where a column contains the specified word or phrase.
