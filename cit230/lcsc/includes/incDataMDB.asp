<%
'**************** Database Connection **********************************
  Set DataConn = Server.CreateObject("ADODB.Connection")
  DataConn.Provider="Microsoft.Jet.OLEDB.4.0"
  DataConn.Open "d:/inetpub/wwwroot/citpt111/_private/citpt111.mdb"  
'***********************************************************************
%>