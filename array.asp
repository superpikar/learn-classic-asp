<!--#include file="layouts/header.asp"-->

<h1>Array</h1>
<%
  Dim names, namesSplit
  names = "Kim,Mook,Jun,Sung"
  namesSplit = Split(names,",")

  Response.write "<p>"&namesSplit(0)&"</p>"
  Response.write "<p>"&namesSplit(1)&"</p>"
  Response.write "<p>"&namesSplit(2)&"</p>"
  Response.write "<p>"&namesSplit(3)&"</p>"
%>
<!--#include file="layouts/footer.asp"-->
