<h1>Transfer page</h1>
<% 
  ' use Server.Execute when we need to transfer to a file and execute its content
  ' without leaving the server request queue
  ' it means the URL in the browser will not changed to the executed URL
  ' doesnt works accross server
  Server.Execute("basic-conditional.asp") 
%> 
