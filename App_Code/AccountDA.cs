using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AccountDA
/// </summary>
public static class AccountDA
{
    private static string getConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["VictoryString"].ConnectionString;
    }

    public static void insertCustomer(Customer aCustomer)
    {
        string insertStatment = "insert into Customer (fName, lName, email, password) values (@fName, @lName, @email, @password)";
        SqlConnection con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(insertStatment, con);

        cmd.Parameters.AddWithValue("@fName", aCustomer.fName);
        cmd.Parameters.AddWithValue("@lName", aCustomer.lName);
        cmd.Parameters.AddWithValue("@email", aCustomer.email);
        cmd.Parameters.AddWithValue("@password", aCustomer.password);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public static Boolean loginCustomer(string email, string password)
    {
        string getStatement = "select * from customer where email=@email";
        SqlConnection con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand(getStatement, con);

        cmd.Parameters.AddWithValue("@email", email);

        con.Open();
        try
        {
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch(SqlException ex)
        {
            return false;
        }

        if(password == getPassword(email))
        {
            return true;
        }else
        {
            return false;
        }

       
    }

   public static string getPassword(string email)
    {
        string password = "";
        string getStatement = "SELECT password from customer where email=@email";
        SqlConnection con = new SqlConnection(getConnectionString());
        using (SqlCommand cmd = new SqlCommand(getStatement, con))
        {
            cmd.Parameters.AddWithValue("@email", email);
            con.Open();
            using (var reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                     password = reader["password"].ToString();
                }
            }
        }

        return password;
    }
}