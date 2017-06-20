<!--#include file="layouts/header.asp"-->

  <h1>Form GET Response</h1>

  Title : <%= Request.QueryString("title") %> <br/>
  Content : <%= Request.QueryString("content") %> <br/>
  Category : 
  <%= Request.QueryString("category") %> <br/>
  
  Status : <%= Request.QueryString("status") %> <br/>

<!--#include file="layouts/footer.asp"-->

