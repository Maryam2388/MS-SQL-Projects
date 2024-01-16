
 Create table Role (Id int not null primary key, Role_Name Varchar(100));
Select * from User_Has_Role;


Create table User_Has_Role(id int Primary Key, Role_Start_Time Datetime, Role_End_Time Datetime not null, 
User_Account_Id int Foreign Key (User_Account_Id) references User_account(Id), 
Role_Id int Foreign Key(Role_Id) references Role(Id));


Create table Status(Id int Primary Key, Status_Name Varchar(100), Is_User_Working Bit);



Create table User_Has_Status (Id int Primary Key, Status_Start_Time DateTime, Status_End_Time DateTime Not Null,
User_Account_Id int Foreign Key(User_Account_Id) references User_Account(Id), Status_Id int Foreign Key(Status_Id) References Status(Id));


--TASK 1. Insert data into each of the above tables. With at least two rows in each of 
--the tables. Make sure that you have created respective foreign keys.

Insert into Role values (1, 'Admin'),(2,'User'),(3,'Manager');

Insert into User_Has_Role values (101, '2022-05-19 00:00:00', '2023-06-22 00:00:00', 1001,001),
(102, '2021-11-25 00:00:00', '2023-11-26 00:00:00', 1002, 002);

Insert into User_Account values (1001, 'John_Smith', 'john.smith@gmail.com', 'John@123', 'Salt_Value', 'SHA256'),
(1002, 'Leo_Das', 'leo.das@gmail.com', 'Leo@123', 'Salt_Value_2', 'SHA512');

Insert into Status values(001, 'Active', 1),(002,'Inactive',0),(003, 'On Break', 1);

Insert into User_Has_Status values (01,'2023-01-01 08:00:00','2023-01-01 12:00:00',1001,001),
 (02, '2023-01-02 09:30:00', '2023-01-02 17:00:00', 1002, 003);

 Select * from Role; 
 Select * from User_Has_Role;
 Select * from User_Account;
 Select * from Status;
 Select * from User_Has_Status;



 --TASK 2. Delete all the data from each of the tables.
 
--ROLE TABLE DELETE
DELETE FROM User_Has_Role WHERE Role_Id IN (SELECT Id FROM Role);
DELETE FROM Role;
Select * from Role;

--USER_HAS_ROLE TABLE DELETE
Delete from User_Has_Role;
Select * from User_Has_Role;

--USER_ACCOUNT TABLE DELETE
Delete from USER_ACCOUNT;
Select * from User_Account;

--STATUS TABLE DELETE
Delete from Status;
Select * from Status;




--USER_HAS_STATUS TABLE DELETE
Delete from User_Has_Status;
Select * from User_Has_Status;
