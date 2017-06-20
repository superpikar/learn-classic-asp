<!--#include file="layouts/header.asp"-->

  <h1>Form GET</h1>

  <form method="GET" action="form-get-response.asp">
    Title<br/>
    <input type="text" name="title" placeholder="title"/> <br/>
    Content<br/>
    <textarea name="description" placeholder="content"></textarea> <br/>
    Category : 
    <input type="checkbox" name="category" value="news"/> News 
    <input type="checkbox" name="category" value="event" /> Event <br/>
    Status : 
    <input type="radio" name="status" value="published"/> Published 
    <input type="radio" name="status" value="draft" /> Draft <br/><br/>
    <button>Submit</button>
  </form>

<!--#include file="layouts/footer.asp"-->

