<!--#include file="layouts/header.asp"-->

<div class="uk-section">
  <h1 class="uk-title">If Else</h1>
	<p>
		Below we will learn conditional if and else. It use similar programming term <em>If</em>, <em>ElseIf</em>, but in the end of the statement we have to add <em>Then</em>.
		<pre>
			<code class="vbscript-html">
Dim temperature
Dim message
temperature = 25
If number <15 Then
	message = "<p>Snow will come.</p>"
ElseIf number >=15 AND number < 25 Then
	message = "<p>Nice wather to have a picnic</p>"
ElseIf number >=25 AND number < 35 Then
	message = "<p>Summer is coming</p>"
Else
	message "<p>Woah! It's very hot!</p>"
End If

Response.Write "temperature "&temperature
Response.Write message
			</code>
		</pre>
	</p>
	<!--#include file="code/ifelse.asp"-->

</div>
<!--#include file="layouts/footer.asp"-->
