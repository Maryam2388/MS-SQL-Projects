Use TestDB;

Create table EmplyoeeInfo (EmpID INT, EmpName char(10), PhoneNum INT, EmailID Varchar(30), DateofBirth Date);

Select * from EmplyoeeInfo;

Insert Into EmplyoeeInfo (EmpID, EmpName, PhoneNum, EmailID, DateofBirth) Values (1, 'Zubi', 650872, 'zubi@yahoo.com', '1997-09-18');
Insert Into EmplyoeeInfo (EmpID, EmpName, PhoneNum, EmailID, DateofBirth) Values (2, 'fasi', 6502876, 'fasi@yahoo.com', '1998-09-08');
Insert Into EmplyoeeInfo (EmpID, EmpName, PhoneNum, EmailID, DateofBirth) Values (2, 'suzi', 6502976, 'suzi@yahoo.com', '1998-10-05');

Alter table emplyoeeInfo Add auto_id Int Identity(1,1)
Delete from EmplyoeeInfo where auto_id not in (Select min (auto_id) from EmplyoeeInfo group by EmpID)

Insert into EmplyoeeInfo (EmpID, EmpName, PhoneNum, EmailID, DateofBirth) values (3, 'Aiman', 83639260, 'aiman@gmail.com', '2018-12-09')
Insert into EmplyoeeInfo (EmpID, EmpName, PhoneNum, EmailID, DateofBirth) values (4, 'Alishba', 83639278, 'alishu@gmail.com', '2019-12-09')
Insert into EmplyoeeInfo (EmpID, EmpName, PhoneNum, EmailID, DateofBirth) values (5, 'Feroz', 24339278, 'feroz@gmail.com', '2009-12-10')

Alter table EmplyoeeInfo Add Salary Money;

Select * from EmplyoeeInfo;

Update EmplyoeeInfo set Salary=100 Where EmpName='Zubi';

Update EmplyoeeInfo set Salary=200 where EmpName='fasi';
Update EmplyoeeInfo set Salary=300 where EmpName='Aiman';
Update EmplyoeeInfo set Salary=400 where EmpName='Alishba';
Update EmplyoeeInfo set Salary=500 where EmpName='Feroz';

Update EmplyoeeInfo set PhoneNum=98850187 where EmailID='feroz@gmail.com';
Update EmplyoeeInfo set EmailID='feroz0187@gmail.com' where EmpName='Feroz';

Insert into EmplyoeeInfo (EmpID, EmpName, PhoneNum, EmailID, DateofBirth, Salary) values (6, 'Eliza', 24701278, 'Eliza@yahoo.com', '2001-12-10', 700);

Alter Table EmplyoeeInfo Alter column EmpName Char (20);

Insert into EmplyoeeInfo (EmpID, EmpName, PhoneNum, EmailID, DateofBirth, Salary) values (7, 'Rumaisa Aiman Khan', 25701078, 'Rummu@yahoo.com', '2000-01-06', 700);

Select * from EmplyoeeInfo;

Delete from EmplyoeeInfo where EmpID=3;

EXEC sp_rename EmplyoeeInfo.'PhoneNum','MobileNum', 'Column';

Create Table Maryam (StudentName Varchar,RollNum INT);

Insert into Maryam (StudentName, RollNum) values (Rosy, 1);

Drop Table Maryam;

Select EmailId from EmplyoeeInfo;

Alter table emplyoeeinfo drop column auto_id;

Update EmplyoeeInfo set Salary=625 where EmpName in ('Feroz', 'Alishba');

Update EmplyoeeInfo set Salary=725 where EmpName in ('Eliza', 'Rumaisa Aiman Khan');

Select EmpName, Salary from EmplyoeeInfo;




Drop table Test;

















































