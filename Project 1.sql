										--TASKS TO BE PERFORMED--

--task a. Get all the details from the person table including email ID, phone number and phone number type.
Select P.BusinessEntityID,P.PersonType,P.NameStyle,P.Title,P.FirstName,P.MiddleName,P.LastName,P.Suffix,P.EmailPromotion,
P.AdditionalContactInfo,P.Demographics,P.rowguid,P.ModifiedDate,E.EmailAddress,PN.PhoneNumber,PT.Name
From  
[Person].[Person] P
LEFT JOIN
   [Person].[EmailAddress] E ON P.businessentityid = E.businessentityid
LEFT JOIN
   [Person].[PersonPhone] PN ON P.businessentityid = PN.businessentityid
LEFT JOIN
   [Person].[PhoneNumberType] PT ON PN.PhoneNumberTypeID = PT.PhoneNumberTypeID;


--task b. Get the details of the sales header order made in May 2011;
Select * from 
[Sales].[SalesOrderHeader] 
where 
Month(OrderDate) = 5 
AND Year(OrderDate) = 2011;


--task c. Get the details of the sales details order made in the month of May 2011.
Select * from 
[Sales].[SalesOrderDetail]
Where 
MONTH(ModifiedDate)=5
AND YEAR(ModifiedDate)=2011;


--task d. Get the total sales made in May 2011
Select 
		SUM(TotalDue) As TotalSales
From
	[Sales].[SalesOrderHeader]
Where 
	Month(OrderDate)=5
AND 
	Year(OrderDate)=2011;


--task e. Get the total sales made in the year 2011 by month order by increasing sales.
Select 
		Month(OrderDate) AS Month,
		Sum(TotalDue) AS Total_Sales_2011
From
	[Sales].[SalesOrderHeader]

Where 
		Year(OrderDate)=2011
Group BY 
		Month(OrderDate)
Order BY 
		Total_Sales_2011 ASC;


--task f. Get the total sales made to the customer with FirstName='Gustavo' and LastName ='Achong'.
select Firstname,LastName,sum(linetotal) as Total_Sales from person.Person P

inner join sales.customer C

on P.BusinessEntityID=C.PersonID

inner join sales.SalesOrderHeader SH

on c.CustomerID=SH.CustomerID

inner join sales.SalesOrderDetail SD

on SH.SalesOrderID=SD.SalesOrderID

where P.FirstName='Gustavo' and P.LastName='Achong'

group by P.FirstName,P.LastName;