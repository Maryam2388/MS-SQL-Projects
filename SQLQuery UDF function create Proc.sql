Create function AdditionFunction(@A as Int, @B as Int)
Returns Int
As
Begin
declare @Result as Int
Set @Result=@A+@B
Return @Result
END

Create function SubFunction (@A as Int, @B as int)
returns Int
As
Begin
Declare @Result as Int
Set @Result=@A-@B
return @result
End

select dbo.additionfunction (9,2)
Select dbo.Subfunction (5,2)

create function MulFunction (@A as int, @B as Int)
Returns Int
As
Begin
Declare @Result as Int
Set @Result=@A*@B
Return @Result
End

Select dbo.mulfunction (9,2)
select dbo.additionfunction (5,8)
select dbo.subfunction (6,7)

use TESTDB

Create function Mydate(@DayNum int)
Returns Datetime
As 
Begin
Declare @Result as Datetime
Set @result= Dateadd(MM,@DayNum,Getdate())
Return @result
end

Select dbo.Mydate(2)

drop function mydate

create function MyExam(@Datenum int)
Returns Datetime
As 
Begin
Declare @Result as Datetime
Set @Result= Dateadd(mm,@datenum,getdate())
Return @Result
end

select dbo.myexam(5)

Alter function findage(@DOB as datetime)
Returns Int
As
Begin
Declare @Age as Int
Set @Age= DATEDIFF(MM,@DOB,Getdate())
Return @Age
End

Select dbo.findage('2018-01-01')

Select dbo.findage('2019-02-23')

