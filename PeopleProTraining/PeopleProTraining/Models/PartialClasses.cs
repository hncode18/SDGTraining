using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PeopleProTraining.Models
{
    [MetadataType(typeof(EmployeeMetadata))]
    public partial class Employee
    {
    }

    [MetadataType(typeof(DepartmentMetadata))]
    public partial class Department
    {
    }
}