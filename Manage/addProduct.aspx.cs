using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Manage_addProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddProduct_Click(object sender, EventArgs e)
    {

        if (imageUpload.HasFile)
        {
            string serverPath = Server.MapPath("Media");
            string imagePath = serverPath + "/" + imageUpload.FileName;
            try
            {
                imageUpload.SaveAs(imagePath);

            }
            catch (System.IO.DirectoryNotFoundException ex)
            {
                throw ex;
            }
        }

        addProduct();

    }



    private void addProduct()
    {
        string productName;
        string size;
        string color;
        string gameName;
        int gameId = 0;
        string price;
        string imageUrl = "..\\Media\\" + imageUpload.FileName;

        productName = txtPname.Text;
        size = txtPsize.Text;
        color = txtPcolor.Text;
        price = txtPprice.Text;
        gameName = ddGameName.Text;

        gameId = ProductDA.getGameId(gameName);

        Product aProduct = new Product();
        aProduct.productName = productName;
        aProduct.size = size;
        aProduct.color = color;
        aProduct.gameID = gameId;
        aProduct.price = Convert.ToDecimal(price);
        aProduct.imageId = imageUrl;

        ProductDA.insertProduct(aProduct);

        Server.Transfer("~/Products/products.aspx");
    }



}