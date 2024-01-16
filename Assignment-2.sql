--Assignment 2:--
                       --TASKS TO BE PERFORMED--

--TASK 1: 1. Create a customer table which comprises of these columns: ‘customer_id’,
--‘first_name’, ‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’.
Create table Customer (Customer_id int,First_Name Char(10), Last_Name Char(10),
Email Varchar(255),Address varchar(255),city Varchar(100),state Varchar(50),zip Nchar(10));

Select * from Customer;

--TASK 2: Insert 5 new records into the table.
Insert into Customer values
(1001,'John','Smith','john.smith@gmail.com','123 Main Street','New York','NY',10001),
(1002,'Alice', 'Johnson','alice.johnson@gmail.com','456 Elm Avenue','Los Angeles','CA',90001),
(1003,'Michael','Brown','michael.brown@yahoomail.com','789 Oak Lane','Chicago','IL',60601),
(1004,'Grace','Davis','Grace.davis@yahoomail.com','101 Pine Road','Houston','TX',77001),
(1005,'David','Wilson','david.wilson@gmail.com','222 Cedar Street','SanJose','FL',33101);

--TASK 3: Select only the ‘first_name’ and ‘last_name’ columns from the customer table.
Select First_Name, Last_Name from Customer;

--TASK 4: Select those records where ‘first_name’ starts with “G” and city is ‘SanJose’.
Select * from Customer where First_Name LIKE 'G%' and city='SanJose';

--Task 5: Select those records where Email has only ‘gmail’.
Select * from Customer where Email LIKE '%gmail.com';



--Task 6: Select those records where the ‘last_name’ doesn't end with “A”.
Select * from Customer Where Last_Name NOT LIKE '%A';
