<% 
to2 = request.form("to")
from = request.form("from")
subject = request.form("subject")  
confirmation = request.form("confirmation") 

if request.servervariables("REQUEST_METHOD") = "POST" then
    set mailer = createobject("cdo.message")
    mailer.to = to2
    mailer.from = from
    mailer.subject = subject
    
    for each val in request.form
       message = message + request.form(val) + "<br/>"
    next
    
	 mailer.htmlbody = message
	 
	 mailer.send 
	 response.redirect(confirmation)
end if
%>