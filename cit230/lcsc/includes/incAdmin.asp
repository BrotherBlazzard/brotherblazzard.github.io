<%
if Session("admin") <> "true" then
	response.redirect("../Default.asp")
end if
%>