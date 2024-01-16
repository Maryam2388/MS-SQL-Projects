													
													--Assignment 5--

-- TASKS TO BE PERFORMED:-

--TASK 1. Arrange the ‘Orders’ dataset in decreasing order of amount.
Select * from Orders Order By AMOUNT DESC;

--TASK 2. Create a table with the name ‘Employee_details1’ consisting of these columns: ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’.
--Create another table with the name ‘Employee_details2’ consisting of the same columns as the first table.
Create table Employee_details1 (Emp_id int, Emp_name varchar(20), Emp_salary Int);
Insert into Employee_details1 values (1, 'Nayeem', 1000), (2, 'Feroz', 2000),(3,'Maryam',3000),(4,'John',4000);

Create table Employee_details2 (Emp_id int, Emp_name varchar(20), Emp_salary Int);
Insert into Employee_details2 values (1, 'Nayeem',1000), (2, 'Feroz',2000),(3,'Fatima',3000),(4,'John',4000);

Select * from Employee_details1;
Select * from Employee_details2;


--TASK 3. Apply the UNION operator on these two tables
Select * from Employee_details1
UNION
Select * from Employee_details2;


--TASK 4. Apply the INTERSECT operator on these two tables
Select * from Employee_details1
INTERSECT
Select * from Employee_details2;

--TASK 5. Apply the EXCEPT operator on these two tables
Select * from Employee_details1
EXCEPT
Select * from Employee_details2;