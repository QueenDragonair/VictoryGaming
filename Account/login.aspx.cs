using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text;
        string password = txtPass.Text;

        if (AccountDA.loginCustomer(email, password))
        {
            Session["email"] = email;

            if(email == "Manager")
            {
                Server.Transfer("~/Manage/management.aspx");
            }else{

                Server.Transfer("~/Products/products.aspx");
            }
        }else
        {
            lblOutput.Text = "Make sure you are registered or entered the correct information.";
        }

       
    }
}