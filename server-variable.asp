<!--#include file="layouts/header.asp"-->

<h1>Server Variable</h1>
<table class="uk-table uk-table-divider">
  <tbody>
  <% For Each item in Request.ServerVariables() %>
    <tr>
      <td><%= item %></td>
      <td><%= Request.ServerVariables(item) %></td>
    </tr>
  <% Next %>
  </tbody>
</table>
<!--#include file="layouts/footer.asp"-->
