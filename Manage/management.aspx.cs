using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGoToAddProduct_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/Manage/addProduct.aspx");
    }

    protected void btnAddGame_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/Manage/addGame.aspx");
    }

    protected void btnCustomers_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/Manage/viewCustomers.aspx");
    }
}