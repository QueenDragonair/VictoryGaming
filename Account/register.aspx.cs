using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string fName = txtFName.Text;
        string lName = txtLName.Text;
        string email = txtEmail.Text;
        string password = txtPassword.Text;

        Customer c = new Customer(fName, lName, email, password);

        AccountDA.insertCustomer(c);

        Server.Transfer("~/Account/login.aspx");

    }
}