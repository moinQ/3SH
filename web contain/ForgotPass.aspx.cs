using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.XPath;
using System.Xml.XmlConfiguration;
using System.Data;
using System.Data.SqlClient;



public partial class web_contain_ForgotPass : System.Web.UI.Page
{
    

     SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
     SqlCommand cmd = new SqlCommand();
     SqlDataAdapter da;
    SqlDataReader rst;
     DataSet ds = new DataSet();
   

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(con.State == ConnectionState.Closed)
        {
            con.Open();
        }


        pws.Visible = false;
        qa.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from login where email ='" + email.Value + "'", con);
        rst = cmd.ExecuteReader();
        if (rst.Read() == true)
        {
            qa.Visible = true;
            question.Value = Convert.ToString(rst.GetValue(3));
            Label1.Text = Convert.ToString(rst.GetValue(4));
        }

        else
            global.MsgBox("NOT A VALIDE EMAIL-ID!!", this.Page, this);
    }




    protected void button3_Click(object sender, EventArgs e)
    {
        if (password1.Value == password1.Value)
        {
            cmd = new SqlCommand("update login set password = '"+password.Value+"' where email='"+email.Value+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            global.MsgBox("Password Modifive", this.Page, this);
            Response.Redirect("Home.aspx");
        }
        else
        {
            
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
      
       
            if (answer.Value == Label1.Text)
            {
                pws.Visible = true;
            }
            else
            {
                Response.Write("U are not the authorise person");

            }
        }
       
      
    }


