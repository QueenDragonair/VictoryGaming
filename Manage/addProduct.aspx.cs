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

        string filename = Path.GetFileName(imageUpload.PostedFile.FileName);
        string contentType = imageUpload.PostedFile.ContentType;
        using (Stream fs = imageUpload.PostedFile.InputStream)
        {
            using (BinaryReader br = new BinaryReader(fs))
            {
                byte[] bytes = br.ReadBytes((Int32)fs.Length);
                string constr = ConfigurationManager.ConnectionStrings["VictoryString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    string query = "INSERT INTO Images (Name,ContentType,Data) VALUES (@Name, @ContentType, @Data)";
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@Name", filename);
                        cmd.Parameters.AddWithValue("@ContentType", contentType);
                        cmd.Parameters.AddWithValue("@Data", bytes);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
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

        ProductDA.insertProduct(aProduct);

        Server.Transfer("~/Products/products.aspx");
    }



}