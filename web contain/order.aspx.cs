using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class web_contain_order : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader rst;
    DataSet ds = new DataSet();
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }

        if (global.type == "MF")
        {
            ct.Value = global.s2;
            QUTY.Value = global.q1;
            rqt.Value = global.q2;



            cmd = new SqlCommand("select * from ManufactureDetails  where email ='"+global.GId+"'", con);
            rst = cmd.ExecuteReader();
            while (rst.Read())
            {
                mid.Value = rst.GetValue(0).ToString();
                gst.Value = rst.GetValue(4).ToString();
                add.Value = rst.GetValue(5).ToString() + rst.GetValue(6).ToString();
                rst.Close();
                break;
            }

        }
        else if (global.type == "MK")
        {
            ct.Value = global.s2;
            QUTY.Value = global.q1;
            rqt.Value = global.q2;
            cmd = new SqlCommand("select * from MakterDetiles  where email='" + global.GId + "'", con);
            rst = cmd.ExecuteReader();
            while (rst.Read())
            {
                mid.Value = rst.GetValue(0).ToString();

                gst.Value = rst.GetValue(3).ToString();
                add.Value = rst.GetValue(5).ToString() + rst.GetValue(6).ToString();
              
                break;
            }
            rst.Close();

        }
        else
        {
            Response.Write("nodata");
        }
       
        int a = Int32.Parse(QUTY.Value);
         float b =float.Parse(rqt.Value);
        float c = (a * b);


        total.Value = c.ToString();


            
        }


    protected void submit_ServerClick(object sender, EventArgs e)
    {
        int i = 0;
        con.Close();
        rst.Close();
        global.amt = total.Value;
         i= c1.ordersend(global.GId, global.s2, global.q1, global.q2);
        if (i == 1)
        {
            global.MsgBox("order confirm Please check your email for the Invoic ", this.Page, this);
            if (global.type == "MF")
            {
                Response.Redirect("M_home.aspx");
            }
            else if(global.type == "MK")
                    {
                Response.Redirect("MK_home.aspx");
                  }
        }
        else
        {
            global.MsgBox("order not placed ", this.Page, this);
        }
}

}