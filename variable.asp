<!--#include file="layouts/header.asp"-->

<h1>Comment</h1>
<%
  ' VBScript doesn't require variable declaration.
  ' but it's good practice to declare variable before using it. 
  ' It will make easier for the future when you inspect your code
  ' you can use Dim, Public, or Private
  ' You can use the VBScript Option Explicit statement < % Option Explicit % > in an .asp file to require variables to be explicitly declared.
  ' The Option Explicit statement must be placed before any HTML text or script 

  Dim username
  Public email
  Private password
  
  username = "armando"
  email = "armando@mail.com"

  Response.write username
  Response.write "<br/>"
  Response.write email
%>

<!--#include file="layouts/footer.asp"-->
