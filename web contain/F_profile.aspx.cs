using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class web_contain_F_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader rst;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        eid.Text = global.GId;

        if (con.State==ConnectionState.Closed)
        {
            con.Open();
        }
        cmd = new SqlCommand("select * from FormarDetails where email ='" +global.GId + "'", con);
        rst = cmd.ExecuteReader();
        while (rst.Read())
        {
            
            name.Value = Convert.ToString(rst.GetValue(1));
            DateTime str = Convert.ToDateTime(rst.GetValue(2));
            dob.Value = str.ToShortDateString();
            phno.Value = Convert.ToString(rst.GetValue(3));
            address.Value = Convert.ToString(rst.GetValue(4));
            pin.Value = Convert.ToString(rst.GetValue(5));
            dtk.Value = Convert.ToString(rst.GetValue(6));
            state.Value = Convert.ToString(rst.GetValue(7));
            crop.Value = Convert.ToString(rst.GetValue(8));
            email.Value = Convert.ToString(rst.GetValue(9));
        }
        rst.Close();
        


    }

    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {

        cmd = new SqlCommand("update FormarDetails SET name='" + name.Value+"',dob='" + dob.Value + "',phone='" + phno.Value + "',address='" + address.Value + "',pin='" + pin.Value + "',city='" + dtk.Value + "',state='" + state.Value + "',crop='" + crop.Value + "' where email='" + global.GId + "' ", con);
        cmd.ExecuteNonQuery();
        
        global.MsgBox("Detail are Updated", this.Page, this); 
           
            


    }
}