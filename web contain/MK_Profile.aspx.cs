using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_contain_MK_Profile : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader rst;
    DataSet ds = new DataSet();
    int i = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        eid.InnerText = global.GId;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }

        cmd = new SqlCommand("select * from MakterDetiles where email ='" + eid.InnerText + "'", con);
        rst = cmd.ExecuteReader();
        while (rst.Read())
        {

            name.Value = Convert.ToString(rst.GetValue(1));
            shop.Value = Convert.ToString(rst.GetValue(2));
            tin.Value = Convert.ToString(rst.GetValue(3));
            email.Value = Convert.ToString(rst.GetValue(4));
            addr.Value = Convert.ToString(rst.GetValue(5));
            pin.Value = Convert.ToString(rst.GetValue(6));
            deal.Value = Convert.ToString(rst.GetValue(7));
      
           
        }
        rst.Close();
      

    }

    protected void b1_ServerClick(object sender, EventArgs e)
    {
        cmd = new SqlCommand("update MakterDetiles set name= '" + name.Value + "',set shop= '" + shop.Value + "',set tin='" + tin.Value + "',set email= '" + email.Value + "',set address= '" + addr.Value + "',set pin= '" + pin.Value + "', set deales='" + deal.Value + "' where email='" + global.GId + "'", con);
        cmd.ExecuteNonQuery();
        global.MsgBox("Details updated sussfully", this.Page, this);
   }
}