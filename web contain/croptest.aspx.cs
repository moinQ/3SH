using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_contain_croptest : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader rst;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        eid.Text = global.GId;

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        cmd = new SqlCommand("select * from CropDetails where email='" + eid.Text + "'", con);
        rst = cmd.ExecuteReader();
        while (rst.Read() == true)
        {
            

        }
    }
}