use TESTDB;

Create table StdInfo (RollNum INT, Name varchar(10), Course Varchar(5));

select * from StdInfo;

Alter table StdInfo alter column RollNum INT NOT NULL;

SP_Rename 'StdInfo.Fullname', 'FullName';

Insert into StdInfo values(1, 'John', 'BiPC');

Alter table StdInfo alter column Course Varchar

Delete StdInfo where RollNum=1;
