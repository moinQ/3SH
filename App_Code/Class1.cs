using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Text;




/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader rst,rst1;
    DataSet ds = new DataSet();
    string ID;
    
    public static int i, j = 0;
    public static  string f_id;
    public static int otp;
    public static int odno;
    public static string amt;

    
 /// <summary>
 /// 
 /// </summary>
 /// <param name="email"></param>
 public void otpsend( string email)
    {
        Random rnd = new Random();
         otp = rnd.Next(1000, 9999);
      
        string from = "3sectorhelp.contact@gmail.com";
        string to = email;
        
       
        MailMessage massage = new MailMessage(from,to);
        massage.Subject = "3 Sector Help";
        massage.Body = "your One time password (OTP) is \n "+otp+" ";

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
            
            throw ex;
            
        }
    }
  
    public Class1()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    
    public int readID(string ID)
    {
        int i=0;
        string s;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }
        
        cmd = new SqlCommand("select * from ID", con);
        rst = cmd.ExecuteReader();

        while (rst.Read() == true)
        {
            if (ID == "F_ID")
            {
                s = Convert.ToString(rst.GetValue(0));
                i = int.Parse(s) + 1;
            }
            if (ID == "M_ID")
            {
                s = Convert.ToString(rst.GetValue(1));
                i = int.Parse(s) + 1;
            }

            if (ID == "MK_ID")
            {
                s = Convert.ToString(rst.GetValue(2));
                i = int.Parse(s) + 1;
            }


        }

        return i;
        
        
    }

  public void updateID(string ID)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }
        cmd = new SqlCommand("update ID set " + ID + " = " + ID + "+1", con);
        cmd.ExecuteNonQuery();



    }

   
  


    public int ordersend(string email,string s1,string s2,string s3)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }
        Random rnd = new Random();
        odno = rnd.Next(1000, 9999);
        string from = "3sectorhelp.contact@gmail.com";
        string to = email;
        StringBuilder sb = new StringBuilder();

        sb.Append("<b> 3sh-3 Sector Help</b>").Append("<br/>");
        sb.Append("<b>order id: </b>").Append(odno.ToString()).Append("<br/>");
        sb.Append("<b> Date: </b>").Append(DateTime.Now.ToShortDateString()).Append("<br/>");
        sb.Append("<b>Invoice Amt :</b> ₹").Append(global.amt).Append("<br />");
        sb.Append("<br /><b>CUSTOMER CONTACT INFO:</b><br />");

        cmd = new SqlCommand("select * from FormarDetails where email='" + s1 + "'", con);
         rst= cmd.ExecuteReader();
         while (rst.Read())
        {

            sb.Append("<b>Name : </b>").Append(" "+rst.GetValue(2).ToString()+"").Append("<br />");
            sb.Append("<b>Phone : </b>").Append(" "+rst.GetValue(3).ToString()).Append("<br />");
            sb.Append("<b>Email : </b>").Append(rst.GetValue(9).ToString()).Append("<br />");
            sb.Append("<b>Address : </b><br />").Append(rst.GetValue(4).ToString()+" "+ rst.GetValue(5).ToString()+" "+ rst.GetValue(5).ToString()).Append("<br />");
            rst.Close();
            break;
        }
        sb.Append("<br/>");
        sb.Append("<b> Shapping Details<b>").Append("<br/>");
        rst.Close();

        if (global.type == "MF")
        {

           cmd = new SqlCommand("select * from ManufactureDetails where email='" + global.GId + "'", con);
            rst1 = cmd.ExecuteReader();
            while (rst1.Read())
            {

                sb.Append("<b>Name : </b>").Append(rst1.GetValue(1).ToString()).Append("<br />");
                sb.Append("<b>Company : </b>").Append(rst1.GetValue(3).ToString()).Append("<br />");
                sb.Append("<b>Email : </b>").Append(rst1.GetValue(2).ToString()).Append("<br />");
                sb.Append("<b>Address : </b><br />").Append(rst1.GetValue(5).ToString() + " " + rst1.GetValue(6).ToString()).Append("<br />");
                
            }
            rst1.Close();
        }
        else if(global.type=="MK")
        {
            cmd = new SqlCommand("select * from MakterDetiles where email='" + global.GId + "'", con);
            rst1 = cmd.ExecuteReader();
            while (rst1.Read())
            {

                sb.Append("<b>Name : </b>").Append(rst1.GetValue(1).ToString()).Append("<br />");
                sb.Append("<b>Company : </b>").Append(rst1.GetValue(2).ToString()).Append("<br />");
                sb.Append("<b>Email : </b>").Append(rst1.GetValue(4).ToString()).Append("<br />");
                sb.Append("<b>Address : </b><br />").Append(rst1.GetValue(5).ToString() + " " + rst1.GetValue(6).ToString()).Append("<br />");

            }
            rst1.Close();
        }
        sb.Append("");

     

        MailMessage massage = new MailMessage(from, to);
        massage.Subject = "Order Details";
        massage.IsBodyHtml = true;
        massage.Body = sb.ToString();



        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        massage.Priority = MailPriority.High;
        System.Net.NetworkCredential base1 = new System.Net.NetworkCredential("3sectorhelp.contact@gmail.com", "Abc@123456");
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Credentials = base1;
        try
        {
            client.Send(massage);
            return 1;
        }
        catch (Exception ex)
        {

            throw ex;

        }
    }

    public int Freq(string email,string s1,string s2,string s3)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }
        Random rnd = new Random();
        odno = rnd.Next(1000, 9999);
        string from = "3sectorhelp.contact@gmail.com";
        string to = email;
        StringBuilder sb = new StringBuilder();

        sb.Append("<b> 3sh-3 Sector Help</b>").Append("<br/>");
        sb.Append("<b>Request id: </b>").Append(odno.ToString()).Append("<br/>");
        sb.Append("<b> Date: </b>").Append(DateTime.Now.ToShortDateString()).Append("<br/>");
       
        sb.Append("<br /><b>CUSTOMER CONTACT INFO:</b><br />");
        sb.Append("<b>Request for</>b").Append(global.s2).Append("<br/>");
        sb.Append("<b>Quntity </b>").Append(s2.ToString()).Append("<br/>");

       
        sb.Append("<br/>");
     
      
        cmd = new SqlCommand("select * from FormarDetails where email='" + global.GId + "'", con);
        rst1 = cmd.ExecuteReader();
        while (rst1.Read())
        {

            sb.Append("<b>Name : </b>").Append(rst1.GetValue(1).ToString()).Append("<br />");
            sb.Append("<b>Phoneno: </b>").Append(rst1.GetValue(3).ToString()).Append("<br />");
            sb.Append("<b>Email : </b>").Append(rst1.GetValue(9).ToString()).Append("<br />");
            sb.Append("<b>Address : </b><br />").Append(rst1.GetValue(4).ToString() + " " + rst1.GetValue(5).ToString() + " " + rst1.GetValue(6).ToString()).Append("<br />");

        }
        rst1.Close();






        sb.Append("");



        MailMessage massage = new MailMessage(from, to);
        massage.Subject = "Order Details";
        massage.IsBodyHtml = true;
        massage.Body = sb.ToString();



        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        massage.Priority = MailPriority.High;
        System.Net.NetworkCredential base1 = new System.Net.NetworkCredential("3sectorhelp.contact@gmail.com", "Abc@123456");
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Credentials = base1;
        try
        {
            client.Send(massage);
            return 1;
        }
        catch (Exception ex)
        {

            throw ex;

        }
    }

    public int Mreq(string email, string s1,string s2, string s3)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();

        }
        Random rnd = new Random();
        odno = rnd.Next(1000, 9999);
        string from = "3sectorhelp.contact@gmail.com";
        string to = email;
        StringBuilder sb = new StringBuilder();

        sb.Append("<b> 3sh-3 Sector Help</b>").Append("<br/>");
        sb.Append("<b>Request id: </b>").Append(odno.ToString()).Append("<br/>");
        sb.Append("<b> Date: </b>").Append(DateTime.Now.ToShortDateString()).Append("<br/>");

        sb.Append("<br /><b>CUSTOMER CONTACT INFO:</b><br />");

        sb.Append("<b>Request for</>b").Append(global.s2).Append("<br/>");
        sb.Append("<b>Quntity </b>").Append(s2.ToString()).Append("<br/>");
        sb.Append("<b>needed For </b>").Append(s3.ToString()).Append("<br/>");

        sb.Append("<br/>");


       
        cmd = new SqlCommand("select * from ManufactureDetails where email='" + global.GId + "'", con);
        rst1 = cmd.ExecuteReader();
        while (rst1.Read())
        {

            sb.Append("<b>Name : </b>").Append(rst1.GetValue(1).ToString()).Append("<br />");
            sb.Append("<b>compny: </b>").Append(rst1.GetValue(3).ToString()).Append("<br />");
            sb.Append("<b>Email : </b>").Append(rst1.GetValue(2).ToString()).Append("<br />");
            sb.Append("<b>Address : </b><br />").Append(rst1.GetValue(4).ToString() + " " + rst1.GetValue(5).ToString() + " " + rst1.GetValue(6).ToString()).Append("<br />");

        }
        rst1.Close();






        sb.Append("");



        MailMessage massage = new MailMessage(from, to);
        massage.Subject = "Order Details";
        massage.IsBodyHtml = true;
        massage.Body = sb.ToString();



        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        massage.Priority = MailPriority.High;
        System.Net.NetworkCredential base1 = new System.Net.NetworkCredential("3sectorhelp.contact@gmail.com", "Abc@123456");
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Credentials = base1;
        try
        {
            client.Send(massage);
            return 1;
        }
        catch (Exception ex)
        {

            throw ex;

        }
    }

}

