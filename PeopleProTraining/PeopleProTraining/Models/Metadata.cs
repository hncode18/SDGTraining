using System;
using System.ComponentModel.DataAnnotations;

namespace PeopleProTraining.Models
{
    public class EmployeeMetadata
    {
        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(100)]
        public string Position { get; set; }

        [Range(18, 80)]
        public Nullable<int> Age { get; set; }

        [Range(11, double.MaxValue)]
        public Nullable<double> Wage { get; set; }

        [Display(Name = "Department")]
        public int DepartmentID { get; set; }
    }

    public class DepartmentMetadata
    {
        [StringLength(50)]
        public string Name { get; set; }

        [Display(Name = "Monthly Expenses")]
        public Nullable<double> MonthlyExpenses { get; set; }

        [Display(Name = "Number of Employees")]
        public Nullable<int> NumEmployees { get; set; }
    }

    public class BuildingMetadata
    {
        [Range(0, double.MaxValue)]
        public Nullable<decimal> PropertyValue { get; set; }

        [Display(Name = "Department")]
        public int DepartmentID { get; set; }
    }
}