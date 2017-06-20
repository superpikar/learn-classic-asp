<!--#include file="layouts/header.asp"-->

<h1>Conditional</h1>
<%
Dim temperature
Dim message
temperature = 25
If number <15 Then
  message = "<p>Snow will come.</p>"
ElseIf number >=15 AND number < 25 Then
  message = "<p>Nice wather to have a picnic</p>"
ElseIf number >=25 AND number < 35 Then
  message = "<p>Summer is coming</p>"
Else
  message "<p>Woah! It's very hot!</p>"
End If

Response.Write "temperature "&temperature
Response.Write message
%>

<!--#include file="layouts/footer.asp"-->
