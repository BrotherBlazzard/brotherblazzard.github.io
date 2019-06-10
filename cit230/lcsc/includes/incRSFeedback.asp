

<%
'**************** Recordset Creation and Population ********************

    Set rs = Server.CreateObject("ADODB.RecordSet")
    SQL = "SELECT * From feedback WHERE ID = " & Session("ID")
	rs.Open SQL, DataConn
	  
'***********************************************************************
%>