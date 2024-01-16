Use TESTDB
Create table TBLProductSales ( ID Int, SalesAgent Varchar (20), SalesCountry Varchar (15), Salesamount int);

Insert into TBLProductSales values(1,'Tom','UK',200),(2,'John','US',180), (3,'John','UK',260),
(4,	'David'	,'India',	280),
(5,	'Tom',	'India',540);

Insert into TBLProductSales values (6,'David','US',230),
(7,	'Tom',	'US',	180),
(8,	'John',	'India',340),
(9,	'John',	'UK',	670),
(10,	'David',	'UK',	750),
(11,	'John',	'UK',	260),
(12,	'David',	'US',	320),
(13,	'Tom',	'US',	430),
(14,	'Tom',	'UK',	230),
(15,	'John',	'India',	280),
(16,	'David',	'India',	270),
(17,	'David',	'India',	190),
(18,	'Tom',	'UK',	160),
(19,	'John',	'US',	440),
(20,	'David',	'UK',	240);

Select * from TBLProductSales;

--Pivot Query
Select Salesagent, India, US, UK from TBLProductSales
PIVOT
(
			SUM(Salesamount)
			FOR SalesCountry
			IN (India, US, UK)
)
As PivotTable

-- Perfect PIVOT TABLE

Select Salesagent, India, US, UK
From
(
Select Salesagent, salescountry, salesamount 
from TBLProductSales
) as sourceTable
PIVOT
(
			SUM(Salesamount)
			FOR SalesCountry
			IN (India, US, UK)
)
As PivotTable



Create table CollegeStat (id int, stdname varchar(10), stdcourse varchar(15), marksobtained int);

Select * from CollegeStat;

Insert into CollegeStat values (1,'Ali','Science',98),(2,'Rock','Social',90),(3,'Ali','Social',92),(4,'Rock','Science',99),(5,'sruti','Science',76),(6,'ravi','English',88),(7,'raja','Science',96),(8,'setu','Social',94),(9,'raj','Science',87),(10,'shankar','English',77),(11,'sadaf','English',82),(12,'fatima','Social',69),(13,'shaik','Science',78),(14,'imran','English',74),(15,'arif','English',99),(16,'irfan','Social',85);

--Pivot

Select English,Science,Social
from
(
Select Stdcourse,marksobtained from CollegeStat
) as sourcetable
Pivot
(
SUM(marksobtained)
for Stdcourse
In (English,Science,Social)
) As PivotTable
