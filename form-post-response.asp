<!--#include file="layouts/header.asp"-->

  <h1>Form POST Response</h1>

  Title : <%= Request.Form("title") %> <br/>
  Content : <%= Request.Form("content") %> <br/>
  Category : 
  <%= Request.Form("category") %> <br/>
  
  Status : <%= Request.Form("status") %> <br/>

<!--#include file="layouts/footer.asp"-->

