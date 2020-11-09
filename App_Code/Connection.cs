using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Connection
/// </summary>
public class Connection
{
    public SqlConnection con = new SqlConnection();
    public  SqlCommand cmd = new SqlCommand();
    public  SqlDataAdapter da;
    public  DataSet ds = new DataSet();
    public Connection()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public void open_con() // to open connection b/w VSstudio and SQL Server
    {
        try
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True";
            con.Open();
            
        }
        catch (Exception) { }
        
    }
    
}