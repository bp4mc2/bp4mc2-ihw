Bulkupload van data kan via Linked Data endpoints. Er zijn zes endpoints beschikbaar:

- `http://localhost:8080/beheer/bulkupload/begrippen`
- `http://localhost:8080/beheer/bulkupload/domeintabellen?domein={domeintabelnaam}`
- `http://localhost:8080/beheer/bulkupload/categorieen`
- `http://localhost:8080/beheer/bulkupload/relatie`
- `http://localhost:8080/beheer/bulkupload/domeinmeta`
- `http://localhost:8080/beheer/bulkupload/shacl`

(vervang `localhost:8080` door de juiste naam van de LDT 2.0 server. Als je lokaal werkt, hoef je deze niet te wijzigen)

Data kan op de volgende manier geupload worden (in geval van turtle):

LET OP: indien het endpoint beveiligd is (wat wel gebruikelijk is), moet eerst een keycookie worden opgehaald, door:

	curl -v -s http://localhost:8080/login -c keycookie.txt -d "username={username}&password={password}"

Vervang `{username}` door de username van de beheerder, en `{password}` door het juiste password

	curl -b keycookie.txt -X PUT --header "Content-Type: text/turtle" -T aquo-termen.rdf.ttl http://localhost:8080/beheer/bulkupload/begrippen
	curl -b keycookie.txt -X PUT --header "Content-Type: application/rdf+xml" -T domeintabel.xml http://localhost:8080/beheer/bulkupload/domeintabel?domein=AfsluitmiddelType

Verwijder keycookie.txt na afloop, aangezien dit feitelijk de "sleutel" is voor de toegang.
