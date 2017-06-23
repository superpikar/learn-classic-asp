<!--#include file="./models/post.asp" -->
<%
  ' --------------------------------------------------------
  '                     VBSCRIPT PART 
  ' --------------------------------------------------------

  ' ---------------- COMMON FUNCTION -----------------------
  Function isNull(text)
    isNull = (Len(text) = 0)
  End Function

  ' ------------------- FORM VALIDATION ------------------
  Dim title, content, category, status, submit
  Dim titleMessage, contentMessage, categoryMessage, statusMessage, submitMessage
  title = Request.Form("title")
  content = Request.Form("content")
  status = Request.Form("status")
  submit = Request.Form("submit")

  If isNull(title) And Not isNull(submit) Then
    titleMessage = "Please write down the title"
  End If

  If isNull(content) And Not isNull(submit) Then
    contentMessage = "Please write down the content"
  End If

  ' ------------------ DATABASE PREPARATION -------------------
  ' declare the variables
  Dim connection, recordset, sql
  ' to setup connectionString follow this tutorial https://stackoverflow.com/a/5678835/1843755
  ' create an instance of ADO connection and recordset objects
  Set connection = Server.CreateObject("ADODB.Connection")
  connection.ConnectionString = Application("connectionString")

  ' ------------------ WRITE TO DATABASE -------------------
  Dim newPost
  If title <> "" And content <> "" And status <> "" And submit <> "" Then
    connection.Open()
    Set recordset = connection.Execute("INSERT INTO tb_posts (title,content,status,deleted) VALUES ('"& title &"','"& content &"','"& status &"','N');")
    connection.Close()
    submitMessage = "success submit new post"
  End If

  ' --------------------- READ DATABASE --------------------x
  Dim posts
  Set posts = Server.CreateObject("Scripting.Dictionary")
  
  ' open connection in the database
  connection.Open()
  Dim seq
  Dim myPost
  Set recordset = connection.Execute("select * from tb_posts")
  seq = 0
  Do While Not recordset.EOF
    seq = seq+1
    set myPost = New Post
    myPost.Title = recordset.Fields("title")
    myPost.Content = recordset.Fields("content")
    myPost.Status = recordset.Fields("status")
    posts.add seq, myPost
    recordset.MoveNext
  Loop 
  connection.Close()
%>

<%
  ' --------------------------------------------------------
  '                     HTML PART 
  ' --------------------------------------------------------
%>
<!--#include file="layouts/header.asp"-->
  <style>
    form{
      width:50%;
    }
  </style>

  <h1 class="uk-title">Database Write</h1>

  <h3 class="uk-title">Write New Post</h3>
  <form class="uk-form-stacked" method="POST" action="database-write.asp">
    <div>
      <label class="uk-form-label">Name</label>
      <div class="uk-form-controls">
        <input class="uk-input" type="text" name="title" />
        <i class="uk-text-danger"><%= titleMessage %></i>
      </div>
    </div>
    <div>
      <label class="uk-form-label">Content</label>
      <div class="uk-form-controls">
        <textarea class="uk-textarea" type="text" name="content"></textarea>
        <i class="uk-text-danger"><%= contentMessage %></i>
      </div>
    </div>
    <div>
      <label class="uk-form-label">Status</label>
      <div class="uk-form-controls">
        <label><input class="uk-radio" type="radio" name="status" value="published" checked> Published</label><br>
        <label><input class="uk-radio" type="radio" name="status" value="draft"> Draft</label><br>
      </div>
    </div>
    <div class="uk-margin">
      <input type="submit" name="submit" class="uk-button uk-button-primary" value="Submit" >
        <i class="uk-text-success"><%= submitMessage %></i>
    </div>
  </form>

  <h3 class="uk-title">List of Posts</h3>
  <table class="uk-table uk-table-divider">
    <thead>
      <tr>
        <th>Title</th>
        <th>Content</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <% For Each item in posts %> 
      <tr>
        <td><%= posts(item).Title %></td>
        <td><%= posts(item).Content %></td>
        <td><%= posts(item).Status %></td>
      </tr>
      <% Next %>
    </tbody>
  </table>
<!--#include file="layouts/footer.asp"-->
