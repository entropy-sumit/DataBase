create database Employees


create table EmployeesTable(
EmployeeName varchar(255),
PhoneNumber varchar(12),
Address varchar(255),
Department varchar(255),
Gender char(1),
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float,
StartDate datetime,
City varchar(255),
Country varchar(255))



select * from EmployeesTable

create procedure [dbo].[SpAddEmployeeDetails1]
(
@EmployeeName varchar(255),
@PhoneNumber varchar(12),
@Address varchar(255),
@Department varchar(255),
@Gender char(1),
@BasicPay float,
@Deductions float,
@TaxablePay float,
@Tax float,
@NetPay float,
@StartDate datetime,
@City varchar(255),
@Country varchar(255)
)
as
begin

Insert into EmployeesTable values(@EmployeeName,@PhoneNumber,@Address,@Department,@Gender,@BasicPay,@Deductions,@TaxablePay,
@Tax,@NetPay,@StartDate,@City,@Country)

End

--Select EmployeeID,EmployeeName,PhoneNumber,Address,Department,Gender,BasicPay,Deductions,TaxablePay,
--Tax,NetPay,StartDate,City,Country from Employee

--Create procedure [dbo].[SpUpdateEmployeeSalary]
--@id int,
--@month varchar(20),
--@salary int,
--@EmpId int

--AS
--BEGIN

--SET XACT_ABORT ON;
--BEGIN TRY
--BEGIN TRANSACTION;
--Update Salary
--set EmployeeSalary=@salary
--where SalaryId=@id and Month=@month and EmployeeId=@EmpId;
--select e.EmpId,e.EmpName,s.EmployeeSalary,s.Month,s.SalaryId
--from Employee e inner join Salary s on e.EmpID=s.EmployeeId where s.SalaryId=@id;
--COMMIT TRANSACTION;
--END TRY
--BEGIN CATCH

--select ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() as ErrorMessage;
--if(XACT_STATE())=-1
--BEGIN
--PRINT N'tHE transaction is in  an uncommittable state.'+'Rolling back transaction.'
--ROLLBACK TRANSACTION;
--END;
--IF(XACT_STATE())=1
--BEGIN
--PRINT
--N'The transaction is commitable.'+'Commiting Transaction'
--COMMIT TRANSACTION;
--END;
--END CATCH
--END