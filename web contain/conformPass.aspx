<%@ Page Language="C#" AutoEventWireup="true" CodeFile="conformPass.aspx.cs" Inherits="web_contain_conformPass" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title> 3Sh</title>
      <!-- CSS STYLES -->
    <link rel="stylesheet" href="style/animate.css"> <!-- CSS Animate -->
    <link rel="stylesheet" href="style/bootstrap.min.css"> <!-- Bootstrap style -->
    <link rel="stylesheet" href="style/style.min.css"> <!-- Main style  -->
    <link rel="stylesheet" href="style/blue.css"> <!-- color  -->
    <link rel="stylesheet" href="style/icons.css">
    <link rel="stylesheet" href="style/layout.css" />
   

    <!-- END CSS STYLES -->
    <style>  
        .togg{
            
            position:absolute;
            top:60%;
            right:-12%;
            transform:translateY(-50%);
            cursor:alias;
        }

/* Popup container - can be anything you want */  
.popup {  
    position: relative;  
    display: inline-block;  
    cursor: pointer;  
    -webkit-user-select: none;  
    -moz-user-select: none;  
    -ms-user-select: none;  
    user-select: none;  
}  
  
/* The actual popup */  
.popup .popuptext {  
    visibility: hidden;  
    width: 260px;  
    font-size:small;
    background-color: #555;  
    color: #fff;  
    text-align: center;  
    border-radius: 6px;  
    padding: 8px 0;  
    position: absolute;  
    z-index: 1;  
    bottom: 125%;  
    left: 50%;  
    margin-left: -80px;  
}  
  
/* Popup arrow */  
.popup .popuptext::after {  
    content: "";  
    position: absolute;  
    top: 100%;  
    left: 50%;  
    margin-left: -5px;  
    border-width: 5px;  
    border-style: solid;  
    border-color: #555 transparent transparent transparent;  
}  
  
/* Toggle this class - hide and show the popup */  
.popup .show {  
    visibility: visible;  
    -webkit-animation: fadeIn 1s;  
    animation: fadeIn 1s;  
}  
  
/* Add animation (fade in the popup) */  
@-webkit-keyframes fadeIn {  
    from {opacity: 0;}   
    to {opacity: 1;}  
}  
  
@keyframes fadeIn {  
    from {opacity: 0;}  
    to {opacity:1 ;}  
}  
        .auto-style1 {
            z-index: 2;
            bottom: -4px;
            position: absolute;
            display: block;
            width: 100%;
            left: 0px;
        }
    </style>  
</head>
<body>
       
   <div class="cover"></div>
		<canvas id="canvas" class="cover"></canvas>
	<!-- HOME -->
	<section id="home">
					<!-- row -->
					<div class="row animate-start" data-animations="fadeInUp" data-animation-duration="1s" data-animation-delay="0.4s">
						<div class="col-md-6 col-md-offset-3 ">
							<div class="form">
                   <form id="fr1" runat="server">
 
                                    <div class="group form-group-lg">
										<input type="email"  class="email form-control" required id="email" runat="server">
										<span class="bar"></span>
										<span class="title">E-mail/username</span>
									</div>
        
                                    <div class="group form-group-lg group2">
										<input type="text"  class="email form-control " required id="pwd" runat="server">
                                        <span class="auto-style1"></span>
										<span class="title">Password</span>
                                        
                                     
                                        </div>
                                        
        
                                    <div class="group form-group-lg">
										<input type="password"  class="email form-control" required id="Cpass" runat="server">
										<span class="bar"></span>
                                         <div class="togg">
                                     <input type="checkbox" id="chk" runat="server" style="font-size: x-small" onchange="mypass()" class="auto-style2" /></div>
										<span class="title">Confirm Password</span>
                                      
									</div>
                                    
                                       <div class="group form-group-lg popup" >
										<input type="text"  class="email form-control" required id="otp"  onfocus="myFunction()"   runat="server">
										<span class="bar"></span>
										<span class="title">One time password </span>
                                           <span class="popuptext" id="myPopup">One time password send to your Email_id </span> 
									</div>
                                     
                                      <button id="submit" class ="btn btn-default btn-lg btn-block lnk"  runat="server" onserverclick="submit_ServerClick"><span> SUBMIT </span><i class="fa fa-angle-double-right" style="font-size:24px"></i> </button>

                                  
        <div id="Qa" runat="server" >
        <div class="group form-group-lg">
										<input list="Question"  class="email form-control" required id="question" runat="server">
										<datalist id="Question">
                                            <option  value="What was the name of your first stuffed toy?"/>
                                            <option  value="What is your favourite cricket team?"/>
                                            <option  value="What was your maths teacher's surname in your 8th year of school?"/>
                                            <option  value="What is the make and model of your first car?"/>

										</datalist>
                                         <span class="bar"></span>
										<span class="title">Security Question</span>
            
									</div>
                                        <div class="group form-group-lg">
										<input type="text"  class="email form-control" required id="answer" runat="server">
										<span class="bar"></span>
										<span class="title">Answer</span>
									</div>  
              <button id="confirm" class ="btn btn-default btn-lg btn-block lnk"  runat="server" onserverclick="confirm_ServerClick"><span> Confirm </span><i class="fa fa-angle-double-right" style="font-size:24px"></i> </button>

               
          
        </div>
        
        
          </form>
     </div>
    </div>
 
 </div>
        </section>
   <script  type="text/javascript">  
     
function myFunction() {  
    var popup = document.getElementById("myPopup");  
    popup.classList.toggle("show");
   
}

        function mypass() {

            if (document.getElementById('chk').checked == true) {
                document.getElementById('pass').type = 'text';
            }
            else {
                document.getElementById('pass').type = 'password';
            }
        }
       
    </script>
     
    <script src="script/jquery.js"></script>
	<script src="script/animate.min.js"></script>
	<script src="script/magnet.js"></script>    
</body>
</html>
