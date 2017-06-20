<!--#include file="layouts/header.asp"-->

  <h1>Form POST</h1>

  <form method="POST" action="form-post.asp">
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

  <h1>Form POST Response</h1>

  Title : <%= Request.Form("title") %> <br/>
  Content : <%= Request.Form("content") %> <br/>
  Category : 
  <%= Request.Form("category") %> <br/>
  
  Status : <%= Request.Form("status") %> <br/>

<!--#include file="layouts/footer.asp"-->

