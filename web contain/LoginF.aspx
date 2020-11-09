<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginF.aspx.cs" Inherits="LoginF" %>



<!doctype html>
<html>
<head>
    <title>Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <!-- CSS STYLES -->
    <link rel="stylesheet" href="style/animate.css"> <!-- CSS Animate -->
    <link rel="stylesheet" href="style/bootstrap.min.css"> <!-- Bootstrap style -->
    <link rel="stylesheet" href="style/style.min.css"> <!-- Main style  -->
    <link rel="stylesheet" href="style/blue.css"> <!-- color  -->
    <link rel="stylesheet" href="style/icons.css">
  

    <!-- END CSS STYLES -->
    <style type="text/css">
        .auto-style1 {
            position: fixed;
            top: 5px;
            left: -70px;
            width: 107%;
            height: 114%;
         
        }
        #submit {
            width: 755px;
        }
        .togg{
            
            position:absolute;
            top:60%;
            right:-12%;
            transform:translateY(-50%);
            cursor:alias;
        }
        
    </style>
  
    </head>
<body>
    <img src="">
    <div class="cover"></div>
    <canvas id="canvas" class="auto-style1"></canvas>
    <!-- HOME -->
    <section id="home">
        <!-- row -->
        <div class="row animate-start" data-animations="fadeInUp" data-animation-duration="1s" data-animation-delay="0.4s">
            <div class="col-md-6 col-md-offset-3 ">
                <div class="form">
                    <h1 align="center">Login Page </h1>
                    <!-- contact form -->

                    <form id="form1" runat="server">
                        <div class="group form-group-lg" >
                            <input type="text"  class="text form-control"  id="id_email" required runat="server" >
                            <span class="bar"></span>
                            <span class="title">UserName</span>
                            </div> 
                        <div class="group form-group-lg" >
                            <input type="password" class=" form-control was-validated "  id="pass" required runat="server"> 
                           
                          <span class="bar"></span>
                        <div class="togg">
                            <input type="checkbox" id="chk" runat="server"   style="font-size: x-small" onchange="mypass()" class="auto-style2" /></div>
                            <span class="title">Password</span>
                           
                            
                             
                        </div>
                       
                        <button runat="server" class="btn btn-default btn-lg btn-block lnk" id="submit" onserverclick="submit_ServerClick" ><span>Log Me In</span> <i class="fa fa-angle-double-right" style="font-size:24px"></i> </button>
                  <div class="group form-group-lg" >          
              &nbsp;&nbsp;&nbsp;         
              <a href="ForgotPass.aspx" class="h6" align="left"> Forgot password?</a>  
                      </div>
                        
                        </form>
            </div>

            </div>
        </div>

        <!-- end row -->

    </section>
    <!-- END HOME -->
    <!-- JS SCRIPT -->
    <script src="script/jquery.js"></script>
    <script src="script/animate.min.js"></script>
    <script src="script/magnet.js"></script>
    <script  type="text/javascript">
        function mypass() {
            
            if(document.getElementById('chk').checked == true)
            {
                document.getElementById('pass').type = 'text';
            }
            else
            {
                document.getElementById('pass').type = 'password';
            }
            
        }
    </script>
    <!-- END JS SCRIPT -->
</body>
</html>