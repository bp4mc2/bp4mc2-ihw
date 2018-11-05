# PUT begrippen

## Omschrijving
Deze API verzorgt het wijzigen van een begrip
## Specificatie

### Headers

|Header|Waarde|
|------|------|
|Content-Type:|application/ld+json|

### Body

De body bevat een [JSON-LD](https://json-ld.org) bericht met een opsomming van de gewijzigde begrip(pen).

### Aanroep
De aanroep van deze API is als volgt:

> `PUT /beheer/begrippen`

### Voorbeeld

> `curl -v -X PUT -H "Content-Type:application/ld+json" -T put-begrippen.json http://localhost:8080/beheer/begrippen`

Hierbij is `put-begrippen.json` het bestand beschreven in de Input-sectie.

## Input
De input van deze API is conform het [JSON-LD](https://json-ld.org) formaat. Hieronder is de input afgebeeld van bovengenoemde voorbeeldaanroep, ook beschikbaar in het bestand [put-begrippen.json](put-begrippen.json)

    [ {
      "@id" : "http://standaard.aquo.nl/id/begrip/30793",
      "@type" : [ "http://www.w3.org/2004/02/skos/core#Concept" ],
      "http://purl.org/dc/elements/1.1/source" : [ {
        "@value" : "BPRW"
      } ],
      "http://www.w3.org/2000/01/rdf-schema#label" : [ {
        "@value" : "1-mijlzone"
      } ],
      "http://www.w3.org/2004/02/skos/core#prefLabel" : [ {
        "@value" : "1-mijlzone"
      } ],
      "http://www.w3.org/2004/02/skos/core#broader" : [ {
        "@id" : "http://standaard.aquo.nl/id/begrip/30526"
      } ],
      "http://www.w3.org/2004/02/skos/core#definition" : [ {
        "@value" : "zone, die tot 1 zeemijl zeewaarts loopt vanaf het dichtstbijzijnde punt van de basislijn."
      } ],
      "http://www.w3.org/2004/02/skos/core#note" : [ {
        "@value" : "Tot en met deze 1-mijlzone moet conform de KRW worden getoetst op goede toestand."
      } ]
    } ]

Merk op dat het mogelijk is om meer dan 1 begrip te wijzigen, door de meerdere begrippen in het inputbericht te plaatsen. Het is van belang om alle eigenschappen van een begrip in 1 keer op te slaan, ook als maar 1 eigenschap van een begrip is gewijzigd.

Aangezien in dit geval het begrip wordt gewijzigd, mag het veld `@id` niet veranderen. Dit veld geeft aan welk begrip moet worden gewijzigd.

## Output
De output van deze service is afhankelijk van de wijze van verwerking. De basis is de HTTP response code:

|Code|Resultaat|
|----|---------|
|200|De service is correct uitgevoerd, het resultaat is verwerkt|
|40x|De service is niet juist aangesproken c.q. kon niet gevonden worden|
|50x|Fout bij uitvoeren van de service, het resultaat is niet verwerkt|

In het geval van een fout (dwz: een niet-200 bericht) zal de body van de http response de omschrijving van de fout bevatten, in plain tekst.
