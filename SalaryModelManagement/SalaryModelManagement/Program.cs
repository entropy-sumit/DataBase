using System;

namespace SalaryModelManagement
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Salary salary = new Salary();
            SalaryUpdateModel salaryUpdateModel = new SalaryUpdateModel();
            salaryUpdateModel.EmployeeSalary = 1300;
            salaryUpdateModel.SalaryId = 1;
            salaryUpdateModel.EmployeeId = 1;
            salaryUpdateModel.Month = "Jan";

            salary.UpdateEmployeeSalary(salaryUpdateModel);
        }
    }
}
