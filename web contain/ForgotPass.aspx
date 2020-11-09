<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPass.aspx.cs" Inherits="web_contain_ForgotPass" %>

<!DOCTYPE html>

<html>
<head>
      <meta name="viewport" content="width=device-width" />
      <title>3sh</title>
      <link rel="stylesheet" href="style/components.css">
      <link rel="stylesheet" href="style/responsee.css">
      <!-- CUSTOM STYLE -->
      <link rel="stylesheet" href="style/template-style.css">
      <link  rel='stylesheet' type='text/css'>
     <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>              
   </head>
   <body class="size-1140">
       
      <!-- TOP NAV WITH LOGO -->
      <header>
         <div id="topbar">
            <div class="line">
               <div class="s-12 m-6 l-6">
                  <p>CONTACT US: <strong>08026642292</strong> | <strong>contact@ALLS.com</strong></p>
               </div>
               <div class="s-12 m-6 l-6">
                  <div class="social right">
                     <a><i class="icon-facebook_circle"></i></a> <a><i class="icon-twitter_circle"></i></a> <a><i class="icon-google_plus_circle"></i></a> <a><i class="icon-instagram_circle"></i></a>
                  </div>
               </div>
            </div>  
         </div> 
         <nav>
            <div class="line">
               <div class="top-nav s-12 l-12" align="center">
              
                 <p style="color: #ffffff;font-size: 2.8em;font-weight: 700;letter-spacing: -1px;text-align: center;text-transform: uppercase;">3<strong>sh</strong></p>
               </div>
            </div>
         </nav>
      </header>  
        <div id="contact">
            <div class="line">
            <br/>
               <h2 class="section-title">Forget Password</h2>
               <div class="margin">
                  <div class="s-12 m-12 l-3 hide-m hide-s margin-bottom right-align">
                    
                  </div>
                  <div class="s-12 m-12 l-5" align="center">
                    <form class="customform"  runat="server">
                      <div class="s-12"><input id="email" name="Email" runat="server" placeholder="Your Email" type="email" required/></div>
                      <div class="s-12 m-12 l-4">
                          <asp:Button ID="Button1" runat="server"  class="color-btn" Text="Ok" OnClick="Button1_Click" /></div>
                      <div id="qa" runat="server"><div class="s-12"><input name="question" placeholder="Question" type="text" required id="question" runat="server" aria-readonly="True" disabled /></div>
                          <asp:Label ID="Label1" runat="server" Text="Label"  Visible="False"></asp:Label>
                          <div class="s-12"><input name="answer" placeholder="answer" type="text" required id="answer" runat="server" /></div>
                     <div class="s-12 m-12 l-4">
                         <asp:Button ID="Button2" runat="server" Cssclass="color-btn" Text="submit" OnClick="Button2_Click" />
                     </div>
                     <div class="s-12 m-12 l-4"><button class="color-btn" type="reset" onclick="myFunction()">Reset</button></div></div>
                     <div id="pws" runat="server">
                         <div class="s-12"> <input type="password" placeholder="Password" id ="password" required runat="server" /></div>
                         <div class="s-12"> <input type="password" placeholder="Confirm Password" id ="password1" required runat="server" /></div>
                        <div class="s-12 m-1 l-4"><asp:Button ID="button3" runat="server" CssClass="color-btn" Text="conform" OnClick="button3_Click" /></div> 
                       <div class="s-12 m-12 l-4"><button class="color-btn" type="reset" onclick="myFunction()">Reset</button></div></div>                     
                     </div>
                    </form>
                  </div>                
               </div>
            </div>
         </div>
         <!-- FOOTER -->
      <footer>
         <div class="line">
            <div class="s-12 l-6">
               <p>Non-Copyright. But still the rights are reserved. </p>
               <p>The images are Sourced from the Internet but edited  . </p>
            </div>
            <div class="s-12 l-6">
               <font class="right"  color=" #fdfefe ">Design and coding<br> by Moin</font>
            </div>
         </div>
      </footer>
      

      </body>
    <script>
function myFunction() {
	  var x = document.getElementById('qa');
	  var tid = document.getElementById('email').value;
	  var ok = document.getElementById('ok');
	  	     if (x.style.visibility === 'hidden' && tid!=="") {
	        x.style.visibility = 'visible';
	        ok.style.visibility = 'hidden';     
	    } else {
	        x.style.visibility = 'hidden';
	        ok.style.visibility = 'visible';
	    }
}
</script>
</html>
