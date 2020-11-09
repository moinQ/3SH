using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_contain_RegFormar1 : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

        int i;
        i = c.readID("F_ID");
        f_id.Value = i.ToString();

    }

    protected void button1_ServerClick(object sender, EventArgs e)
    {
        global.type = "formar";
        global.GId = email.Value;
        global.sqlQ = "insert into formarDetails values('" + f_id.Value + "','" + name_1.Value + "','" + dob.Value + "','" + phn.Value + "','" + address.Value + "','" + pin.Value + "','" + dtc.Value + "','" + state.Value + "','"+crops.Value+"','"+email.Value+"')";
        c.otpsend(email.Value);
        Response.Redirect("conformPass.aspx");


    }
}