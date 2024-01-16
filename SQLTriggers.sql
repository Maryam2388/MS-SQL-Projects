CREATE TRIGGER tr_salary_difference
ON Emplyoeeinfo
AFTER UPDATE
AS
BEGIN
    DECLARE @diff INT;
    SELECT @diff = (SELECT salary FROM inserted) - (SELECT salary FROM deleted);
    PRINT 'The difference between the old and new salary is: ' + CONVERT(NVARCHAR(10), @diff);
END;

Update EmplyoeeInfo set Salary= 459 where EmpName='Eliza';
Select * from EmplyoeeInfo