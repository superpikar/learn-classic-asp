<!--#include file="layouts/header.asp"-->

<h1>Array</h1>
<%
  Dim names, namesSplit
  Dim cars
  ' Comma separated list
  names = "Kim,Mook,Jun,Sung"
  namesSplit = Split(names,",")
  ' array list
  cars = Array("Kim","Mook","Jun","Sung")

  Response.write "<h3>Fruits</h3>"
  Response.write "<p>"&namesSplit(0)&"</p>"
  Response.write "<p>"&namesSplit(1)&"</p>"
  Response.write "<p>"&namesSplit(2)&"</p>"
  Response.write "<p>"&namesSplit(3)&"</p>"
  Response.write "<hr/>"
  Response.write "<h3>Cars</h3>"
  Response.write "<p>"&cars(0)&"</p>"
  Response.write "<p>"&cars(1)&"</p>"
  Response.write "<p>"&cars(2)&"</p>"
  Response.write "<p>"&cars(3)&"</p>"


  ' print by array index using loop
  Response.write "<hr/>"
  Response.write "<h3>Names</h3>"
  For i=lBound(namesSplit) to uBound(namesSplit)
    Response.write "<p>"&namesSplit(i)&"</p>"
  Next

  ' print by array index using loop
  Response.write "<hr/>"
  Response.write "<h3>Cars</h3>"
  For i=lBound(cars) to uBound(cars)
    Response.write "<p>"&cars(i)&"</p>"
  Next
%>
<!--#include file="layouts/footer.asp"-->
