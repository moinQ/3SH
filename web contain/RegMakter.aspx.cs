using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class web_contain_RegMakter : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
       

        int i;
        i = c.readID("MK_ID");
        m_id.Value = i.ToString();

    }

    protected void submit_btn_ServerClick(object sender, EventArgs e)
    {
        global.type = "MK";
        global.GId = email.Value;
        global.sqlQ="insert into MakterDetiles values('"+m_id.Value +"','"+name.Value+"','"+shoporg.Value+"','"+tinno.Value+"','"+email.Value+"','"+address.Value+"','"+pincode.Value+"','"+dealersin.Value+"')";
        c.otpsend(email.Value);
        Response.Redirect("conformPass.aspx");
    }
}