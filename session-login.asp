<% Option Explicit %>

<%
  Dim username, password, submit
  Dim message

  message = ""
  username = Request.Form("username")
  password = Request.Form("password")
  submit = Request.Form("submit")

  If submit = "Logout" Then
    ' remove session
    Session("currentUser") = ""
  ElseIf submit = "Login" Then
    If username = "" Then
      message = message & "username is required <br/>"
    End If
    If password = "" Then
      message = message & "password is required <br/>"
    End If

    ' username and password = "user"
    If username <> "user" and password <> "user" Then
      message = message & "username or password is wrong"
    Else
      Session("currentUser") = username
    End If
  End If
%>

<!--#include file="layouts/header.asp"-->

  <h1>Login</h1>

  <% If Session ("currentUser") = "" Then  %>
    <form method="POST" action="session-login.asp">
      Username<br/>
      <input type="text" name="username" placeholder="username"/> <br/>
      Password<br/>
      <input type="password" name="password" placeholder="password"/> <br/>
      <input type="submit" name="submit" value="Login" />
      <br/>
      <i><%= message %></i>
    </form>
  <% ElseIf Session("currentUser") <> "" Then %>
    <form method="POST" action="session-login.asp">
      Hello <%= Session("currentUser") %>
      <input type="submit" name="submit" value="Logout" />
    </form>
  <% End If %>

  

<!--#include file="layouts/footer.asp"-->

