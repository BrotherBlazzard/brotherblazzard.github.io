<%
'**************** Recordset Creation and Population ********************

    Set rsValidate = Server.CreateObject("ADODB.RecordSet")
    SQL = "SELECT * From students WHERE ID = " & Request.Form("ID")
	rsValidate.Open SQL, DataConn
	  
'***********************************************************************
%>