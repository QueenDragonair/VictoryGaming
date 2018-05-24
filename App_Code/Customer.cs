using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{
    public string fName { get; set; }
    public string lName { get; set; }
    public string email {get;set;}
    public string password { get; set; }

    public Customer()
    {
      
    }

    public Customer(string fName, string lName, string email, string password)
    {
        this.fName = fName;
        this.lName = lName;
        this.email = email;
        this.password = password;
    }
}