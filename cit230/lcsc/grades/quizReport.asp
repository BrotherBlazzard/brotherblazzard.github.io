<!-- #Include File = "../includes/incDataMDB.asp" -->
<%
if request.querystring("webID") = "" then
   response.redirect("111GradeRequest.asp")
end if
'**************** Recordset Creation and Population ********************
   
   Set rs = Server.CreateObject("ADODB.RecordSet")
   SQL = "SELECT * FROM tblQuizSubmissions WHERE webID = " & request.querystring("webID") & " AND lesson = '" & request.querystring("lesson") & "'"
   rs.Open SQL, DataConn	

   Set rsKey = Server.CreateObject("ADODB.RecordSet")
   SQLKey = "SELECT * FROM tblQuizAnswerKeys WHERE lesson = '" & request.querystring("lesson") & "'"
   rsKey.Open SQLKey, DataConn	
   
   session("quiz") = request.querystring("lesson") 'this is for the quiz copy inset (iframe link)
	  
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
  <h2>Quiz <%=request.querystring("lesson")%> Report</h2>
<% if not rs.eof then %>
    <span class="inlinestrong">Submission Date:</span> <%if rs("posted") <> "" then response.write(FormatDateTime(rs("posted"), vblongdate)) end if%>
	<br />
	<span class="inlinestrong">Duration:</span> <%Response.Write(datediff("n",rs("startTime"),rs("endTime")) & "/"&rsKey("noq")&" minutes. <span class='date'>(" & rs("startTime") & " to " & rs("endTime") & ")</span>")%>
	
	<br />
	<span class="inlinestrong">Grade:</span> <%=request.querystring("grade")%> out of <%=rsKey("noq")%> possible.
	<br />
	<span class="inlinestrong">Copy of Quiz Questions:</span> <a href="quizFolder/citpt111quiz<%=request.querystring("lesson")%>copy1.png">First Set of Questions</a>, <a href="quizFolder/citpt111quiz<%=request.querystring("lesson")%>copy2.png">Second Set of Questions (if applicable)</a><br />
		  <table class="tableformat">
		   
		   <tr>
		    <th>Question</th>
		    <th>!</th>
		    <th>Your Answer</th>
		    <th>Answer Key</th>
		   </tr>
		   <%for j = 1 to rsKey("noq")%>
		   <tr>
		    <th><%=j%></th>
			<%if rs("x"&j) then%>
			  <td class="tdlate">&#10008;</td>
			<%else%>
			  <td>&nbsp;</td>  
			<%end if%>  
		    <%if instr(rs("q"&j),"<") <> 0 then
		     	output = replace(rs("q"&j),"<","")
		     	output = replace(output,">","")
		     	output = trim(output)
		      else
		        output = rs("q"&j)
		      end if
		    %>
			<td><%response.write(output)%></td>
		    <td><%=rsKey("q"&j)%></td>
		   </tr>
		   <%next%>  
		   <tr>
		    <th colspan="4"><input type="button" value="Return" onclick="history.go(-1)" />
</th>
		   </tr>
		  </table>
    <%
      else
         response.Write("No record exits for these parameters.")  
      end if
      rs.Close
      rsKey.Close
      Set rs = Nothing
      Set rsKey = Nothing    
    %>

 </div>
<!-- #Include File = "../includes/incFoot.asp" --></div>
</body>
</html>




