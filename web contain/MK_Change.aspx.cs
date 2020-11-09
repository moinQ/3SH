using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_contain_MK_Change : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader rst;
    protected void Page_Load(object sender, EventArgs e)
    {
        eid.Text = global.GId;

        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }

    }

    protected void submit_ServerClick(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from login where email='" + eid.Text + "'", con);
        rst = cmd.ExecuteReader();
        while (rst.Read() == true)
        {

            if (rst.GetValue(1).ToString() == oldpass.Value)
            {
                rst.Close();
                cmd = new SqlCommand("update login set password='" + newpass.Value + "' where email='" + eid.Text + "'", con);
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
    }
}