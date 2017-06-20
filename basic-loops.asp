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
<hr/>
<%
  Dim index4
  index4 = 0
  Do Until index4 = 6
    Response.write "<p>Current text index is "&index4&"<p>"
    index4 = index4 + 1
  Loop
%>
<hr/>
<%
  Dim row, col
  For row=0 to 1
    For col=0 to 1
      Response.write "<p>Table row:"&row&" col:"&col&"<p>"
    Next
  Next
%>

<!--#include file="layouts/footer.asp"-->

