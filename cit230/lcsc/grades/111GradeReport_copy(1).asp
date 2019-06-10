<!-- #Include File = "../includes/incDataMDB.asp" -->
<%
'**************** Recordset Creation and Population ********************

    Set rs = Server.CreateObject("ADODB.RecordSet")
    SQL = "SELECT * From tblStudents WHERE webID = " & Session("webID")
    rs.Open SQL, DataConn
     
    Set rsKey = Server.CreateObject("ADODB.RecordSet")
    SQLKEY = "SELECT * From tblStudents WHERE webID = 3945"
    rsKey.Open SQLKEY, DataConn

   Set rsT = Server.CreateObject("ADODB.RecordSet")
   SQLT = "SELECT * FROM tblAttendance WHERE webID = " & Session("webID")
   rsT.Open SQLT, DataConn	  

   Set rsAttKey = Server.CreateObject("ADODB.RecordSet")
   SQLAttKey = "SELECT * FROM tblAttendance WHERE webID = 7777"
   rsAttKey.Open SQLAttKey, DataConn	  

'*****************************************************************
'attendance score ************************************************
'       attPossible = 0
'       attPoints = 0
'       attPercent = 0
'       for i = 1 to 12
'         if not isnull(rsKey("att"&i)) and rsKey("att"&i) <> "" then
'           attPossible = attPossible + rsKey("att"&i)
'           if rs("att"&i) <> "" then
'		   	attPoints = attPoints + rs("att"&i)
'		   end if
'        end if
'       next
'       if attPossible > 0 then
'       	   attPercent = attPoints / attPossible * 10
'       end if
       
'discussion grade calculation ***********************************
		dpossible = 0
		dpoints = 0
		dpercent = 0
		for i = 1 to 11
		 if not isnull(rsKey("d"&i)) and rsKey("d"&i) <> "" then
			dpossible = dpossible + rsKey("d"&i)
			dpoints = dpoints + rs("d"&i)
		 end if
		next
		if dpossible > 0 then
			dpercent = dpoints / dpossible * 20
		end if

		
		'assignment grade calculation
		apossible = 0
		apoints = 0
		apercent = 0
		for i = 1 to 12
		 if not isnull(rsKey("a"&i)) and rsKey("a"&i) <> "" then
			apossible = apossible + rsKey("a"&i)
			if rs("a"&i) <> "" then
			 apoints = apoints + rs("a"&i)
			end if 
		 end if
		next
		if apossible > 0 then
			apercent = apoints / apossible * 40
		end if


		'quiz grade calculation
		Qpossible = 0
		Qpoints = 0
		Qpercent = 0
		for i = 1 to 11
		 if not isnull(rsKey("q"&i))  and rsKey("q"&i) <> "" then
			Qpossible = Qpossible + rsKey("q"&i)
			Qpoints = Qpoints + rs("q"&i)
		 end if
		next
		if Qpossible > 0 then
			Qpercent = Qpoints / Qpossible * 20
		end if

'************* Calcualtion of Letter Grade *************************
Project = 0
if isNull(rs("finalproject")) or rs("finalproject") = "" then
 TotalPossible = 80
else
  Project = rs("finalproject")/100 * 20
  TotalPossible = 100   
end if 
'*******************************************************************

'TotalPoints = attpercent + dpercent + apercent + Qpercent + Project
TotalPoints = dpercent + apercent + Qpercent + Project
TotalPercent = TotalPoints/TotalPossible * 100
If TotalPercent > 92.99 Then
	letterGrade = "A"
ElseIf TotalPercent > 89.99 Then
	letterGrade = "A-"
ElseIf TotalPercent > 86.99 Then
	letterGrade = "B+"
ElseIf TotalPercent > 82.99 Then
	letterGrade = "B"
ElseIf TotalPercent > 79.99 Then
	letterGrade = "B-"
ElseIf TotalPercent > 76.99 Then
	letterGrade = "C+"
