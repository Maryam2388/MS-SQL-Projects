use TryYourself_Intellipaat;

Create table Employee_Table(Employee_id int Primary Key, First_Name Varchar(20), Last_name varchar(20), Salary int, Joining_date datetime, Department char(10));

Select * from Employee_table;

Insert into Employee_Table values(1,'Anika','Arora',100000, '2020-02-14 9:00:00', 'HR');

Insert into Employee_Table values(2,'Veena','Verma',80000,'2011-06-15 9:00:00','Admin'),
(3,'Vishal','Singhal', 300000, '2020-02-16 9:00:00','HR'),
(4,'Sushanth','Singh',500000,'2020-02-17 9:00:00','Admin'),
(5,'Bhupal','Bhati',500000,'2011-06-18 9:00:00','Admin'),
(6,'Dheeraj','Diwan',200000,'2011-06-19 9:00:00','Account'),
(7,'Karan','Kumar',75000,'2020-01-14 9:00:00','Account'),
(8,'Chandrika','Chauhan',90000,'2011-04-15 9:00:00','Admin');

Create table Employee_Bonus_Table(Employee_ref_id Int Primary Key ,Bonus_Amount Int, Bonus_date Datetime);
Select * from Employee_Bonus_Table;

Alter table Employee_Bonus_Table Add Constraint FK_Employee_ref_id
Foreign key (Employee_ref_id) References Employee_Table(Employee_id);

Insert into Employee_Bonus_Table values(1,5000,'2020-02-16 0:00:00'),
(2,3000,'2011-06-16 0:00:00'),
(3,4000,'2020-02-16 0:00:00'),
(1,4500,'2020-02-16 0:00:00'),
(2,3500,'2011-06-16 0:00:00');

Drop table Employee_Bonus_Table
Select * from Employee_Bonus_Table;

Insert into Employee_Bonus_Table values(1,5000,'2020-02-16 0:00:00'),
(2,3000,'2011-06-16 0:00:00'),
(3,4000,'2020-02-16 0:00:00'),
(1,4500,'2020-02-16 0:00:00'),
(2,3500,'2011-06-16 0:00:00');

Create table Employee_Bonus_Table(Employee_ref_id Int, Bonus_Amount Int, Bonus_date Datetime);

Alter table Employee_Bonus_Table Alter Column Employee_ref_id int NOT NULL;

Create table Employee_Title_Table(Employee_ref_id int, Employee_title varchar(20), Affective_Date datetime);

Insert into Employee_Title_Table values(1, 'Manager','2016-02-20 0:00:00'),(2,'Executive', '2016-06-11 0:00:00'), 
(8,'Executive', '2016-06-11 0:00:00'),(5,'Manager','2016-06-11 0:00:00'),
(4,'Asst.Manager','2016-06-11 0:00:00'),(7,'Executive', '2016-06-11 0:00:00'),
(6,'Lead','2016-06-11 0:00:00'),(3,'Lead','2016-06-11 0:00:00');

Select * from Employee_Title_Table;
               
                          --TASKS--
--Task 1: Display the FIRST_NAME from the Employee Table using the alias name as Employee_name.
Select First_Name As Employee_Name from Employee_Table;

--Task 2: Display Last_name  from the employee table in upper case.
Select Upper(Last_name) as LAST_NAME from employee_table;

--Task 3: Display unique values of DEPARTMENT from the employee table.
Select Distinct Department from Employee_table;
Select Department from Employee_table;

--Task 4: Display unique values of DEPARTMENT from the employee table and print its length.
Select Distinct Department, Len(Department) as Department_Length from Employee_table;

--Task 5: Display the first name and last name from the employee table into a single column 
--as full name. A space char should seperate them.
--Method 1:-
Select concat(first_name,' ',last_name) as FULL_NAME from Employee_Table;
--Method 2:-
Select First_name+' '+Last_Name as FULL_NAME from Employee_Table;

--Task 6: Display all employee details from the Employee Table order by FIRST_NAME ascending.
Select * from Employee_Table order by First_Name ASC;

--Task 7: Display the first three characters of LAST_NAME from the Employee Table.
Select LEFT(Last_Name,3) AS First_Three_Characters from Employee_Table;

--Task 8: Display all employee details ordered by FIRST_NAME ascending and DEPARTMENT descending.
Select * from Employee_Table order by First_Name asc, Department Desc;

