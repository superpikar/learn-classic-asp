<!--#include file="./models/post.asp" -->
<%
  ' --------------------------------------------------------
  '                     VBSCRIPT PART 
  ' --------------------------------------------------------

  Dim currentURL
  currentURL = Request.ServerVariables("URL")

  ' ------------------- FORM VALIDATION ------------------
  Dim seq, title, content, status, submit, statusOptions, statusOption
  Dim titleMessage, contentMessage, statusMessage, submitMessage
  seq = Request.QueryString("seq")
  title = Request.Form("title")
  content = Request.Form("content")
  status = Request.Form("status")
  submit = Request.Form("submit")
  statusOptions = Array("published", "draft")
  ' ------------------ DATABASE PREPARATION -------------------
  ' declare the variables
  Dim connection, recordsetList, recordsetSingle
  ' to setup connectionString follow this tutorial https://stackoverflow.com/a/5678835/1843755
  ' create an instance of ADO connection and recordsetList objects
  Set connection = Server.CreateObject("ADODB.Connection")
  connection.ConnectionString = Application("connectionString")

  ' ------------------ UPDATE OR READ TO DATABASE -------------------
  Dim selectedPost
  If NOT IsEmpty(submit) Then
    ' update or delete post
    connection.Open()
    If submit = "Update" Then
      
      If title="" Then
        titleMessage = "Please write down the title"
      End If

      If content="" Then
        contentMessage = "Please write down the content"
      End If

      Set selectedPost = new Post
      selectedPost.Seq = seq
      selectedPost.Title = title
      selectedPost.Content = content
      selectedPost.Status = status

      If title <> "" And content <> "" And status <> "" Then
        seq = Request.Form("seq")
        Set recordsetList = connection.Execute("UPDATE tb_posts SET title='"& title &"', content='"& content &"', status='"& status &"' WHERE seq = '"& seq &"';")
        submitMessage = "update post success"
      End If
    ElseIf submit = "Delete" Then
      seq = Request.Form("seq")
      Set recordsetList = connection.Execute("UPDATE tb_posts SET deleted='Y' WHERE seq = '"& seq &"';")
      submitMessage = "delete post success"
    End If
    connection.Close()
  ElseIf NOT IsEmpty(seq) Then
    ' select post
    connection.Open()
    Set recordsetSingle = connection.Execute("SELECT * FROM tb_posts WHERE seq="&seq)
    Set selectedPost = new Post
    selectedPost.Seq = recordsetSingle.Fields("seq")
    selectedPost.Title = recordsetSingle.Fields("title")
    selectedPost.Content = recordsetSingle.Fields("content")
    selectedPost.Status = recordsetSingle.Fields("status")
    connection.Close()
  End If

  ' --------------------- READ DATABASE --------------------x
  Dim posts
  Set posts = Server.CreateObject("Scripting.Dictionary")
  
  ' open connection in the database
  connection.Open()
  
  Dim myPost
  Set recordsetList = connection.Execute("select * from tb_posts")
  Do While Not recordsetList.EOF
    Set myPost = New Post
    myPost.Seq = recordsetList.Fields("seq")
    myPost.Title = recordsetList.Fields("title")
    myPost.Content = recordsetList.Fields("content")
    myPost.Status = recordsetList.Fields("status")
    posts.add myPost.Seq, myPost
    recordsetList.MoveNext
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

  <h1 class="uk-title">Database Update</h1>

  <% If NOT IsEmpty(selectedPost) Then %>
  <h3 class="uk-title">Update Post</h3>
  <form class="uk-form-stacked" method="POST" action="database-update.asp?seq=<%= seq %>">
    <div>
      <label class="uk-form-label">Name</label>
      <div class="uk-form-controls">
        <input class="uk-input" type="text" name="title" value="<%= selectedPost.Title %>" />
        <i class="uk-text-danger"><%= titleMessage %></i>
      </div>
    </div>
    <div>
      <label class="uk-form-label">Content</label>
      <div class="uk-form-controls">
        <textarea class="uk-textarea" type="text" name="content"><%= selectedPost.Content %></textarea>
        <i class="uk-text-danger"><%= contentMessage %></i>
      </div>
    </div>
    <div>
      <label class="uk-form-label">Status</label>
      <div class="uk-form-controls">
      <% For Each statusOption in statusOptions %>
        <% If statusOption = selectedPost.Status Then %>
        <label><input class="uk-radio" type="radio" name="status" value="<%= statusOption %>" checked> <%= statusOption %></label><br>
        <% Else %>
        <label><input class="uk-radio" type="radio" name="status" value="<%= statusOption %>"> <%= statusOption %></label><br>
        <% End If %>
      <% Next %>
      </div>
    </div>
    <div class="uk-margin">
      <input type="hidden" name="seq" value="<%= selectedPost.Seq %>" />
      <input type="submit" name="submit" class="uk-button uk-button-primary" value="Update" > 
      <a href="<%= currentURL %>" class="uk-button uk-button-secondary">Cancel</a>
        <i class="uk-text-success"><%= submitMessage %></i>
    </div>
  </form>
  <% End If %>

  <h3 class="uk-title">List of Posts</h3>
  <table class="uk-table uk-table-divider">
    <thead>
      <tr>
        <th>Title</th>
        <th>Content</th>
        <th>Status</th>
        <th style="width:55px"></th>
      </tr>
    </thead>
    <tbody>
      <% For Each item in posts %> 
      <tr>
        <% itemURL = currentURL&"?seq="&posts(item).Seq %>
        <td><a href="<%= itemURL %>"><%= posts(item).Title %></a></td>
        <td><%= posts(item).Content %></td>
        <td><%= posts(item).Status %></td>
        <td>
          <a href="<%= itemURL %>" uk-icon="icon: file-edit"></a>
          <a href="" uk-icon="icon: close"></a>
        </td>
      </tr>
      <% Next %>
    </tbody>
  </table>
<!--#include file="layouts/footer.asp"-->