ElseIf TotalPercent > 72.99 Then
	letterGrade = "C"
ElseIf TotalPercent > 69.99 Then
	letterGrade = "C-"
ElseIf TotalPercent > 66.99 Then
	letterGrade = "D+"
ElseIf TotalPercent > 59.99 Then
	letterGrade = "D"
Else
	letterGrade = "F"
End If
%>


<!DOCTYPE html>
<html lang="en">
<head>
 <!-- #Include File = "../includes/incHead.asp" -->
 <script src="../../scripts/
jquery.js" type="text/javascript"></script> 
 <script src="../../scripts/
jquery.ui.js" type="text/javascript"></script> 
 <script src="../../scripts/
jquery.collapser.js" type="text/javascript"></script>
 <script src="../../scripts/
collapser.js" type="text/javascript"></script>
</head>

<body>
<div id="wrapper">
 <div id="header">
  <!-- #Include File = "../includes/incHeaderLevel2.asp" -->
 </div>

 <div id="content">
  <h2>CITPT <%=rs("course")%> Grade Report</h2>
  <div id="leftcol">
	 <div class="details1" style="text-align:center;margin:0px auto;">
	  <h3><%=rs("firstName")%>&nbsp;<%Response.Write(rs("lastName"))%></h3>
	  
	  <div class="bluebox">
	    <h3><%=letterGrade%> &nbsp;&nbsp; <%=formatnumber(TotalPercent,2)%>%</h3>
	    <h5>Class Average: &nbsp;&nbsp; <%=formatnumber(rsKey("classAverage"),1)%>%</h5>
	  </div>
	  
	  <br />
      <div class="smallleftcol">
       <!--attendance 10%:<br /> -->
	    assignment discussions 20%:<br />
       assignments 40%:<br />
       quizzes 20%:<br />
	    final project 20%:<br />
      </div>
      <div class="smallrightcol">
<!--       <%if attPercent > 0 then response.write(formatnumber(attPercent,1)) end if%><br />
-->       <%if dPercent > 0 then response.write(formatnumber(dPercent,1)) end if%><br />
       <%if aPercent > 0 then response.write(FormatNumber(aPercent,1)) end if%><br />
       <%if qPercent > 0 then response.write(FormatNumber(qPercent,1)) end if%><br />
       <%if Project > 0 then response.write(FormatNumber(Project,1)) end if%><br />
	   </div>
	   
	   <% if rs("course") = "311" then%>
	    <div class="bluebox">
	       CITPT 311 enrolled students must also<br /> complete a final, comprehensive exam in order<br /> to get credit for this class.<br /> The minimum passing percentage is @ 80%.
	       <p><a href="examReport.asp?webID=<%=session("webID")%>">Final Exam Results</a></p>
	    </div>
	   <% end if %>
	</div>
	<br /><br />
	
<!--	<h4>+ Attendance</h4>
     <div class="details">
	  <div class="smallrightcol">
    
    	<table class="tableformat">
    	<tr>
    	 <th>Session</th>
    	 <th>Keyword</th>
    	 <th>Submission</th>
    	 <th>Date</th>
    	 <th>Score</th>
    	</tr>  
    	<%for i = 1 to 12%> 
    	 <tr>
    	  <td><%=i%></td>
    	  <td>
    	   <%
    	     do while not rsAttKey.eof
    	       if cstr(i) = rsAttKey("lesson") then
    	        'response.write(rsAttKey("keyword"))
    	        response.write("&#10003;")
    	       end if
    	     rsAttKey.movenext
    	     loop 
    	     rsAttKey.movefirst
    	   %>
    	  </td>
    	  <td>
    	   <%
    	     if not rsT.eof then
    	     do while not rsT.eof
    	       if cstr(i) = rsT("lesson") then
    	        response.write(rsT("keyword"))
    	       end if
    	     rsT.movenext
    	     loop 
    	     rsT.movefirst
    	     end if
    	   %>
    	  </td>
    	  <td>
    	   <%
    	     if not rsT.eof then
    	     do while not rsT.eof
    	       if cstr(i) = rsT("lesson") then
    	        response.write(FormatDateTime(rsT("submissionDate"),2))
    	       end if
    	     rsT.movenext
    	     loop 
    	     rsT.movefirst
    	     end if
    	   %>
    	  </td>
    	  <td><%=rs("att"&i)%></td>
	     </tr>
	    <%next%>
	    </table>

      </div>
	 </div>
