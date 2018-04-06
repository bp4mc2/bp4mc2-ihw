Bulkupload van data kan via Linked Data endpoints. Er zijn twee endpoints beschikbaar:

- `http://localhost:8080/beheer/bulkupload/begrippen`
- `http://localhost:8080/beheer/bulkupload/domeintabellen`

(vervang `localhost:8080` door de juiste naam van de server)

Data kan op de volgende manier geupload worden (in geval van turtle):

	curl -X POST --header "Content-Type: text/turtle" -T aquo-termen.rdf.ttl http://localhost:8080/beheer/bulkupload/begrippen
