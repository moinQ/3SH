using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_contain_M_AddProduct : System.Web.UI.Page
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

        cmd = new SqlCommand("select * from  product where Mm_id ='" + global.GId + "'", con);
        rst = cmd.ExecuteReader();
        while (rst.Read())
        {

            name.Value = Convert.ToString(rst.GetValue(1));
            rate.Value = Convert.ToString(rst.GetValue(2));
            QAss.Value = Convert.ToString(rst.GetValue(3));
            AQulity.Value = Convert.ToString(rst.GetValue(4));

            DateTime str = Convert.ToDateTime(rst.GetValue(5));
            Aperiod.Value = str.ToShortDateString();
            Details.Value= Convert.ToString(rst.GetValue(6));
            i = 1;
        }
        rst.Close();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (i == 0)
        {
            string str = "insert into product values('" + global.GId + "','" + name.Value + "','" + rate.Value + "','" + QAss.Value + "','" + AQulity.Value + "','" + Aperiod.Value + "','" + Details.Value + "')";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            i = 1;
            global.MsgBox("crop added succesfully", this.Page, this);
        }
        else
        {
            string str = "update product SET name='" + name.Value + "',rate= '" + rate.Value + "',quality='" + QAss.Value + "', quanity='" + AQulity.Value + "', period1='" + Aperiod.Value + "',details='" + Details.Value + "' where Mm_id='"+global.GId+"'";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            global.MsgBox("crop updated succesfully", this.Page, this);
        }

    }
}