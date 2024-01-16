							--Assignment 4--

-- TASKS TO BE PERFORMED:-

--TASK 1. Use the inbuilt functions and find the minimum, maximum and average amount from the orders table.
Select MIN(Amount) as Minimum_Amount, MAX(Amount) as Maximum_Amount, AVG(Amount) as Average_Amount from Orders;

--TASK 2. Create a user-defined function which will multiply the given number with 10.
Create function dbo.multiplybyten(@num int)
Returns int
As
Begin
	Declare @result int
	set @result = @num*10
	return @result
	End;

Select dbo.multiplybyten(20);

--TASK 3. Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and print the corresponding value.
Select 
	Case 
	when 100 < 200 Then '100 is less than 200'
	when 100 > 200 then '100 is greater than 200'
	else '100 is equal to 200'
	End As Result;


-- TASK 4. Using a case statement, find the status of the amount. 
        --Set the status of the amount as high amount, low amount or medium amount based upon the condition.
Select 
		Amount,
	Case 
	When Amount >30000 Then 'High Amount'
	When Amount< 10000 Then 'Low Amount'
	Else 'Medium Amount'
	End As Amount_Status
	From Orders;

--TASK 5. Create a user-defined function, to fetch the amount greater than the given input.

CREATE FUNCTION dbo.GetAmountsGreaterThan(@inputAmount Int)
RETURNS TABLE
AS
RETURN
(
    SELECT Amount
    FROM Orders
    WHERE Amount > @inputAmount
)

SELECT Amount
FROM dbo.GetAmountsGreaterThan(10000)