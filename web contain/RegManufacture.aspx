<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegManufacture.aspx.cs" Inherits="web_contain_RegManufacture" %>

<!DOCTYPE html>

<html>
<head runat="server">
  <title>Regester Manufacture</title>
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
<link rel="icon" type="image/png" sizes="192x192"  href="img/circle/android-icon-192x192.png">
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
	<link rel="stylesheet" href="styleblue.css"> <!-- color  -->
	<link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="style/layout.css" />
	<!-- END CSS STYLES -->
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
								
								<h3>Register as Manufacture</h3>
								<form runat="server" id="form1">
								<input type="text"  id="m_id" value="newid " class="text form-control"  runat="server" readonly="readonly"  />
									<br/><div class="group form-group-lg">
										<input type="text"  name="name" class="text form-control" required id="name" runat="server"  />
										<span class="bar"></span>
										<span class="title">Name</span>
									</div>

									<div class="group form-group-lg">
										<input type="email"  class="email form-control" required id="email" runat="server">
										<span class="bar"></span>
										<span class="title">E-mail</span>
									</div>

									<div class="group form-group-lg">
										<input type="text" name="ncompany" class="email form-control" required id="cname" runat="server">
										<span class="bar"></span>
										<span class="title">Name Of The Company</span>
									</div>
                                    	
									<div class="group form-group-lg">
										<input type="number"  class="email form-control"  required id="tnum" runat="server" maxlength="6">
										<span class="bar"></span>
										<span class="title">GST Number</span>
									</div>

                                    <div class="group form-group-lg">
										<textarea name="address" class="email form-control" required id="adress" runat="server"></textarea>
										<span class="bar"></span>
										<span class="title">Address</span>
									</div>
                                    
                                    <div class="group form-group-lg">
										<input type="text" name="pincode" class="email form-control" required id="pin" runat="server">
										<span class="bar"></span>
										<span class="title">Pin Code</span>
									</div>						
									
                                    <div class="group form-group-lg">
										<input type="text" name="tprocessunder" class="email form-control" required id="type" runat="server">
										<span class="bar"></span>
										<span class="title">Types Of Process Undertaken</span>
									</div>
                                    <div class="btn-group">
                                    <Button id="button1" class ="btn btn-default btn-lg btn-block lnk" onserverclick="Button1_Click" runat="server"><span> SUBMIT </span><i class="fa fa-angle-double-right" style="font-size:24px">&nbsp;</i> </Button>
                                    <button id="reset" class ="btn btn-default btn-lg btn-block lnk"  onclick="myfunction()"><span> Reset </span><i class="fa fa-angle-double-right" style="font-size:24px"></i> </button>
                                    </div>
					</form>
					</div>
						</div>
					</div>
	</section>
    <!-- JS SCRIPT -->
    <script>
        function myfunction()
        {
            document.getElementById("form1").reset();
        }
    </script>
	<script src="script/jquery.js"></script>
	<script src="script/animate.min.js"></script>
	<script src="script/magnet.js"></script>
	<!-- END JS SCRIPT -->
</body>
</html>
