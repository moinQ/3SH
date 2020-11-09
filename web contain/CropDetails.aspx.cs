using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class web_contain_CropDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader rst;
    DataSet ds = new DataSet();
    int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        eid.Text = global.GId;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        cmd = new SqlCommand("select * from CropDetails where email ='" +global.GId+ "'", con);
        rst = cmd.ExecuteReader();
        while (rst.Read()==true)
        {

            ct.Value = Convert.ToString(rst.GetValue(1));
            qty.Value = Convert.ToString(rst.GetValue(2));
            rqty.Value = Convert.ToString(rst.GetValue(3));
            qua.Value = Convert.ToString(rst.GetValue(4));

            DateTime str = Convert.ToDateTime(rst.GetValue(5));
            avpirod.Value = str.ToShortDateString();
            i = 1;
        }
        rst.Close();

    }

    protected void submit_ServerClick(object sender, EventArgs e)
    {
        if (i == 0)
        {
            string str = "insert into CropDetails values('" + global.GId + "','" + ct.Value + "','" + qty.Value + "','" + rqty.Value + "','" + qua.Value + "','" + avpirod.Value + "','" + i + "')";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            global.MsgBox("crop added succesfully", this.Page, this);
        }
        else
        {
            DateTime d = new DateTime();
            d = Convert.ToDateTime(avpirod.Value);
            
            string str = "update CropDetails SET cropType='" + ct.Value + "',Quantity='" + qty.Value + "',RatePerQ='" + rqty.Value + "',Quality='" + qua.Value + "',A_period='" + d + "' where email='" + global.GId + "'";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            global.MsgBox("crop updated succesfully", this.Page, this);


        }
    }
}