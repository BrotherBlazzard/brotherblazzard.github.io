<%
'**************** Recordset Creation and Population ********************

    Set rs = Server.CreateObject("ADODB.RecordSet")
    SQL = "SELECT * FROM students Where ID = " & Session("ID")
	rs.Open SQL, DataConn
	  
'***********************************************************************
%>