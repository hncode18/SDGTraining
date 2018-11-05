using System.ComponentModel.DataAnnotations;
using System.Data.Entity;


namespace PeopleProTraining.Models
{
    public class Employee
    {
        public int ID { get; set; }
        [Display(Name = "Name")]
        public string name { get; set; }
        [Display(Name = "Wage")]
        public double wage { get; set; }
        [Display(Name = "Position")]
        public string position { get; set; }
    }

    public class EmployeeDBContext : DbContext
    {
        public DbSet<Employee> Employees { get; set; }
    }
}