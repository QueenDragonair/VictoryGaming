using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;

/// <summary>
/// Summary description for CommentDA
/// </summary>
public static class CommentDA
{
    private static string getConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["VictoryString"].ConnectionString;
    }

    public static void insertComment(Comment aComment)
    {
        string insertStatment = "insert into Comments (FirstName,LastName,Comment) values (@FirstName, @LastName, @Comment)";
        SqlConnection con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(insertStatment, con);

        cmd.Parameters.AddWithValue("@FirstName", aComment.fName);
        cmd.Parameters.AddWithValue("@LastName", aComment.lName);
        cmd.Parameters.AddWithValue("@Comment", aComment.comment);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}