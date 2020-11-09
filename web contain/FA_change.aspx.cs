using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_contain_FA_change : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader rst;

    protected void Page_Load(object sender, EventArgs e)
    {
        EID.InnerText = global.GId;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }
    }

    protected void submit_ServerClickck(object sender, EventArgs e)
    {


        cmd = new SqlCommand("select * from login where email='" +EID.InnerText + "'", con);
        rst = cmd.ExecuteReader();
        while (rst.Read() == true)
        {

            if (rst.GetValue(1).ToString() == oldpass.Value)
            {
                rst.Close();
                cmd = new SqlCommand("update login set password='" + newpass.Value + "' where email='" + EID.InnerText + "'", con);
                cmd.ExecuteNonQuery();
                war.Value = "password changed";
                oldpass.Value = null;
                break;
            }
            else
            {

                war.Value = "worng password";
            }

        }


        con.Close();
    }
}