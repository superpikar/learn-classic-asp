<h1>Redirect page</h1>
<% 
  ' the redirect have to be placed before any text of <html> tags
  ' redirect sends a new http request for this URL
  ' it means the URL in the browser will changed to the redirected URL
  Response.Redirect "basic-conditional.asp"  
%> 
