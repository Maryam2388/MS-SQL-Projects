Create function MyAge(@DOB Datetime)
Returns Datetime
As
Begin
Declare @Age as Int
Set @Age= Datediff(YY, @DOB, Getdate())
Return @Age
End

Select dbo.MyAge(1989-01-26) as Calculated_Age

create function fahrenheit (@val float)
returns float
as
begin
return (@val * 1.08)+32
end

select dbo.fahrenheit(10) as Fahrenheit