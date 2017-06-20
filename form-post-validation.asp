<%
  ' form validation here
  Dim title, content, category, status
  Dim titleMessage, contentMessage, categoryMessage, statusMessage
  title = Request.Form("title")
  content = Request.Form("content")
  category = Request.Form("category")
  status = Request.Form("status")
  submit = Request.Form("submit")

  If isNull(title) And Not isNull(submit) Then
    titleMessage = "Please write down the title"
  End If

  If isNull(content) And Not isNull(submit) Then
    contentMessage = "Please write down the content"
  End If

  Function isNull(text)
    isNull = (Len(text) = 0)
  End Function
%>

<!--#include file="layouts/header.asp"-->

  <h1>Form POST</h1> 

  <form method="POST" action="form-post-validation.asp">
    Title<br/>
    <input type="text" name="title" placeholder="title"/> 
    <i><%= titleMessage %></i>
    <br/>
    Content<br/>
    <textarea name="content" placeholder="content"></textarea> 
    <i><%= contentMessage %></i>
    <br/>
    Category : 
    <input type="checkbox" name="category" value="news"/> News 
    <input type="checkbox" name="category" value="event" /> Event <br/>
    Status : 
    <input type="radio" name="status" value="published"/> Published 
    <input type="radio" name="status" value="draft" /> Draft <br/><br/>
    <input type="submit" name="submit" value="Submit" />
  </form>

  <hr/>

  <h1>Form POST Response</h1> 

  Title : <%= title %> <br/>
  Content : <%= content %> <br/>
  Category : <%= category %> <br/>  
  Status : <%= status %> <br/>

<!--#include file="layouts/footer.asp"-->

