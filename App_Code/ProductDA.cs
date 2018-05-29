using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductDA
/// </summary>
public static class ProductDA
{
    private static string getConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["VictoryString"].ConnectionString;
    }

    public static void insertProduct(Product aProduct)
    {
        string insertStatment = "insert into Product (name, gameid, size, color, price, imageUrl) values (@productName, @gameId, @size, @color,@price,@imageUrl)";
        SqlConnection con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(insertStatment, con);

        cmd.Parameters.AddWithValue("@productName", aProduct.productName);
        cmd.Parameters.AddWithValue("@gameId", aProduct.gameID);
        cmd.Parameters.AddWithValue("@size", aProduct.size);
        cmd.Parameters.AddWithValue("@color", aProduct.color);
        cmd.Parameters.AddWithValue("@price", aProduct.price);
        cmd.Parameters.AddWithValue("@imageUrl", aProduct.imageId);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

   public static int getGameId(string gameName)
    {
        int result = 0;
        string insertStatment = "select gameId from GameList where name = @gameName";
        SqlConnection con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(insertStatment, con);

        cmd.Parameters.AddWithValue("@gameName", gameName);

        con.Open();
        result = (Int32)cmd.ExecuteScalar();
        con.Close();

        return result;
    }

    public static List<string> getImages()
    {
        var images = new List<string>();
        string getStatement = "SELECT imageUrl from product";
        SqlConnection con = new SqlConnection(getConnectionString());
        using (SqlCommand cmd = new SqlCommand(getStatement, con))
        {
            con.Open();
            using (var reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    images.Add(reader["imageUrl"].ToString());
                }
            }
        }
        con.Close();
        return images;

    }

    public static void purchaseProduct(string name)
    {

        string updateStatment = "Update Product where name=@name set purchased=True";
        SqlConnection con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(updateStatment, con);

        cmd.Parameters.AddWithValue("@name", name);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }


}