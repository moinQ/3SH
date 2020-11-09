<%@ Page Language="C#" AutoEventWireup="true" CodeFile="croptest.aspx.cs" Inherits="web_contain_croptest" %>


<!DOCTYPE html>

<html>
<head>
<title>3sh</title>
 
<link href="style/templatemo-style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style/style1.css" />
<style type="text/css">
input[type=text],input[type=textarea],input[type=date],input[type=number] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color:#997A83;
    color: white;
}

input[type=text]:focus,input[type=textarea]:focus,input[type=date]:focus,input[type=number]:focus
{
width:95%;
transition:500ms all ease;
background-size:25px 25px;
background-position:96% 62%;
padding:3px 32px 3px 3px;
}
 input[type=submit], input[type=reset] {
    background-color: #893843;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
 input[type=button]
 {
     
     
     background-color: #893843;
    border:none;
    color: white;
    padding: 10px 32px;
    text-decoration: none;
    margin: 2px 2px;
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
</head>
<body>
<div id="templatemo_wrapper">
	<div id="templatemo_menu">
            	
        [</div> <!-- menu -->
    <div id="templatemo_header_bar">
    
            <div id="header"><div class="right"></div>
            
                <h1><a href="#" target="_parent">Farmer
                    <img src="images/templatemo_logo.png" alt="Site Title" /><!-- the shop -->
                    <h3><asp:Label ID="eid" runat="server" Text="Label"></asp:Label></h3>
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
              <form runat="server" >
        <h2>Crops Details</h2>
                  
                      <div class="container">  
          
            <table class="table" id="maintable">  
                <thead>  
                    <tr>  
                        <th> Sl.no</th>
                        <th>Crop Types </th>  
                        <th>Quantity</th>  
                        <th>Rate per Quantity</th>
                        <th>Availability Period  </th>    
                    </tr>  
                </thead>  
                <tbody>  
                    <tr class="data-contact-person">  
                        <td>
                             <input type="text" name="f-name"  disabled  value="1"/></td>  
                    
                        <td>  
                            <input type="text" name="f-name"   /></td>  
                        <td>  
                            <input type="text" name="l-name" /></td>  
                        <td>  
                            <input type="number" name=""  /></td>  
                        <td> 
                             <input type="date" name="email"  /></td>  
                        <td> 
                           <input type="button"  id="submit"  value="ADD" class="classAdd" onclick="add()" runat="server" > 
                        </td>  
                    </tr>  
                </tbody>  
            </table>  
         
                           <input type="submit" name="Search" id="submit1"  value="submit" runat="server" > 
        </div>  

                       

                    </form>
                                    <div class="cleaner"></div>
                    
        </div>
     </div>
   </div>
<div id="templatemo_footer_wrapper">

	<div id="templatemo_footer">
        Copyright © 2020 <a href="#">3sh</a>
</div>
</div>
    <script type="text/javascript">  
    $(document).ready(function add() {  
        $(document).on("click", id="submit", function () { //
            var rowCount = $('.data-contact-person').length + 1;  
            var contactdiv = '<tr class="data-contact-person">' +  
                '<td><input type="text" name="f-name' + rowCount + '" class="form-control f-name01" /></td>' +  
                '<td><input type="text" name="l-name' + rowCount + '" class="form-control l-name01" /></td>' +  
                '<td><input type="text" name="email' + rowCount + '" class="form-control email01" /></td>' +  
                '<td><button type="button" id="btnAdd" class="btn btn-xs btn-primary classAdd" onclick=add()>Add More</button>' +  
                '<button type="button" id="btnDelete" class="deleteContact btn btn btn-danger btn-xs">Remove</button></td>' +  
                '</tr>';  
            $('#maintable').append(contactdiv); // Adding these controls to Main table class  
        });  
    });
    $(document).on("click", ".deleteContact", function () {
        $(this).closest("tr").remove(); // closest used to remove the respective 'tr' in which I have my controls   
    });
</script> 
</body>
</html>
