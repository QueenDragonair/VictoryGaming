using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckBoxList1.Items.Clear();

        var list = (List<Product>)Session["cart"];
        for(int i = 0; i < list.Count; i++)
        {
            Product p = list[i];

            CheckBoxList1.Items.Add(p.productName + " " + p.size + " " + Convert.ToString(p.price));
            
        }
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        var list = (List<Product>)Session["cart"];

        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                CheckBoxList1.Items.RemoveAt(i);
                list.Remove(list[i]);
            }
        }
    }

    protected void btnPlaceOrder_Click(object sender, EventArgs e)
    {

    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        CheckBoxList1.DataBind();
    }
}