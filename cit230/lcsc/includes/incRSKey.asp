<%
'**************** Key Record Recordset Creation and Population ********************

    Set rsKey = Server.CreateObject("ADODB.RecordSet")
    SQLKey = "SELECT * From students WHERE ID = 7777"
	rsKey.Open SQLKey, DataConn
	  
'***********************************************************************
%>