Bulkupload van data kan via Linked Data endpoints. Er zijn twee endpoints beschikbaar:

- `http://localhost:8080/beheer/bulkupload/begrippen`
- `http://localhost:8080/beheer/bulkupload/domeintabellen`

(vervang `localhost:8080` door de juiste naam van de LDT 2.0 server. Als je lokaal werkt, hoef je deze niet te wijzigen)

Data kan op de volgende manier geupload worden (in geval van turtle):

	curl -X POST --header "Content-Type: text/turtle" -T aquo-termen.rdf.ttl http://localhost:8080/beheer/bulkupload/begrippen
	curl -X POST --header "Content-Type: application/rdf+xml" -T domeintabel.xml http://localhost:8080/beheer/bulkupload/domeintabel
