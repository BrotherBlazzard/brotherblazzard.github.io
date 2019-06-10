<!-- #Include File = "../includes/incDataMDB.asp" -->
<%
'**************** Recordset Creation and Population ********************
    Set rs = Server.CreateObject("ADODB.RecordSet")
    SQL = "SELECT tblExamSubmissions.*, tblStudents.FirstName, tblStudents.LastName FROM tblExamSubmissions INNER JOIN tblStudents ON (tblStudents.webID = tblExamSubmissions.webID) WHERE tblStudents.webID = " & request.querystring("webID")
    rs.Open SQL, DataConn	  

    Set rsAK = Server.CreateObject("ADODB.RecordSet")
    SQLAK = "SELECT * FROM tblExamSubmissions WHERE webID = 3945"
    rsAK.Open SQLAK, DataConn	  
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
  <h2>Final Exam Results</h2>
<% if not rs.eof then %>
    <table class="tableformat">
    <tr>
     <th>Name</th>
     <th>Date Taken</th>
     <th>Duration</th>
     <th>Exam Score</th>
     <th>Percentage</th>
    </tr>

 <% 
		correct = 0
   	for i = 1 to 75
    		if rsAK("q"&i) = rs("q"&i) then
    			correct = correct + 1
    		end if
      next
      percentage = correct/75 * 100
 %>   
    
    <tr>
     <td class="left"><%=rs("lastName")%>, <%=rs("firstName")%></td>
     <td><%=rs("posted")%></td>
     <td><%=datediff("n", rs("startTime"), rs("endTime"))%> minutes</td>
     <td><%=correct%> / 75</td>
     <td <% if percentage < 80 then response.write("style='background-color:red;color:white;'") %>><%=formatnumber(percentage, 1)%></td>
    </tr>
    </table>
    
    <!-- <table class="tableformat">
     <tr>
      <th>Question</th>
      <th>Correct</th>
      <th>Submitted</th>
     </tr>
     <% for i = 1 to 75 %>
     <tr>
       <td><%=i%></td>
       <td><%=rsAK("q"&i)%></td>
       <td><%=rs("q"&i)%></td>
     </tr>        
     <% next %>
    </table> -->
    
<% end if %>   
 
	 

 </div>
<!-- #Include File = "../includes/incFoot.asp" --></div>
</body>
</html>