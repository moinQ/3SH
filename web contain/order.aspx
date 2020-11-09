<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="web_contain_order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Details</title>
<link href="3sh.css" rel="stylesheet" type="text/css">
    </head>
<body >
<form runat="server" id="f1">
		<div class="form_table">
			<div class="q full_width">
				<div class="segment_header" 
				 style="width: auto; text-align: Center; background-color: transparent;" >
					<h1
						style="font-weight: bold; font-size: 36px; font-family: 'Open Sans', sans-serif; padding-top:15px; background-color: rgba(0, 0, 0, 0.407843)">
						Confirm Details<br /> <span style="font-size: 5px;"> &nbsp;<br /></span>
					</h1>
				</div>
				<div class="q full_width">
					<div class="q required">
						<label class="question top_question" for="RESULT_TextField-2">
							Products Needed&nbsp;</label> <input type="text" class="text_field" runat="server" id="ct"  disabled size="50"
							maxlength="255" name="pn" />
					</div>
					<div class="q required">
						<label class="question top_question" for="RESULT_TextField-2">
							Quantity &nbsp;</label> <input type="text" class="text_field" runat="server" id="QUTY" disabled size="48"
							maxlength="255" name="qty" />
					</div>
					
					<br/>
                   
					<div class="q required">
						<label class="question top_question" for="RESULT_TextField-2">
							&nbsp;ID &nbsp;</label> <input class="text_field" runat="server" id="mid"
							size="5" maxlength="255" name="MIs" style="width: 45px; height: 18px" />
					</div>
                    <div class="q required">
						<label class="question top_question" for="RESULT_TextField-2"> 
                            GST no&nbsp;</label> <input type="text" class="text_field" runat="server" id="gst"
							size="70" maxlength="255" name="TN" />
					</div>
					<div class="q required">
						<label class="question top_question" for="RESULT_TextField-2">
							Addres &nbsp;</label> <input class="text_field" runat="server" type="text_area" id="add"  size="70" maxlength="255" name="OD" />
					</div>
                    <div class="q required"">
						<label class="question top_question" for="RESULT_TextField-2">
							Rate/Q &nbsp;&nbsp;&nbsp;</label> <input class="text_field" runat="server" id="rqt"
							size="30"   name="OD" />
					</div>
                    <br />
                    <div class="q required">
						<label class="question top_question" for="RESULT_TextField-2">
							Total Amount &nbsp;</label> <input class="text_field" runat="server" id="total" readonly="readonly" 
							size="30"  name="OD1" />
					</div>
				</div>
				<div class="outside_container">
					<div class="buttons_reverse" align="center">
						<button type="submit" name="Submit" value="Submit" id="submit" runat="server" onserverclick="submit_ServerClick" onclick= "conf()"
							class="submit_button" >Confirm</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
