<!--#include file="layouts/header.asp"-->

<h1>Comment</h1>
<%
  username = "armando"
  email = "armando@mail.com"
  
  ' to print variable, you can use 
  ' < % Response.write variableName % >
  ' or
  ' < %= variableName % >
%>

<% Response.write username %>
<br/>
<%= username %>

<!--#include file="layouts/footer.asp"-->
