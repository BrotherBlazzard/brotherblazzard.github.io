<!-- #Include File = "../includes/incDataMDB.asp" -->
<%
if request.querystring("webID") = "" then
   response.redirect("106GradeRequest.asp")
end if
'**************** Recordset Creation and Population ********************
   
   Set rs = Server.CreateObject("ADODB.RecordSet")
   SQL = "SELECT * FROM tblCC WHERE webID = " & request.querystring("webID") & " AND c = " & request.querystring("chapter")
   rs.Open SQL, DataConn	
   if rs.eof then response.redirect("106GradeReport.asp") end if

   Set rsKey = Server.CreateObject("ADODB.RecordSet")
   SQLKey = "SELECT * FROM tblCCAnswerKey WHERE chapter = " & request.querystring("chapter")
   rsKey.Open SQLKey, DataConn	
	  
'***********************************************************************
%>
<!DOCTYPE html>
<html>
<head>
 <!-- #Include File = "../includes/incHead.asp" -->
</head>

<body>
<div id="wrapper">
 <div id="header">
  <!-- #Include File = "../includes/incHeaderLevel2.asp" -->
 </div>

 <div id="content">
  <h2>Comprehension Check Report</h2>
  <h4>Chapter <%=request.querystring("chapter")%></h4>
   Student: <%=request.querystring("webID")%><br />
   Submission Date: <%if rs("posted") <> "" then response.write(FormatDateTime(rs("posted"), vblongdate)) end if%>
	<br />
	Grade: <%=request.querystring("grade")%> / 20
	<br />
	<%
	  if Not rs.eof then%>
		  <table class="tableformat">
		   
		   <tr>
		    <th>Question</th>
		    <th>Answer</th>
		    <th>Key</th>
		   </tr>
		   <%for j = 1 to 20%>
		   <tr>
		    <th><%=j%></th>
		    <td <%if LCASE(rs("q"&j)) <> lcase(rsKey("q"&j)) then response.write("class='tdlate'") end if%>><%=rs("q"&j)%></td>
		    <td><%=rsKey("q"&j)%></td>
		   </tr>
		   <%next%>  
		  </table>
    <%end if
      rs.Close
      rsKey.Close
      Set rs = Nothing
      Set rsKey = Nothing    
    %>

 </div>
<!-- #Include File = "../includes/incFoot.asp" --></div>
</body>
</html>




