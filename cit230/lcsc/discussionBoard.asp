<!-- #Include File = "includes/incDataMDB.asp" -->
<!DOCTYPE html>
<html>
<head>
 <!-- #Include File = "includes/incHead.asp" -->
 <script src="../../scripts/jquery4.js" type="text/javascript"></script> 
 <script src="../../scripts/jquery.ui.js" type="text/javascript"></script> 
 <script src="../../scripts/jquery.collapser.js" type="text/javascript"></script>
 <script src="../../scripts/collapser.js" type="text/javascript"></script> 
</head>

<body>
<div id="wrapper">
 <div id="header">
  <!-- #Include File = "includes/incHeaderLevel2.asp" -->
 </div>

 <div id="content">
  <h2>Discussion Board Activity</h2>
  <div class="details1">
	<%     

	'********************************
    Set rsD = Server.CreateObject("ADODB.RecordSet")
    SQLD = "SELECT title, description, lessonID, ID FROM tblDiscussions"
    rsD.Open SQLD, DataConn	  
	 do while not rsD.eof%>
     <h4><%=rsD("title")%></h4>
   	 <div class="details">
   	  <div class="yellowbox"><%=rsD("description")%></div>
   	  <div><input type="button" onclick="javascript:location.href='deliverables/discussions.asp?id=<%=rsD("lessonID")%>' " value="Go To This Board" /></div>
   	  <% 
   	     Set rs = Server.CreateObject("ADODB.RecordSet")
		 SQL = "SELECT tblPosts.*, tblStudents.firstName, tblStudents.lastName FROM tblPosts LEFT OUTER JOIN tblStudents ON (tblStudents.webID = tblPosts.WebID) WHERE discussionID = " & rsD("lessonID") & " ORDER BY tblPosts.posted DESC"
		 rs.Open SQL, DataConn	 
		 if not rs.eof then 
   	     %> 
           <% do while not rs.eof %>   
		         <div class="bluebox">
		          <div style="border-bottom:1px solid #bbb;font-weight:bold;">
		           <%=rs("posted")%>: <%response.write(rs("firstName") & " " & rs("lastName"))%> - <%=rs("title")%>
		          </div>
		           <%=rs("post")%><br />
	   	        <% Set rsR = Server.CreateObject("ADODB.RecordSet")
   	      		 SQLR = "SELECT COUNT(reply) AS NumReplies FROM tblReplies WHERE postID = " & rs("ID") 
		    	       rsR.Open SQLR, DataConn	
		    	     %>   
           		 <div style="border-top:1px solid #bbb;font-weight:bold;">Number of Replies: <%=rsR("NumReplies")%></div>
           		 <% rsR.Close %>  
		         </div>  
			  <% 	rs.movenext
			     loop
			  end if
			  rs.Close
		  %>
		 </div>
    <% rsD.movenext
    loop
    %>
    </div>
 </div>
<!-- #Include File = "includes/incFoot.asp" -->
</div>

</body>
</html>




