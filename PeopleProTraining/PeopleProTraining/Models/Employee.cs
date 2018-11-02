using System.Data.Entity;

namespace PeopleProTraining.Models
{
    public class Employee
    {
        public int ID { get; set; }
        public string name { get; set; }
        public double wage { get; set; }
        public string position { get; set; }
    }

    public class EmployeeDBContext : DbContext
    {
        public DbSet<Employee> Employees { get; set; }
    }
}