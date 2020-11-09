using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class web_contain_MK_AddReqment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader rst;
    DataSet ds = new DataSet();
    int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //global.GId = "434";
        eid.InnerText = global.GId;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }

        cmd = new SqlCommand("select * from  MKrequr where mk_id='" + global.GId + "'", con);
        rst = cmd.ExecuteReader();
        while (rst.Read())
        {

          
            name.Value = Convert.ToString(rst.GetValue(1));
            qneeded.Value = Convert.ToString(rst.GetValue(2));
        
            DateTime str = Convert.ToDateTime(rst.GetValue(3));
           
            needby.Value = str.ToShortDateString();
            
            details.Value = Convert.ToString(rst.GetValue(4));
            i = 1;
        }
        rst.Close();


    }

    protected void button1_ServerClick(object sender, EventArgs e)
    {


        if (i == 0)
        {
            string str = "insert into MKrequr values('" + global.GId + "','" + name.Value + "','" + qneeded.Value + "','" + needby.Value + "','" + details.Value + "')";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            global.MsgBox("The requriments are added", this.Page, this);
        }
        else
        {
            DateTime d = Convert.ToDateTime(needby.Value);
            d.ToShortDateString();
            string str = "update MKrequr SET name='" + name.Value + "',qneed='" + qneeded.Value + "',needby='"+d+ "',other='"+details.Value+"' where mk_id='" + global.GId + "'";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            global.MsgBox("The requriments are updated", this.Page, this);
        }

    }
}