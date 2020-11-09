<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test1.aspx.cs" Inherits="web_contain_test1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>3sh(Farmer)</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="stylesheet/styles.css" />
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
            
                <h1><a href="#" target="_parent">Farmer
                    <img src="images/templatemo_logo.png" alt="Site Title" /><!-- the shop -->
                    <h3><%out.println(session.getAttribute("email").toString());%></h3>
                </a></h1>
      </div>
                       
    </div> 
    
    <div class="cleaner"></div>
    
    <div id="sidebar"><div class="sidebar_top"></div><div class="sidebar_bottom"></div>
    	
       
        
        <div class="sidebar_section">
        
        	<h2 align="center">Things that can be Done</h2>
                    
           <ul >
            <li style="font-size:180%"><a href="homef.jsp" class="current">HOME</a><br/><br/></li>
            <li style="font-size:180%"><a href="fprofile.jsp" target="_parent">Profile</a><br/><br/></li>
            <li style="font-size:180%"><a href="fchange.jsp" target="_parent">Change Password</a><br/><br/></li>
            <li style="font-size:180%"><a href="CropDetails.jsp" target="_parent">Add Crops</a><br/><br/></li>
            <li style="font-size:180%"><a href="logout.jsp" target="_parent">LogOut</a><br/><br/></li>
            
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
        <div class="content_section">
        <h2>Advertisements Timeline</h2>
                <% #:
                    SqlDataSource con = new SqlDataSource(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\3sh\App_Data\Database1.mdf;Integrated Security=True");
                    
                   
                    Class1 abc = new Class1();
                    abc.
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sh", "root", "root");
                    Statement st=con.createStatement();
                    String name, phno, place;
                    name=phno=place="";
                    int i;
                    ResultSet rs=st.executeQuery("select * from mkt");
                    while(rs.next())
                    {
                        name=rs.getString("name");
                        phno=rs.getString("email");
                        place=rs.getString("addr");
                        i=rs.getInt("ID");
                        rs.close();
                        rs=st.executeQuery("select * from mmreq where fid='"+i+"'");
                        while(rs.next())
                        {
                            String nameofcrop=rs.getString("nameofcrop");
                            String typeofcrop=rs.getString("typeofcrop");
                            String ceopdetail=rs.getString("ceopdetail");
                            String neededfor=rs.getString("neededfor");
                            String qtyneeded=rs.getString("qtyneeded");
                            String neededby=rs.getString("neededby");
                            String otherdetails=rs.getString("otherdetails");

#%>
	<div style="border:3px solid #997A83;">
	<div style="margin-left:10px;">
	<h2><strong><%=nameofcrop %></strong></h2>
	<h4><strong>Type Of Crop:</strong><%=typeofcrop %>&nbsp;<strong> Crop Detail: </strong><%=ceopdetail %><br/><strong> Needed By: </strong><%=neededby %></h4>
	<h4><br/><strong>Name</strong> <%=name %><br/><strong> Email </strong><%=phno%> <br/><strong>Place: </strong><%=place %>
	<br/><strong>Needed For: </strong><%=neededfor %>
	<br/><strong>Qty Needed: </strong><%=qtyneeded %>
	<br/><strong>Other Details: </strong><%=otherdetails %>
	
	</h4>
	</div></div><br/>
	<%
}
}
%>
                   
   </div>
<div id="templatemo_footer_wrapper">

	<div id="templatemo_footer">
        Copyright © 2017 <a href="#">3sh</a>
</div>
</div>
</body>
</html>