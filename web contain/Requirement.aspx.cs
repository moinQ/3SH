using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_contain_Requirement : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader rst;
    DataSet ds = new DataSet();
    string s1, s2, s3;
    int i = 0;
    Class1 c = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }

        if(global.st=="FR")
        {
            cmd = new SqlCommand("select * from FormarDetails where email='" + global.GId + "'", con);
            rst = cmd.ExecuteReader();
            while(rst.Read()==true)
            {
                id.Value = rst.GetValue(0).ToString();
                s1 = rst.GetValue(9).ToString();

            }
            rst.Close();
            

        }
        if (global.st == "MR")
        {
            cmd = new SqlCommand("select * from ManufactureDetails where email='" + global.GId + "'", con);
            rst = cmd.ExecuteReader();
            while (rst.Read() == true)
            {
                id.Value = rst.GetValue(0).ToString();
                s1 = rst.GetValue(2).ToString();

            }
            rst.Close();


        }


    }

    protected void b1_ServerClick(object sender, EventArgs e)
    {
        s2 = qn.Value;
        s3 = nf.Value;
        if(global.st=="FR")
        {
            i = c.Freq(s1, s2, s3,global.GId);
            if(i==1)
            {
                global.MsgBox("Request send check your email", this.Page, this);
                Response.Redirect("F_home.aspx");
            }
        }
        if (global.st == "MR")
        {
            i = c.Mreq(s1, s2, s3,global.GId);
            if (i == 1)
            {
                global.MsgBox("Request send check your email", this.Page, this);
                Response.Redirect("M_home.aspx");
            }
        }

    }

    protected void b1_ServerClick1(object sender, EventArgs e)
    {
        s2 = qn.Value;
        s3 = nf.Value;
        if (global.st == "FR")
        {
            i = c.Freq(s1, s2, s3, global.GId);
            if (i == 1)
            {
                global.MsgBox("Request send check your email", this.Page, this);
                Response.Redirect("F_home.aspx");
            }
        }
        if (global.st == "MR")
        {
            i = c.Mreq(s1, s2, s3, global.GId);
            if (i == 1)
            {
                global.MsgBox("Request send check your email", this.Page, this);
                Response.Redirect("M_home.aspx");
            }
        }

    }
}