-->	 
	<h4>+ Discussions</h4>
     <div class="details">
	  <div class="smallrightcol">
	  <%
     	For i = 1 to 11
     	 if rs("d"&i) <> "" then
     		Response.Write("D"&i&": "&rs("d"&i)&"/3<br />")
     	 end if
     	Next
       '**************** Recordset Creation and Population ********************
	   Set rsP = Server.CreateObject("ADODB.RecordSet")
	   Set rsR = Server.CreateObject("ADODB.RecordSet")
	   SQLP = "SELECT * FROM tblPosts WHERE webID = " & session("webID") & " ORDER BY discussionID DESC"
	   SQLR = "SELECT * FROM tblReplies WHERE webID = " & session("webID") & " ORDER BY discussionID DESC"
	   rsP.Open SQLP, DataConn	  
	   rsR.Open SQLR, DataConn	
	   '***********************************************************************
		%>
		<br />
		<h2>Original Posts</h2>
		<%
		If NOT rsP.EOF Then
		 Do While NOT rsP.EOF%>
		   <div class="post"><span style="font-weight:bold">Lesson <%=rsP("discussionID")%>: <%=rsP("posted")%></span><br />
		   <%=rsP("title")%> ||| <%=rsP("post")%></div>
	   <%
		 rsP.MoveNext
		 Loop
		End If
		%>
		<br /><br />
		 <h2>Replies</h2>
		&nbsp;<%
		If NOT rsR.EOF Then
		 Do While NOT rsR.EOF%><div class="replies"><strong><%=rsR("discussionID")%></strong> | <%=rsR("postID")%> | <%		=rsR("reply")%> | <%=rsR("posted")%></div>
		<%
		 rsR.MoveNext
		 Loop
		End If
		%>
      </div>
	 </div>

	
	 
	<h4>+ Assignments</h4>
	 <div class="details">
	  <div class="smallrightcol">
	  <%
	    For i = 1 to 12
      	 If rs("a"&i) <> ""  Then
      	   if rs("a"&i) <> "0" and i = 6 or i = 3 then
	     	  		Response.Write("Lesson "&i&": "&rs("a"&i)&"/"&rsKey("a"&i)&" | <a href='solutions/lesson"&i&".txt'>Sample Solution</a><br />")
	     	  	elseif rs("a"&i) <> "0" and i = 7 then
	     	  		Response.Write("Lesson "&i&": "&rs("a"&i)&"/"&rsKey("a"&i)&" | <a href='solutions/lesson"&i&".html'>Sample Solution</a><br />")	     	  
	     	  	else
	     	  		Response.Write("Lesson "&i&": "&rs("a"&i)&"/"&rsKey("a"&i)&"<br />")	     	  		      	   	
      	   end if
     	 	 End If
        Next
      %>
	  </div>
	 </div>
	 
	 
	<h4>+ Quizzes</h4>
	 <div class="details">
	  <div class="smallrightcol">
	  <%
     	For i = 1 to 11
     	 If rs("q"&i) <> ""  Then
 Response.Write("Quiz " & i & ": <a href='quizReport.asp?lesson=" & i & "&webID=" & Session("webID") & "&grade=" & rs("q"&i) & "'>" & rs("q"&i)  & "/" &rsKey("q"&i) & "</a><br />")
		 End If
    	Next
    	%>
	  </div>
	 </div>
	 
    </div>      
 </div> 
<!-- #Include File = "../includes/incFoot.asp" --></div>
</body>
</html>
