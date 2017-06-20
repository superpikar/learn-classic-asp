<!--#include file="layouts/header.asp"-->

  <h1>Form GET</h1>

  <form method="GET" action="form-get.asp">
    Title<br/>
    <input type="text" name="title" placeholder="title"/> <br/>
    Content<br/>
    <textarea name="content" placeholder="content"></textarea> <br/>
    Category : 
    <input type="checkbox" name="category" value="news"/> News 
    <input type="checkbox" name="category" value="event" /> Event <br/>
    Status : 
    <input type="radio" name="status" value="published"/> Published 
    <input type="radio" name="status" value="draft" /> Draft <br/><br/>
    <button>Submit</button>
  </form>

  <hr/>

  <h1>Form GET Response</h1>

  Title : <%= Request.QueryString("title") %> <br/>
  Content : <%= Request.QueryString("content") %> <br/>
  Category : 
  <%= Request.QueryString("category") %> <br/>
  
  Status : <%= Request.QueryString("status") %> <br/>

<!--#include file="layouts/footer.asp"-->

