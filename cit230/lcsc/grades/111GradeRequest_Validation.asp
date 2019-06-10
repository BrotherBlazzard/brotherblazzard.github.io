<%
  if Request.Form("ID") = "" or Len(Request.Form("ID")) < 4 or instr(Request.Form("ID"), " or ") > 0 then
	Response.Redirect("111GradeRequest.asp")
  end if  
%>
<!-- #Include File = "../includes/incDataMDB.asp" -->
<% Set rsValidate = Server.CreateObject("ADODB.RecordSet")
   SQL = "SELECT * From tblStudents WHERE webID = " & Request.Form("ID")
   rsValidate.Open SQL, DataConn
%>

<!DOCTYPE html>
<html>
<head>
 <!-- #Include File = "../includes/incHead.asp" -->
</head>

<body>
<div id="wrapper">
 <div id="header">
  <!-- #Include File = "../includes/incHeader.asp" -->
 </div>

<div id="content">
 <%
   If rsValidate.EOF Then%>	
 	<span class="errornote">Please check your login credentials and try again.</span>
	<br /><br />
	<a href="111GradeRequest.asp">&laquo; Back</a>
 <%Else
	Session("webID") = rsValidate("webID")
	Response.Redirect("111GradeReport.asp")
   End If%>
</div>
<!-- #Include File = "../includes/incFoot.asp" --></div>
</body>
</html>
