-- CREATING THE DATABASE SALES

CREATE DATABASE SALES;
USE SALES;

-- CREATING ORDERS TABLE WITH CONSTRAINTS

CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,												 -- PRIMARY KEY CONSTRAINT
    Customer_Name VARCHAR(100) NOT NULL, 									 -- NOT NULL CONSTRAINT
    Product_Category VARCHAR(50),
    Ordered_Item VARCHAR(100) NOT NULL,
    Contact_No VARCHAR(15) UNIQUE 											 -- UNIQUE CONSTRAINT
);

-- ADD NEW COLUMN ORDER_QUANTITY IN THE ORDERS TABLE

ALTER TABLE Orders ADD Order_Quantity INT;

-- RENAMING THE ORDERS TABLE AS SALES_ORDERS

RENAME TABLE Orders TO Sales_Orders; 

-- INSERTING ROWS(VALUES) INTO Sales_Orders TABL

INSERT INTO Sales_Orders (Order_Id, Customer_Name, Product_Category, Ordered_Item, Contact_No, Order_Quantity) VALUES
(1, 'Alice', 'Electronics', 'Smartphone', '1234567890', 2),
(2, 'Bob', 'Home Appliances', 'Air Conditioner', '1234567891', 1),
(3, 'Charlie', 'Books', 'Fiction Novel', '1234567892', 5),
(4, 'Diana', 'Furniture', 'Dining Table', '1234567893', 1),
(5, 'Ethan', 'Electronics', 'Laptop', '1234567894', 2),
(6, 'Fenny', 'Clothing', 'T-shirt', '1234567895', 5),
(7, 'George', 'Sports', 'Tennis Racket', '1234567896', 2),
(8, 'Haya', 'Books', 'Autobiography', '1234567897', 2),
(9, 'Issac', 'Automotive', 'Car Tires', '1234567898', 4),
(10, 'June', 'Beauty', 'Skin Care Kit', '1234567899', 3); 

SELECT * FROM Sales_Orders;

-- RETTRIEVE Customer_Name AND Ordered_Item  FROM THE Sales_Orders TABLE

SELECT Customer_Name, Ordered_Item FROM Sales_Orders;

-- UPDATING THE Orderd_Item FOR ANY SPECIFIC ROW

UPDATE Sales_Orders SET Ordered_Item = 'Gaming Laptop'WHERE Order_Id = 5 ;       -- ************ UPDATING THE ORDERED ITEM FOR THE CUSTOMER ETHAN ************** 

SELECT Customer_Name, Ordered_Item FROM Sales_Orders;

-- DELETING THE TABLE Sales_Orders FROM THE SALES DATABASE

DROP TABLE Sales_Orders;

USE SALES;
SHOW TABLES;







