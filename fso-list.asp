<% Option Explicit %>
<!--#include file="layouts/header.asp"-->
  <h1>File System Object (FSO) - List folder and file</h1>
  <%
    ' reference http://html.net/tutorials/asp/lesson14.asp
    ' anything related to CreateObject should use "Set" to set the variable

    ' read all disk drive directory in PC
    Dim fso, dir, drives
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set drives = fso.Drives

    Response.Write "Read Drive Letter"
    For Each dir in drives
      Response.Write dir.DriveLetter & "<br/>"
    Next
  %>
  <hr/>
  <%
    ' read folder information
    Dim fso2, folder, folderSpec, folderURL
    folderURL = Application("rootURL")
    folderSpec = Server.MapPath(folderURL&"/")
    Set fso2 = CreateObject("Scripting.FileSystemObject")
    Set folder = fso2.getFolder(folderSpec)

    Response.Write "Read Folder <br/>"
    Response.Write "URL : "& folderURL &"<br/>"
    Response.Write "Path : "& folderSpec &"<br/>"
    Response.Write "size :"& folder.Size & "<br/>"
    Response.Write "created :"& folder.DateCreated & "<br/>"
  %>
  <hr/>
  <%
    ' read file information
    Dim fso3, file, fileSpec, fileURL
    fileURL = Application("rootURL")&"/default.asp"
    fileSpec = Server.MapPath(fileURL)
    Set fso3 = CreateObject("Scripting.FileSystemObject")
    Set file = fso3.getFile(fileSpec)

    Response.Write "Read File <br/>"
    Response.Write "URL : "& fileURL &"<br/>"
    Response.Write "Path : "& fileSpec &"<br/>"
    Response.Write "size :"& file.Size & "<br/>"
    Response.Write "created :"& file.DateCreated & "<br/>"
  %>

<!--#include file="layouts/footer.asp"-->
