<span id="date"><%=formatdatetime(now(),vblongdate)%></span>
<h1>CITPT 111/311: HTML &amp; CSS</h1>

 <!-- #Include File = "../includes/incDataMDB.asp" -->
 <%
  Set rsAnn = Server.CreateObject("ADODB.RecordSet")
  SQL = "SELECT * From tblAnnoucements"
  rsAnn.Open SQL, DataConn	
  if Date() < rsAnn("endDate") and rsAnn("annoucement") <> "" then
 %>
   <div id="annoucements">   
	 <%response.write(rsAnn("annoucement"))%>
   </div>	  
 <%
  end if
  rsAnn.Close
  Set rsAnn = nothing 
  DataConn.Close
  Set DataConn = nothing
 %>


<!-- #Include File = "incMainMenu.asp" -->
