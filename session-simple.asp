<% Option Explicit %>

<%
  Dim submit
  
  submit = Request.Form("submit")

  If submit = "Logout" Then
    ' remove session
    Session("currentUser") = ""
  ElseIf submit = "Login" Then
    ' set session
    Session("currentUser") = "Park Kwang Hoo!"
  End If
%>

<!--#include file="layouts/header.asp"-->

  <h1>Session</h1>

  <% If Session ("currentUser") = "" Then  %>
    You are not logged in yet.
    <form method="POST" action="session-simple.asp">
      <input type="submit" name="submit" value="Login" />
    </form>
  <% ElseIf Session("currentUser") <> "" Then %>
    Hello <%= Session("currentUser") %>
    <form method="POST" action="session-simple.asp">
      <input type="submit" name="submit" value="Logout" />
    </form>
  <% End If %>

  

<!--#include file="layouts/footer.asp"-->

