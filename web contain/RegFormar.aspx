<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegFormar.aspx.cs" Inherits="web_contain_RegFormar1" %>

<!DOCTYPE html>

<html>
<head runat="server">
	<title>Regester as Formar</title>
    <!-- circle icon  -->
    <link rel="apple-touch-icon" sizes="57x57" href="img/circle/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="img/circle/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/circle/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="img/circle/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/circle/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="img/circle/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/circle/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="img/circle/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="img/circle/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="img/circle/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="img/circle/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="img/circle/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="img/circle/favicon-16x16.png">
    <link rel="manifest" href="img/circle/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="img/circle/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!-- end of icon -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<!-- CSS STYLES -->
	<link rel="stylesheet" href="style/animate.css"> <!-- CSS Animate -->
	<link rel="stylesheet" href="style/bootstrap.min.css"> <!-- Bootstrap style -->
	<link rel="stylesheet" href="style/style.min.css"> <!-- Main style  -->
	<link rel="stylesheet" href="style/blue.css"> <!-- color  -->
    <link rel="stylesheet" href="style/layout.css" />
	<!-- END CSS STYLES -->
    <style type="text/css">
        .auto-style1 {
            z-index: 2;
            bottom: 20px;
            position: absolute;
            display: block;
            width: 100%;
            left: -1px;
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
								<!-- contact form -->
				
         
								<h1>Register As Farmer</h1>
								 <form id="form1" runat="server"  autocomplete="off">
                        <input type="text" id="f_id" class="text form-control" placeholder="ID" runat="server" readonly="readonly" >
                        <br />
                        <div class="group form-group-lg">
                            <input type="text" id="name_1" class="text form-control" required runat="server">
                            <span class="bar"></span>
                            <span class="title">Name</span>
                        </div>
                        <div class="group form-group-lg">

                            <input id="dob" class="email form-control" type="text" required runat="server"  onfocus="myf()">
                            <span class="bar"></span>
                            <span class="title"> D.O.B</span>
                        </div>
                        <div class="group form-group-lg">
                            <input type="text" id="phn" class="email form-control" maxlength="10" runat="server" required>
                            <span class="bar"></span>
                            <span class="title">Ph No:</span>
                        </div>
                        <div class="group form-group-lg">
                            <textarea id="address" class="email form-control" runat="server" required></textarea>

                            <span class="bar"></span>
                            <span class="title">Addres</span>
                        </div>
                        <div class="group form-group-lg">
                            <input type="text" id="pin" class="email form-control" typeof="number" maxlength="6" runat="server" required>
                            <span class="bar"></span>
                            <span class="title">Pin Code</span>
                        </div>
                        <div class="group form-group-lg">
                            <input type="text" id="dtc" class="email form-control" runat="server" required>
                            <span class="bar"></span>
                            <span class="title">District / Taluk / City </span>
                        </div>
                        <div class="group form-group-lg">
                            <input type="text" id="state" class="email form-control" runat="server" required>
                            <span class="bar"></span>
                            <span class="title">State</span>

                        </div>
                        <div class="group form-group-lg">
                            <input type="text" id="crops" class="email form-control" runat="server" required>
                            <span class="bar"></span>
                            <span class="title">Crops</span>
                        </div>
                        <div class="group form-group-lg">
                            <input type="email" id="email" class="email form-control" runat="server" required>
                            <span class="auto-style1"></span>
                            <span class="title">E-mail</span>
                        </div>
                        <div class="btn-group">
                            <button id="button1" class="btn btn-default btn-lg btn-block lnk" onserverclick="button1_ServerClick" runat="server"><span>SUBMIT </span><i class="fa fa-angle-double-right" style="font-size: 24px">&nbsp;</i> </button>

                            <button type="reset" class="btn btn-default btn-lg btn-block lnk" onclick="myfunction()"><span>Reset </span><i class="fa fa-angle-double-right" style="font-size: 24px"></i></button>

                        </div>

                    </form>
					</div>
						</div>
					</div>
					
					<!-- end row -->
		
	</section>	
	<!-- END HOME -->
	<!-- JS SCRIPT -->
       <script type="text/javascript">
        function myfunction() {
            document.getElementById("form1").reset();
        }
        function myf() {
            document.getElementById("dob").type = "date";

        }
    </script>
	<script src="script/jquery.js"></script>
	<script src="script//animate.min.js"></script>
	<script src="script//magnet.js"></script>
	<!-- END JS SCRIPT -->
</body>
</html>
