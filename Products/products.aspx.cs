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
        Label lbl;
        int index = DataList1.SelectedIndex;
        var list = (List<Product>)Session["cart"];

        lbl = DataList1.Items[index].FindControl("lblName") as Label;
        string name = lbl.Text;

        lbl = DataList1.Items[index].FindControl("lblSize") as Label;
        string size = lbl.Text;

        lbl = DataList1.Items[index].FindControl("lblColor") as Label;
        string color = lbl.Text;

        lbl = DataList1.Items[index].FindControl("lblPrice") as Label;
        string price = lbl.Text;

        Product p = new Product();
        p.productName = name;
        p.size = size;
        p.color = color;
        p.price = Convert.ToDecimal(price);

        list.Add(p);

        Session["cart"] = list;
       
    }
}