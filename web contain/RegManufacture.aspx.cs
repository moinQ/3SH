using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class web_contain_RegManufacture : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        m_id.Disabled = true;

        int i;
        i = c.readID("M_ID");
        m_id.Value = i.ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        global.sqlQ = "insert into ManufactureDetails values('" + m_id.Value + "','" + name.Value + "','" + email.Value + "','" + cname.Value + "','" + tnum.Value + "','" + adress.Value + "','" + pin.Value + "','" + type.Value + "')";
        global.type = "MF";
        global.GId = email.Value;
        c.otpsend(email.Value);
        Response.Redirect("conformPass.aspx");
        

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}