using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_contain_M_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader rst;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        eid.InnerText = global.GId;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }

        cmd = new SqlCommand("select * from ManuFactureDetails where email='" + global.GId + "'", con);
        rst = cmd.ExecuteReader();
        while (rst.Read())
        {
            name.Value = rst.GetValue(1).ToString();
            email.Value = rst.GetValue(2).ToString();
            shop.Value = rst.GetValue(3).ToString();
            GST.Value = rst.GetValue(4).ToString();


            add.Value = rst.GetValue(5).ToString();
            pin.Value = rst.GetValue(6).ToString();
            deal.Value = rst.GetValue(7).ToString();
        }
            rst.Close();


    }

    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {
        cmd = new SqlCommand("update ManufactureDetails SET name='" + name.Value + "'email='" + email.Value + "',c_name='" + shop.Value + "',t_num='" + GST.Value + "',address='" + add.Value + "', pin='" + pin.Value + "',type='" + deal.Value + "' where email='" + global.GId + "'", con);
        cmd.ExecuteNonQuery();
        global.MsgBox("details updated sussfully ", this.Page, this);

    }
}