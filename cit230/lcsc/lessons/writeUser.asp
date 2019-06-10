<!-- #Include File = "../includes/incDataMDB.asp" -->
<%
  Set rs = Server.CreateObject("ADODB.RecordSet")
  SQL = "SELECT codecademyUserName From tblStudents WHERE webID = " & request.form("id")
 
  rs.Cursorlocation = 2
  rs.Cursortype = 2
  rs.LockType = 3
  rs.Open SQL, DataConn	
  if not rs.eof then
   rs.fields("codecademyUserName") = request.form("user")
   rs.Update
   session("errors") = "Recorded"
  else
   session("errors") = "User not found"
  end if
  rs.Close
  Set rs = nothing 
  DataConn.Close
  Set DataConn = nothing
  
  Response.Redirect("01_intro.asp#codecadbookmark")
%>
