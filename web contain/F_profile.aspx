<%@ Page Language="C#" AutoEventWireup="true" CodeFile="F_profile.aspx.cs" Inherits="web_contain_F_profile" %>

<!DOCTYPE html>

<html >
<head>
<title>3sh</title>
<link href="style/templatemo-style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style/style1.css" />
<style type="text/css">
input[type=text],input[type=textarea],input[type=date],input[type=email] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color:#997A83;
    color: white;
    
}

input[type=text]:focus,input[type=textarea]:focus,input[type=date]:focus,input[type=email]:focus
{
width:95%;
transition:500ms all ease;
background-size:25px 25px;
background-position:96% 62%;
padding:3px 32px 3px 3px;
}
input[type=button], input[type=submit], input[type=reset] {
    background-color: #893843;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script language="javascript" type="text/javascript" src="script/mootools-1.2.1-core.js"></script>
<script language="javascript" type="text/javascript" src="script/mootools-1.2-more.js"></script>
<script language="javascript" type="text/javascript" src="script/slideitmoo-1.1.js"></script>
<script language="javascript" type="text/javascript">
	window.addEvents({
		'domready': function(){
			/* thumbnails example , div containers */
			new SlideItMoo({
						overallContainer: 'SlideItMoo_outer',
						elementScrolled: 'SlideItMoo_inner',
						thumbsContainer: 'SlideItMoo_items',		
						itemsVisible: 5,
						elemsSlide: 3,
						duration: 200,
						itemsSelector: '.SlideItMoo_element',
						itemWidth: 140,
						showControls:1});
		},
		
	});
</script>
<!-- circle icon  -->      
      <link rel="apple-touch-icon" sizes="57x57" href="circle/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="circle/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="circle/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="circle/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="circle/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="circle/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="circle/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="circle/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="circle/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="circle/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="circle/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="circle/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="circle/favicon-16x16.png">
<link rel="manifest" href="circle/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="circle/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<!-- end of icon -->
</head>
<body>
<div id="templatemo_wrapper">
	<div id="templatemo_menu">
            	
    </div> <!-- menu -->
    <div id="templatemo_header_bar">
    
            <div id="header"><div class="right"></div>
            
                <h1><a href="#" target="_parent">Farmer
                    <img src="images/templatemo_logo.png" alt="Site Title" /><!-- the shop -->
                    <h3>
                        <asp:Label ID="eid" runat="server" Text="Label"></asp:Label> </h3>
                </a></h1>
      </div>
    </div>    
    <div class="cleaner"></div>
    
    <div id="sidebar"><div class="sidebar_top"></div><div class="sidebar_bottom"></div>
        <div class="sidebar_section">
        
        	<h2 align="center">Things that can be Done</h2>
                    
           <ul >
            <li style="font-size:180%"><a href="F_home.aspx" class="current">HOME</a><br/><br/></li>
            <li style="font-size:180%"><a href="F_profile.aspx" target="_parent">Profile</a><br/><br/></li>
            <li style="font-size:180%"><a href="F_change.aspx" target="_parent">Change Password</a><br/><br/></li>
            <li style="font-size:180%"><a href="CropDetails.aspx" target="_parent">Add Crops</a><br/><br/></li>
            <li style="font-size:180%"><a href="logout.aspx" target="_parent">LogOut</a><br/><br/></li>
            
        </ul>
        </div>
         
        
    </div>
    
    <div id="templatmeo_content">
    
    	<div id="latest_product_gallery">
        
        	<h2>Featured Products</h2>
    
	    	<div id="SlideItMoo_outer">	
                <div id="SlideItMoo_inner">			
                    <div id="SlideItMoo_items">
                                       <div class="SlideItMoo_element">
                                <a href="#">
                                <img src="images/templatemo_product_07.png" alt="product 7" /></a>
                        </div>
                        <div class="SlideItMoo_element">
                                <a href="#">
                                <img src="images/templatemo_product_08.png" alt="product 8" /></a>
                        </div>
                    </div>			
                </div>
            </div>
            
    	</div>            
    
        <div class="content_section" align="center">
        <h2>Personal Details</h2>
                    <form id="form1" runat="server">
                    <div class="q required">
						Name&nbsp;<input id="name" type="text"  size="48" maxlength="255" name="name" runat="server" required/>
					</div>
					<div class="q required">
						D.O.B&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="dob" type="text" size="48" name="dob" runat="server"/>
					</div>
                    <div class="q required">
						Ph No:&nbsp; <input  id="phno"  type="text" size="48" maxlength="255" name="phno" runat="server"/>
					</div>
					<div class="q required">
					Addres&nbsp;<input  id="address" type="textarea"  size="48" maxlength="255" name="addres" runat="server"/>
					</div>
					<div class="q required">
						Pincode&nbsp;<input  id="pin" type="text"  size="48" maxlength="255" name="pincode" runat="server"/>
					</div>
					<div class="q required">
						District / Taluk / City&nbsp;<input  id="dtk" type="text" size="48"  maxlength="255" name="dtc" runat="server"/>
					</div>
					<div class="q required">
						State&nbsp;<input  id="state" type="text" size="48"  maxlength="255" name="state" runat="server"/>
					</div>
					<div class="q required">
						Crops&nbsp;<input  id="crop" type="text" size="48"  maxlength="255" name="crops" runat="server"/>
					</div>
					<div class="q required">
						Email&nbsp;<input  id="email" type="email" size="48"  maxlength="255" name="email" runat="server"></input>
					</div>
					<button   type="button" runat="server" onserverclick="Unnamed_ServerClick" >Submit Button</button></form>
                                    <div class="cleaner"></div>
    

              
        </div>
     </div>
   </div>
<div id="templatemo_footer_wrapper">

	<div id="templatemo_footer">
        Copyright © 2020 <a href="#">3sh</a>
</div>
</div>
</body>
</html>
