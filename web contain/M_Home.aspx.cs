﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_contain_M_Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da, da1;
    SqlDataReader rst;
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    DataTable dt = new DataTable();

    int i = 0, j = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        eid.InnerText = global.GId;
        global.type = "MF";
       

        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }

        da = new SqlDataAdapter("select * from  CropDetsils", con);
        ds = new DataSet();
        da.Fill(ds, "aaaa");
        dt = ds.Tables["aaaa"];
        global.i = ds.Tables["aaaa"].Rows.Count - 1;
        red();
    }


    protected void Timer1_Tick(object sender, EventArgs e)
    {
        red();
        if (global.j >= global.i)
        {
            global.j = 0;
        }
        else

            global.j = global.j + 1;

    }

   protected void red()
    {
   
        string str1=ds.Tables["aaaa"].Rows[global.j][0].ToString();
        ct.InnerText = ds.Tables["aaaa"].Rows[global.j][1].ToString();
        qt.Text = ds.Tables["aaaa"].Rows[global.j][2].ToString();
        rqt.Text = ds.Tables["aaaa"].Rows[global.j][3].ToString();
        av_period.Text = ds.Tables["aaaa"].Rows[global.j][5].ToString();

        cmd = new SqlCommand("select * from FormarDetails where email='" + str1 + "'", con);
        rst = cmd.ExecuteReader();
        while(rst.Read())
        {
            name.Text = Convert.ToString(rst.GetValue(1));
            phno.Text= Convert.ToString(rst.GetValue(3));
            place.Text= Convert.ToString(rst.GetValue(6));
            rst.Close();
            cmd.Clone();
            break;
        }

        Timer1.Enabled = true;
    }


    protected void order_ServerClick(object sender, EventArgs e)
    {
        global.s1  = ds.Tables["aaaa"].Rows[global.j][0].ToString();
        global.s2 = ds.Tables["aaaa"].Rows[global.j][1].ToString();
        global.q1 = ds.Tables["aaaa"].Rows[global.j][2].ToString();
        global.q2 = ds.Tables["aaaa"].Rows[global.j][3].ToString();
        Response.Redirect("order.aspx");

    }

    protected void sb1_ServerClick(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }
        Timer1.Enabled = false;
        ds.Clear();
        global.i = 0;
        global.j = 0;
        string x = searchtext.Value.Trim();
        da = new SqlDataAdapter("select * from CropDetsils where cropType like '%"+x+"%'", con);
        ds = new DataSet();
        da.Fill(ds, "aaaa");
        global.i = ds.Tables["aaaa"].Rows.Count - 1;

     if (global.i == 0)
        {
            global.MsgBox("No result found",this.Page, this);

        }
     else
        {
          
            f1.Visible = false;
            F2.Visible = true;
            sech();
        }
     
    }
protected void sech()
    {
        string str1 = ds.Tables["aaaa"].Rows[global.j][0].ToString();
       
        H1.InnerText = ds.Tables["aaaa"].Rows[global.j][1].ToString();
        L1.Text = ds.Tables["aaaa"].Rows[global.j][2].ToString();
        L2.Text = ds.Tables["aaaa"].Rows[global.j][3].ToString();
        L6.Text = ds.Tables["aaaa"].Rows[global.j][5].ToString();

        cmd = new SqlCommand("select * from FormarDetails where email='" + str1 + "'", con);
        rst = cmd.ExecuteReader();
        while (rst.Read())
        {
            L3.Text = Convert.ToString(rst.GetValue(1));
            l4.Text = Convert.ToString(rst.GetValue(3));
            l5.Text = Convert.ToString(rst.GetValue(6));
            rst.Close();
            cmd.Clone();
            break;
        }
    }




    protected void bnext_ServerClick(object sender, EventArgs e)
    {
        if (global.j >= global.i)
        {
            global.j = 0;
            sech();

        }
        else
        {
            global.j = global.j + 1;
            sech();
        }
    }
}