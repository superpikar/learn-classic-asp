<!--#include file="layouts/header.asp"-->

  <h1>Write File</h1>

  <%
    Dim fso, file, fileSpec, fileName
    Dim countrySplit

    fileName = Application("rootURL") & "/files/cities.txt"
    fileSpec = Server.MapPath(fileName)
    
    ' OpenTextFile has several mode 
    ' 1 for reading file
    ' 2 for writing file
    ' 8 for append file content
    ' see : https://msdn.microsoft.com/en-us/library/314cz14s.aspx
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set file = fso.OpenTextFile(filespec,2) 

    Response.write "Writing file " & fileName & "<br/><br/>"

    file.WriteLine "This is my first sentence. And then second sentence."
    file.WriteLine "written at " & Now
  %>
<!--#include file="layouts/footer.asp"-->

