using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_contain_conformPass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader rst;
    DataSet ds = new DataSet();
    Class1 c =new Class1();
    public static string id;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        email.Value = global.GId;
        Qa.Visible = false;
        if(con.State== ConnectionState.Closed)
        {
            con.Open();

        }
    }

    protected void submit_ServerClick(object sender, EventArgs e)
    {
        int ot = Class1.otp;
        if (ot.ToString() == otp.Value)
        {
            if (pwd.Value == Cpass.Value)
            {
               
                Qa.Visible = true;
               

            }
            else
            {
                Cpass.Value = "";
                Cpass.Focus();

            }
        }
        else
        {
            global.MsgBox(" ERROR OTP is invalid!!", this.Page, this);
        }
       
      
    }

    protected void confirm_ServerClick(object sender, EventArgs e)

    {
        if (pwd.Value == Cpass.Value)
        {

            string str1 = "insert into login values('" + email.Value + "','" + pwd.Value + "','" + global.type + "','" + question.Value + "','" + answer.Value + "')";

            cmd = new SqlCommand(str1, con);
            cmd.ExecuteNonQuery();



            cmd = new SqlCommand(global.sqlQ, con);
            cmd.ExecuteNonQuery();
            if (global.type == "formar")
            {
                c.updateID("F_ID");
            }
            if (global.type == "MF")
            {
                c.updateID("M_ID");
            }
            if (global.type == "MK")
            {
                c.updateID("MK_ID");
            }


            Class1.otp = 0000;
            global.type = null;
            global.GId = null;
            global.sqlQ = null;

            Response.Write("Done");

            Response.Redirect("Home.aspx");
        }
        else
        {
            Cpass.Focus();

        }
        

    }
}