<!--#include file="layouts/header.asp"-->

<h1>Function</h1>
<%
  Function sayHello(name)
    Response.write "<p>Hello "&name&"</p>"
  End Function
  
  ' in vbscript we cannot use word "return"
  ' what we have to do is use functionName=  
  ' it's so uncommon, isn't it?
  Function printHello(name)
    printHello = "<p>Hello "&name&"</p>"
  End Function

  sayHello("Michael")
  Response.write printHello("Michaelsss")
%>
<!--#include file="layouts/footer.asp"-->
