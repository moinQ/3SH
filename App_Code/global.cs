using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.UI;

/// <summary>
/// Summary description for global
/// </summary>
public class global
{
    public static string GId;
    public static string str,s1,s2,s3,q1,q2;
    public static string type;
    public static string sqlQ;
    public static string amt;
    public static string st;
    public static int i;
    public static int j = 0;

    public static void MsgBox(String ex, Page pg, Object obj)
    {
        string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
        Type cstype = obj.GetType();
        ClientScriptManager cs = pg.ClientScript;
        cs.RegisterClientScriptBlock(cstype, s, s.ToString());
    }

    public global()
    {
        //
        // TODO: Add constructor logic here
        //
    }

}