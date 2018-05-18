using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string fName;
        string lName;
        string comment;

        fName = txtFName.Text;
        lName = txtLName.Text;
        comment = txtComments.InnerText;

        Comment aComment = new Comment();
        aComment.fName = fName;
        aComment.lName = lName;
        aComment.comment = comment;

        CommentDA.insertComment(aComment);

        Server.Transfer("~/Default.aspx");
    }
}