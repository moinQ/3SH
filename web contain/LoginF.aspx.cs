using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;
using System.Workflow;


public partial class LoginF : System.Web.UI.Page
{

    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlDataAdapter da;
    SqlDataReader rst;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

        //id_email.Value = null;
        //pass.Value = null;

      
             if(con.State==ConnectionState.Closed)
                    {
                        con.Open();
                    }
        


    }



    protected void submit_ServerClick(object sender, EventArgs e)
    {
        string str1 = "select * from login where email='"+id_email.Value+"' and password='"+pass.Value+"'";
        cmd = new SqlCommand(str1,con);
        rst = cmd.ExecuteReader();

        if (rst.HasRows)
        {
            while (rst.Read() == true)
            {
                if (rst.GetValue(2).ToString() == "formar")
                {
                    global.GId = Convert.ToString(rst.GetValue(0));
                    Response.Redirect("F_home.aspx");
                  
                }
                else if (rst[2].ToString() == "MF")
                {
                    global.GId = Convert.ToString(rst.GetValue(0));
                    Response.Redirect("M_home.aspx");
                   
                }
                else if (rst[2].ToString() == "MK")
                {
                    global.GId = Convert.ToString(rst.GetValue(0));
                    Response.Redirect("MK_home.aspx");
                 
                }
                else if (rst[2].ToString() == "FA")
                {
                    global.GId = Convert.ToString(rst.GetValue(0));
                    Response.Redirect("FA_home.aspx");
                
                }
            
            }
        }
        else
        {
            global.MsgBox("User name or password is not match! ", this.Page, this);
        }
        con.Close();

    }
}