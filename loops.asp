<!--#include file="layouts/header.asp"-->
<h1>Loops</h1>
<%
  Dim index

  For index=0 to 5
    Response.write "<p>This is my first text<p>"
  Next
%>
<hr/>
<%
  Dim index2

  For index2=0 to 5 step 2
    Response.write "<p>This is my second text<p>"
  Next
%>
<hr/>
<%
  Dim index3

  For index3=0 to 5
    Response.write "<p>Current text index is "&index3&"<p>"
  Next
%>
<!--#include file="layouts/footer.asp"-->

