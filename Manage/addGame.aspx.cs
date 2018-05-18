using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manage_addGame : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddGame_Click(object sender, EventArgs e)
    {
        string gameName;

        gameName = txtGameName.Text;

        Game aGame = new Game();
        aGame.gameName = gameName;

        GameDA.insertGame(aGame);

        Server.Transfer("~/Products/products.aspx");
    }
}