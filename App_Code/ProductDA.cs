using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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
        string insertStatment = "insert into Product (name, gameid, size, color, price, imageId) values (@productName, @gameId, @size, @color,@price,@imageId)";
        SqlConnection con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(insertStatment, con);

        cmd.Parameters.AddWithValue("@productName", aProduct.productName);
        cmd.Parameters.AddWithValue("@gameId", aProduct.gameID);
        cmd.Parameters.AddWithValue("@size", aProduct.size);
        cmd.Parameters.AddWithValue("@color", aProduct.color);
        cmd.Parameters.AddWithValue("@price", aProduct.price);
        cmd.Parameters.AddWithValue("@imageId", aProduct.imageId);

        con.Open();
        cmd.ExecuteNonQuery();
    }

   public static int getGameId(string gameName)
    {
        int result = 0;
        string insertStatment = "select gameId from GameList where name = @gameName";
        SqlConnection con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(insertStatment, con);

        cmd.Parameters.AddWithValue("@gameName", gameName);

        con.Open();
       result = cmd.ExecuteNonQuery();

        return result;
    }
}