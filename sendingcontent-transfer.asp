<h1>Transfer page</h1>
<% 
  ' use Server.Transfer when we need to transfer from one .asp to another .asp
  ' without leaving the server request queue
  ' it means the URL in the browser will not changed to the transfered URL
  ' works accross server
  Server.Transfer("basic-conditional.asp") 
%> 
