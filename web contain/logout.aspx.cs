using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_contain_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        global.GId = null;
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }
}