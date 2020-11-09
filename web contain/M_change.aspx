<%@ Page Language="C#" AutoEventWireup="true" CodeFile="M_change.aspx.cs" Inherits="web_contain_M_change" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>3sh</title>
<link href="style/templatemo-style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style/style1.css" />
<style type="text/css">
input[type=text],input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color:#997A83;
    color: white;
}

input[type=text]:focus,input[type=password]:focus,
{
width:95%;
transition:500ms all ease;
background-size:25px 25px;
background-position:96% 62%;
padding:3px 32px 3px 3px;
}
button,input[type=button], input[type=submit], input[type=reset] {
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
<script language="javascript" type="text/javascript" src="scripts/mootools-1.2.1-core.js"></script>
<script language="javascript" type="text/javascript" src="scripts/mootools-1.2-more.js"></script>
<script language="javascript" type="text/javascript" src="scripts/slideitmoo-1.1.js"></script>
<script language="javascript" type="text/javascript">
function check(){
	var np=document.getElementById('newpass').value;
	var re=document.getElementById('repass').value;
	if (np!==re)
		{
			document.getElementById('war').value="Re-Enter the password";
		}else{document.getElementById('war').value="";}
	
}
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
</head>
<body>
<div id="templatemo_wrapper">
	<div id="templatemo_menu">
            	
    </div> <!-- menu -->
    <div id="templatemo_header_bar">
    
            <div id="header"><div class="right"></div>
            
                <h1><a href="#" target="_parent">Manufacture
                    <img src="images/templatemo_logo.png" alt="Site Title" /><!-- the shop -->
                    <h3>
                        <asp:Label ID="eid" runat="server" Text="Label"></asp:Label></h3>
                </a></h1>
      </div>
    </div>    
    <div class="cleaner"></div>
    
    <div id="sidebar"><div class="sidebar_top"></div><div class="sidebar_bottom"></div>
        <div class="sidebar_section">
        
        	<h2 align="center">Things that can be Done</h2>
                    
           <ul >
            <li style="font-size:180%"><a href="M_Home.aspx" class="current">HOME</a><br/><br/></li>
            <li style="font-size:180%"><a href="M_profile.aspx" target="_parent">Profile</a><br/><br/></li>
            <li style="font-size:180%"><a href="M_reqment.aspx" target="_parent">Marketeers' Requirements</a><br/><br/></li>
         	<li style="font-size:180%"><a href="M_AddProduct.aspx" target="_parent">Add Products</a><br/><br/></li>
         	<li style="font-size:180%"><a href="M_addReqment.aspx" target="_parent">Add Requirement</a><br/><br/></li>
            <li style="font-size:180%"><a href="M_change.aspx" target="_parent">Change Password</a><br/><br/></li>
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
        <h2>Change Password</h2>
                    <form  runat="server" action="M_change.aspx">
                    <div class="q required">
						Old Password&nbsp;<input id="oldpass" runat="server" type="text" size="48" maxlength="255"  name="oldpass" required />
					</div>
					<div class="q required">
						New password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="newpass" type="password" size="48" runat="server" name="newpassword" required />
					</div>
                    <div class="q required">
					Reenter Password:&nbsp; <input  id="repass" type="password" size="48" maxlength="255" name="repass" onblur="check()" required />
					</div>
					 <div class="q required">
					<input id="war" type="text" size="48" maxlength="255" name="repass" runat="server"  disabled align="center"/>
					</div>
					
					<button type="submit" name="Search"  id="submit" runat="server"  onserverclick="submit_ServerClick"> submit</button></form>
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
