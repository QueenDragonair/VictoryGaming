using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GameDA
/// </summary>
public static class GameDA
{
    private static string getConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["VictoryString"].ConnectionString;
    }

    public static void insertGame(Game aGame)
    {
        string insertStatment = "insert into GameList (name) values (@gameName)";
        SqlConnection con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(insertStatment, con);
        
        cmd.Parameters.AddWithValue("@gameName", aGame.gameName);

        con.Open();
        cmd.ExecuteNonQuery();
    }
}