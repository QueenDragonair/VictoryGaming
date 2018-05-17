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

    public static void Upload(string filename, string contentType, Stream fs)
    {
        using (fs)
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

    }

    public static int getImageId()
    {
        int result = 0;
        string selectStatment = "SELECT MAX(Id) FROM Images";
        SqlConnection con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(selectStatment, con);

        con.Open();
        result = (Int32)cmd.ExecuteScalar();
        con.Close();

        return result;
    }
}