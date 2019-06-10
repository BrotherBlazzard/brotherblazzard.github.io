<%
'**************** Recordset Creation and Population ********************

    Set rs = Server.CreateObject("ADODB.RecordSet")
    SQL = "SELECT firstName, lastName From tblStudents ORDER BY lastName Asc"
	rs.Open SQL, DataConn
	  
'***********************************************************************
%>