--Task 9: Display details of employees with the first name as "VEENA" and "KARAN" from the Employee Table.
Select * from employee_table where First_name in ('veena','Karan');

--Task 10: Display details of employees with Department name as 'Admin'.
Select * from employee_table where Department='admin';

--Task 11: Display details of employees whose First_name contains 'v'.
Select * from Employee_table where First_name Like 'V%';

--Task 12: Display details of employees whose salary lies between 100000 and 500000.
--Method 1:
Select * from employee_table where salary>=100000 and Salary<=500000;
--Method 2:
Select * from Employee_table where salary between 100000 and 500000;

--Task 13:Display details of the employees who have joined in February, 2020.
Select * from Employee_table where Year(Joining_date)=2020 and Month(Joining_date)=2;

--Task 14:Display employee names with salaries >= 50000 and <=100000.
Select * from Employee_table where Salary>=50000 and Salary<=100000;

--Task 15:Display the number of employees for each department in descending order.
Select Department, Count(*) as Employee_Count from Employee_Table
Group by(Department) 
Order by(Employee_Count) Desc;

--Task 16:Display details of employees who are also managers.
Select * from Employee_Title_Table where Employee_Title='Manager';

--Task 17:Display duplicate records having matching data in some fields of a table.
Select employee_ref_id,Bonus_amount, Count(*) AS DuplicateCount
FROM Employee_Bonus_Table
Group By employee_ref_id,Bonus_amount
HAVING Count(*)>1;

--Task 18: Display only odd rows from a table.
Select * from Employee_Table where (Employee_id % 2) =1;

--Task 19: Clone a new table from the Employee Table.
Select * into Employeetable_duplicate from Employee_Table;
Select * from Employeetable_duplicate;

--Task 20: Display the top 2 highest salaries from the table.
Select TOP 2 Salary from Employee_Table order by Salary Desc;

--Task 21: Display the list of employees with the same salary.
Select salary, Count(*) as SameSalary from Employee_table
group by salary 
having count(*)>1;

--Task 22: Display the second highest salary from the table.
Select Top 1 Salary
from (Select distinct Top 2 salary 
from Employee_table order by Salary Desc) as SecondHighest_Salary
order by Salary asc;

--Task 23: Display the first 50% records from a table.
Select Top 50 Percent * from Employee_Table;

--Task 24: Display the departments that have less than 4 people in it.
Select Department, Count(*) as Department_Wise
From Employee_Table
Group by Department having Count(*) < 4;

--Task 25: Display all departments along with the number of people in there.
Select Department, Count (*) as Department_Count from Employee_Table
Group by Department;

--Task 26: Display the name of employees having the highest salary in each department.
 Select Department, Max(Salary) as Highest_salary from Employee_Table group by Department;
 WITH RankedEmployees AS (
    SELECT
        First_Name,
        Salary,
        Department,
        ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS SalaryRank
    FROM
        Employee_Table
)
SELECT
   First_Name,
    Salary,
    Department
FROM
    RankedEmployees
WHERE
    SalaryRank = 1;

--Task 27: Display the names of employees who earn the highest salary.
Select * from Employee_Table where Salary=(select Max(salary) from employee_table);

--Task 28: Display the average salaries for each department.
Select Department, Avg(Salary) as AVG_Salary from employee_table group by Department;

--Task 29: Display the name of the employee who got the maximum bonus.
WITH RankedBonuses AS (
    SELECT
        Employee_Table.First_Name,
        Employee_Table.Employee_ID,
        Employee_Bonus_Table.Bonus_Amount,
        ROW_NUMBER() OVER (PARTITION BY Employee_Table.Employee_ID ORDER BY Employee_Bonus_Table.Bonus_Amount DESC) AS MaxBonus
    FROM
        Employee_Table
    JOIN
        Employee_Bonus_Table ON Employee_Table.Employee_ID =  Employee_Bonus_Table.Employee_ref_id
)
SELECT
   First_Name,
    Bonus_Amount
FROM
    RankedBonuses
WHERE
    MaxBonus = 1;

--Task 30: Display the first name and title of all the employees.
Select Employee_Table.First_Name,
Employee_Title_Table.Employee_title
From Employee_Table
Join 
Employee_Title_Table On Employee_Table.Employee_id=Employee_Title_Table.Employee_ref_id;

 