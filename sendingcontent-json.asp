<%
  ' to set content type we can use Response.ContentType 
  ' sample json taken from http://json.org/example.html
  Response.ContentType = "text/json"
%>
{
    "glossary": {
    "title": "example glossary",
		"GlossDiv": {
      "title": "S",
			"GlossList": {
        "GlossEntry": {
          "ID": "SGML",
					"SortAs": "SGML",
					"GlossTerm": "Standard Generalized Markup Language",
					"Acronym": "SGML",
					"Abbrev": "ISO 8879:1986",
					"GlossDef": {
            "para": "A meta-markup language, used to create markup languages such as DocBook.",
						"GlossSeeAlso": ["GML", "XML"]
          },
					"GlossSee": "markup"
        }
      }
    }
  }
}
