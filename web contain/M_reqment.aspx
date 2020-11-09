<%@ Page Language="C#" AutoEventWireup="true" CodeFile="M_reqment.aspx.cs" Inherits="web_contain_M_reqment" %>

<!DOCTYPE html>

<html>
    <head>
<title>3sh(manufacturedetails)</title>
<link href="style/templatemo-style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style/style1.css" />
           <style type="text/css">
 button,input[type=button], input[type=submit], input[type=reset] {
    background-color:#21151d;
    border:hidden;
    border-radius:5px;
    color: white;
    padding: 10px 15px;
    text-decoration: none;
    margin: 1px 1px;
    cursor: pointer;
    position:absolute;
}
 input[type=text] {
    width:75%;
    padding: 12px 20px;
    margin: 2px 0;
    box-sizing: border-box;
    border:hidden;
    border-radius:5px;
    background-color:#997A83;
    color: white;
    cursor:text,default;

    
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
</head>
<body>
<div id="templatemo_wrapper">
	<div id="templatemo_menu">
            	
    </div> <!-- menu -->
    <div id="templatemo_header_bar">
    
            <div id="header"><div class="right"></div>
            
                <h1><a href="#" target="_parent">Manufacture
                    <img src="images/templatemo_logo.png" alt="Site Title" /><!-- the shop -->
                    <h3 id="eid" runat="server" style="color:white;"></h3>
                </a></h1>
                 
      </div>
         <div id="search_box" class="right">
            <input type="text" id="searchtext" runat="server"  class="input_field" />
            <button type="button" id="sb1" runat="server" onserverclick="sb1_ServerClick" style="height:25px;padding-bottom:23px;" > Search</button>
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
                                <img src="images/templatemo_product_01.png" alt="product 1" /></a>
                           
                        </div>	
                        <div class="SlideItMoo_element">
                                <a href="#">
                                <img src="images/templatemo_product_02.png" alt="product 2" /></a>
        
                        </div>
                        <div class="SlideItMoo_element">
                                <a href="#">
                                <img src="images/templatemo_product_03.png" alt="product 3" /></a>
        
                        </div>
                        <div class="SlideItMoo_element">
                                <a href="#">
                                <img src="images/templatemo_product_04.png" alt="product 4" /></a>
        
                        </div>
                        <div class="SlideItMoo_element">
                                <a href="#">
                                <img src="images/templatemo_product_05.png" alt="product 5" /></a>
        
                        </div>
                        <div class="SlideItMoo_element">
                                <a href="#">
                                <img src="images/templatemo_product_06.png" alt="product 6" /></a>
        
                        </div>
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
       <form runat="server" id="f1">
             <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="10000" Enabled="true" ></asp:Timer> 
        <div class="content_section">
        <h2>Advertisements Timeline</h2>
           
	<div style="border:3px solid #997A83;">
	<div style="margin-left:10px;">
	<h2 id="ct" runat="server" ><strong></strong></h2>
	<h4><strong>Quantity: </strong>
        <asp:Label ID="qt" runat="server" Text="Label"></asp:Label>&nbsp;<strong>&nbsp; Needed-By: </strong>
        <asp:Label ID="rqt" runat="server" Text="Label"></asp:Label></h4>
	<h4><br/><strong>Name:</strong> <asp:Label ID="name" runat="server" Text="Label"></asp:Label><br/>GST-<strong>no: </strong> <asp:Label ID="phno" runat="server" Text="Label"></asp:Label><br/>
        <strong>Place: </strong>  <asp:Label ID="place" runat="server" Text="Label"></asp:Label>
	
	<br/><strong>&nbsp;</strong>
         <button runat="server" id="order" onserverclick="order_ServerClick"  style="position:relative"><strong>Request </strong> </button>
        <br /> 
	</h4>

	</div></div><br/>

     </div>
        </form>  
          <form runat="server" id="F2" visible="false">
            
        <div class="content_section">
        <h2>Search Result</h2>
           
	<div style="border:3px solid #997A83;">
	<div style="margin-left:10px;">
	<h2 id="H1" runat="server" ><strong></strong></h2>
	<h4><strong>Quantity: </strong>
        <asp:Label ID="L1" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;<strong> Needed-by: </strong>
        <asp:Label ID="L2" runat="server" Text="Label"></asp:Label> 
      
	</h4>
	<h4><br/><strong>Name:</strong> <asp:Label ID="L3" runat="server" Text="Label"></asp:Label><br/>GST-no<strong>: </strong> <asp:Label ID="l4" runat="server" Text="Label"></asp:Label><br/>
        <strong>Place: </strong>  <asp:Label ID="l5" runat="server" Text="Label"></asp:Label>
	
	<br/>
         <button runat="server"  id="Button1" onserverclick="order_ServerClick"  style="position:relative"> <b>Order </b> </button> 
           <button runat="server" id=bnext  style="float:right;background-color:#7c233c;" onserverclick="bnext_ServerClick"><b>Next</b></button>
      
        <br /> 
	</h4>
       
	</div></div><br/>

     </div>
        </form>
                
   </div>
   </div>
<div id="templatemo_footer_wrapper">

	<div id="templatemo_footer">
        Copyright © 2020 <a href="#">3sh</a>
</div>
</div>
</body>
</html>
