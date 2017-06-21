<!--#include file="layouts/header.asp"-->

  <h1>Read File</h1>

  <%
    Dim fso, file, fileSpec, fileName

    fileName = Application("rootURL") & "/css/style.css"
    fileSpec = Server.MapPath(fileName)
    
    ' OpenTextFile has several mode 
    ' 1 for reading file
    ' 2 for writing file
    ' 8 for append file content
    ' see : https://msdn.microsoft.com/en-us/library/314cz14s.aspx
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set file = fso.OpenTextFile(filespec,1) 

    Response.write "Reading file " & fileName & "<br/><br/>"
    Do While Not file.AtEndOfStream
      Response.write file.ReadLine & "<br/>"
    Loop

  %>
<!--#include file="layouts/footer.asp"-->

