											--ASSIGNMENT 6--

			--Tasks To Be Performed:

--TASK 1. Create a view named ‘customer_san_jose’ which comprises of only those customers who are from San Jose.

Create View customer_san_jose 
As
Select * from Customer
where city='SanJose';

Select * from customer_san_jose;


--TASK 2. Inside a transaction, update the first name of the customer to Francis where the last name is Jordan:
--a. Rollback the transaction
--b. Set the first name of customer to Alex, where the last name is Jordan.

Begin Transaction
Update Customer 
set First_Name='Francis'
where Last_Name='Jordan'
Rollback;

Select * from Customer;

Begin Transaction
Update customer
set first_name='Alex'
where last_name='Jordan';

--TASK 3. Inside a TRY... CATCH block, divide 100 with 0, print the default error message.
BEGIN TRY
    DECLARE @result DECIMAL(10, 2);
    SET @result = 100 / 0;
END TRY
BEGIN CATCH
        PRINT ERROR_MESSAGE();
END CATCH;

Select * from Orders;
--TASK 4. Create a transaction to insert a new record to Orders table and save it.
Begin Transaction
Insert into Orders values(106,'2023-10-06',50000,1006);

If @@ERROR<>0
Begin
Rollback transaction;
Print 'Transaction rolled back.';
End
Else
Begin 
Commit transaction;
Print 'Transaction Commited';
End;

