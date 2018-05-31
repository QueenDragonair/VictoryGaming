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
    protected void DataList1_ItemCommand(object source,
                         DataListCommandEventArgs e)
    {
        int count = DataList1.Items.Count;
        string[] lbls = { "lblName", "lblSize", "lblColor", "lblPrice" };
        string text = "";

        for (int i = 0; i < count; i++)
        {
            int index = DataList1.SelectedIndex;

            for (int x = 0; x < lbls.Length; x++)
            {
                Label lbl = DataList1.Items[index].FindControl(lbls[x]) as Label;
                text = text + lbl.Text + " ";

            }
        }
    }

}