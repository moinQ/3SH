<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FA_home.aspx.cs" Inherits="web_contain_HfiledA" %>

<!DOCTYPE html>

<html>
<head>
<title>3sh(Field Agent)</title>
<style type="text/css">
#myInput {
  border-radius:50px;
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 50%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  color:black;
  margin-bottom: 12px;
}
#myTable {
  border-collapse: collapse;
  width: 50%;
  border: 1px solid #ddd;
  font-size: 18px;
}
#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}
</style>
<link href="style/templatemo-style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style/style1.css" />
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
            
                <h1><a href="#" target="_parent">Field Agent
                    <img src="images/templatemo_logo.png" alt="Site Title" /><!-- the shop -->
                    <h3> email _Id </h3>
                </a></h1>
      </div>
                       
    </div> 
    
    <div class="cleaner"></div>
    
    <div id="sidebar"><div class="sidebar_top"></div><div class="sidebar_bottom"></div>
    	
       
        
        <div class="sidebar_section">
        
        	<h2 align="center">Things that can be Done</h2>
          <ul >
            <li style="font-size:180%"><a href="FA_home.aspx" class="current">HOME</a><br/><br/></li>
            <li style="font-size:180%"><a href="FA_profile.aspx" target="_parent">Profile</a><br/><br/></li>
            <li style="font-size:180%"><a href="FA_change.aspx" target="_parent">Change Password</a><br/><br/></li>
            <li style="font-size:180%"><a href="FA_work.aspx" target="_parent">Work Details</a><br/><br/></li>
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
        <div class="content_section">
        <h2>Details</h2>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
<table id="myTable">
  <tr class="header">
    <th style="width:40%;">Field Agent Email</th>
    <th style="width:30%;">Farmer Name</th>
    <th style="width:20%;">Farmer Email</th>
    <th style="width:40%;">Consulted</th>
    <th style="width:70%;">State</th>
    <th style="width:40%;">Pin</th>
    <th style="width:70%;">Other Details</th>
    </tr>
    <%

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sh", "root", "root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from fawork");
while(rs.next())
{
  String event = rs.getString("email");
  String fanme = rs.getString("fanme");
  String faemail = rs.getString("faemail");
  String Consulted= rs.getString("Consulted");
  String state= rs.getString("state");
  String pin= rs.getString("pin");
  String otherdetails= rs.getString("otherdetails");
  
%>
<tr>
<td><%=event%></td>
<td><%=fanme%></td>
<td><%=faemail%></td>
<td><%=Consulted%></td>
<td><%=state%></td>
<td><%=pin%></td>
<td><%=otherdetails%></td>

</tr>
<%
}
%>
</table>
</div>
<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
                   
   </div>
<div id="templatemo_footer_wrapper">

	<div id="templatemo_footer">
        Copyright © 2020 <a href="#">3sh</a>
</div>
</div>
</body>
</html>