<!--#include file="./models/country.asp" -->
<%
  ' --------------------------------------------------------
  '                     VBSCRIPT PART 
  ' --------------------------------------------------------
  ' declare the variables
  Dim connection, recordset, sql, connectionString
  Dim countries

  ' to setup connectionString follow this tutorial https://stackoverflow.com/a/5678835/1843755
  connectionString = Application("connectionString")

  ' create an instance of ADO connection and recordset objects
  Set connection = Server.CreateObject("ADODB.Connection")
  Set countries = Server.CreateObject("Scripting.Dictionary")
  
  ' open connection in the database
  connection.ConnectionString = connectionString
  connection.Open()
  
  Dim myCountry, seq
  Set recordset = connection.Execute("select * from tb_countries")
  seq = 0
  Do While Not recordset.EOF
    seq = seq+1
    set myCountry = New Country
    myCountry.Title = recordset.Fields("name")
    myCountry.Code = recordset.Fields("code")
    myCountry.Currencies = recordset.Fields("currency")
    myCountry.Capital = recordset.Fields("capital")
    myCountry.Population = recordset.Fields("population")
    countries.add seq, myCountry
    recordset.MoveNext
  Loop 
  connection.Close()
%>

<%
  ' --------------------------------------------------------
  '                     HTML PART 
  ' --------------------------------------------------------
%>
<!--#include file="layouts/header.asp"-->
  <h1 class="uk-title">Database Read </h1>
  <h3 class="uk-title">List of Countries </h3>
  <table class="uk-table uk-table-divider">
    <thead>
      <tr>
        <th>Name</th>
        <th>Code</th>
        <th>Capital</th>
        <th>Currency</th>
        <th>Population</th>
      </tr>
    </thead>
    <tbody>
      <% For Each item in countries %> 
      <tr>
        <td><%= countries(item).Title %></td>
        <td><%= countries(item).Code %></td>
        <td><%= countries(item).Capital %></td>
        <td><%= countries(item).Currencies %></td>
        <td><%= countries(item).Population %></td>
      </tr>
      <% Next %>
    </tbody>
  </table>
<!--#include file="layouts/footer.asp"-->
