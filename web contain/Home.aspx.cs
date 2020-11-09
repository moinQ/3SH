using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.IO;


public partial class Home : System.Web.UI.Page
{
   
    public void sendmail()
    {
        string from = "3sectorhelp.contact@gmail.com";
        string to = email.Value;
        
       
        MailMessage massage = new MailMessage(from,to);
        massage.Subject = "3 Sector Help";
        massage.Body = "Dear " + name.Value +"," +"\nThank you Sir/Mada'm for consulting us for help/feedback/queries and helping us get better.\n We will get back to you as soon as possible.";

        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        massage.Priority = MailPriority.High;
        System.Net.NetworkCredential base1 = new System.Net.NetworkCredential("3sectorhelp.contact@gmail.com", "Abc@123456");
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Credentials = base1;
        try
        {
            client.Send(massage);
        }
        catch(Exception ex)
        {
            global.MsgBox("mail not send ", this.Page, this);
            throw ex;
            
        }
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (email.Value == string.Empty)
        {
            global.MsgBox(" Enter Your email_id !  ", this.Page, this);
        }
        else
        {
            sendmail();
            global.MsgBox(" Thank you for ur support !  ", this.Page, this);
        }
    }
}