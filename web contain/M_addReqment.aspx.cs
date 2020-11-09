using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_contain_M_addReqment1 : System.Web.UI.Page
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

        cmd = new SqlCommand("select * from  requirment where Mm_id ='" + global.GId + "'", con);
        rst = cmd.ExecuteReader();
        while (rst.Read())
        {

            typ.Value = Convert.ToString(rst.GetValue(2));
            name.Value = Convert.ToString(rst.GetValue(3));
            cropD.Value = Convert.ToString(rst.GetValue(4));
            need.Value = Convert.ToString(rst.GetValue(5));
            quantity.Value= Convert.ToString(rst.GetValue(6));

           DateTime str = Convert.ToDateTime(rst.GetValue(7));
            needBy.Value = str.ToShortDateString();
           // needBy.Value= Convert.ToString(rst.GetValue(7));
            Od.Value = Convert.ToString(rst.GetValue(8));
            i = 1;
        }
        rst.Close();

    }

    protected void submit_ServerClick(object sender, EventArgs e)
    {
        if (i == 0)
        {
            string str = "insert into requirment values('" + global.GId + "','" + i + "','" + typ.Value + "','" + name.Value + "','" + cropD.Value + "','" + need.Value + "','" + quantity.Value + "','" + needBy.Value + "','" + Od.Value + "')";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            global.MsgBox("Requriment  is added sucessfully ", this.Page, this);
        }
        else
        {
            string str = "update requirment set typep='" + typ.Value + "',name='" + name.Value + "',details='" + cropD.Value + "',sneededfor='" + need.Value + "',needed='" + quantity.Value + "',neededby='" + needBy.Value + "', otherdetails='" + Od.Value + "' where Mm_id='" + global.GId + "'";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            global.MsgBox("Requriment are updated sucessfully  ", this.Page, this);

        }

    }
}
