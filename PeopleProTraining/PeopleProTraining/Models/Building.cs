//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PeopleProTraining.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Building
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public Nullable<decimal> PropertyValue { get; set; }
        public int DepartmentID { get; set; }
    
        public virtual Department Department { get; set; }
    }
}
