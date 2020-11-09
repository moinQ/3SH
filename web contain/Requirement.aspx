<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Requirement.aspx.cs" Inherits="web_contain_Requirement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Requirement Details</title>
<link href="3sh.css" rel="stylesheet">
</head>
<body >
<form runat="server" >
		<div class="form_table">
			<div class="q full_width">
				<div class="segment_header"
					style="width: auto; text-align: Center; background-color: transparent;">
					<h1
						style="font-weight: bold; font-size: 36px; font-family: 'Open Sans', sans-serif; padding: 15px; background-color: rgba(0, 0, 0, 0.407843)">
						Requirement Details<br /> <span style="font-size: 5px;"><br /> <br /></span>
					</h1>
				</div>
				<div class="q full_width">
					<div class="q required">
						<label class="question top_question" for="RESULT_TextField-2">
							Requester ID&nbsp;</label> <input type="text" class="text_field" size="5"
							maxlength="10" name="mid" style="width: 26px; height: 14px" runat="server" id="id" />
					</div>
					<div class="q required">
						<label class="question top_question" for="RESULT_TextField-2">
							Quantity Needed &nbsp;</label> <input type="text" class="text_field" size="48"
							maxlength="255" name="qtyn"  runat="server" id="qn"/>
					</div>
					<div class="q required">
						<label class="question top_question" for="RESULT_TextField-2">
							Needed for &nbsp;</label> <input type="text" class="text_field"
							size="48" maxlength="255" name="nf" runat="server" id="nf"/>
					</div>
					<div class="q required">
						<label class="question top_question" for="RESULT_TextField-2">
							Other Details &nbsp;</label> <input type="text" class="text_field"
							size="70" maxlength="255" name="OD"  runat="server" id="od"/>
					</div>
				</div>
				<div class="outside_container">
					<div class="buttons_reverse" align="center">
						<button type="button" name="Submit" value="Submit" runat="server" id="b1" onserverclick="b1_ServerClick1" class="submit_button"  >submit</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
