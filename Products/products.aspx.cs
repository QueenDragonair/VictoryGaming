using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void DataList1_SelectedIndexChanged(object sender,
    System.EventArgs e)
    {
        DataList1.DataBind();
    }


    protected void btnAddtoCart_Click(object sender, EventArgs e)
    {

    }
}