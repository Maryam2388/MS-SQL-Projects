--Assignment 3:--
                       --TASKS TO BE PERFORMED--

--TASK 1:Create an ‘Orders’ table which comprises of these columns: ‘order_id’,‘order_date’, ‘amount’, ‘customer_id’.
Create table Orders(ORDER_ID int, ORDER_DATE date, AMOUNT INT, CUSTOMER_ID int);
Select * from Orders;

--TASK 2: Insert 5 new records.
Insert into Orders values(101, '2023-10-01', 10000,1001),(102, '2023-10-02', 20000,1002),
(103, '2023-10-03', 10000,1003),(104, '2023-10-04', 30000,1004),(105, '2023-10-05', 40000,1005);
Select * from Orders;

--TASK 3: Make an inner join on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column
Select Orders.ORDER_ID, Orders.ORDER_DATE, Orders.AMOUNT,
Customer.First_Name, Customer.Last_Name,Customer.Email,Customer.Address,Customer.city,Customer.state,Customer.zip
from Orders
INNER JOIN
Customer ON Orders.Customer_id=Customer.CUSTOMER_ID;

--TASK 4: Make left and right joins on ‘Customer’ and ‘Orders’ tables on the‘customer_id’ column.
--1. LEFT JOIN
Select 
Orders.ORDER_ID, Orders.ORDER_DATE, Orders.AMOUNT,
Customer.First_Name, Customer.Last_Name,Customer.Email,Customer.Address,Customer.city,Customer.state,Customer.zip
from Customer
LEFT JOIN 
Orders ON Customer.Customer_id=Orders.CUSTOMER_ID;

--2. RIGHT JOIN
Select
Orders.ORDER_ID, Orders.ORDER_DATE, Orders.AMOUNT,
Customer.First_Name, Customer.Last_Name,Customer.Email,Customer.Address,Customer.city,Customer.state,Customer.zip
from Orders
RIGHT JOIN
Customer ON Orders.CUSTOMER_ID=Customer.Customer_id;

--TASK 5: Make a full outer join on ‘Customer’ and ‘Orders’ table on the ‘customer_id’ column.
Select
Orders.ORDER_ID, Orders.ORDER_DATE, Orders.AMOUNT,
Customer.First_Name, Customer.Last_Name,Customer.Email,Customer.Address,Customer.city,Customer.state,Customer.zip
from Orders
FULL OUTER JOIN
Customer ON Orders.CUSTOMER_ID=Customer.Customer_id;

--TASK 6. Update the ‘Orders’ table and set the amount to be 100 where ‘customer_id’ is 3.
Update Orders set AMOUNT=100 where CUSTOMER_ID =1003;
Select * from Orders where CUSTOMER_ID =1003;
