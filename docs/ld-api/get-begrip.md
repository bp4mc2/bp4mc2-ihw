# GET domeintabel

## Omschrijving
Deze API levert een lijst van waarden van een specifieke domeintabel

## Specificatie

### Headers

|Header|Waarde|
|------|------|
|Accept:|application/ld+json|

### Body

De body is leeg

### Aanroep
De aanroep van deze API is als volgt:

> `GET /beheer/begrip?subject={uri-begrip}`

Hierbij staat `{uri-begrip}` voor de URI van het betreffende begrip.

### Voorbeeld

> `curl -H "Accept:application/ld+json" http://localhost:8080/beheer/begrip?subject=http://standaard.aquo.nl/id/begrip/25108`

## Output
De output van deze API is conform het [JSON-LD](https://json-ld.org) formaat. Hieronder is de output afgebeeld van bovengenoemde voorbeeldaanroep.

    [ {
      "@id" : "http://standaard.aquo.nl/id/begrip/25108",
      "@type" : [ "http://www.w3.org/2004/02/skos/core#Concept" ],
      "http://purl.org/dc/terms/created" : [ {
        "@type" : "http://www.w3.org/2001/XMLSchema#dateTime",
        "@value" : "2011-07-04T10:30:34Z"
      } ],
      "http://purl.org/dc/terms/modified" : [ {
        "@type" : "http://www.w3.org/2001/XMLSchema#dateTime",
        "@value" : "2012-11-23T12:27:46Z"
      } ],
      "http://purl.org/dc/terms/subject" : [ {
        "@id" : "http://standaard.aquo.nl/id/category/41"
      }, {
        "@id" : "http://standaard.aquo.nl/id/category/26"
      }, {
        "@id" : "http://standaard.aquo.nl/id/category/27"
      } ],
      "http://www.w3.org/2000/01/rdf-schema#label" : [ {
        "@value" : "bemalinggebied"
      } ],
      "http://www.w3.org/2004/02/skos/core#altLabel" : [ {
        "@language" : "en",
        "@value" : "pumped drainage area"
      } ],
      "http://www.w3.org/2004/02/skos/core#broader" : [ {
        "@id" : "http://standaard.aquo.nl/id/begrip/25104"
      } ],
      "http://www.w3.org/2004/02/skos/core#definition" : [ {
        "@value" : "een gebied waaruit het overtollige water door middel van een gemaal wordt verwijderd."
      } ],
      "http://www.w3.org/2004/02/skos/core#notation" : [ {
        "@value" : "65"
      } ],
      "http://www.w3.org/2004/02/skos/core#note" : [ {
        "@value" : "een gebied waaruit het overtollige water door middel van een gemaal wordt verwijderd."
      } ],
      "http://www.w3.org/2004/02/skos/core#prefLabel" : [ {
        "@value" : "bemalinggebied"
      } ],
      "http://www.w3.org/ns/adms#status" : [ {
        "@language" : "nl",
        "@value" : "Geldig"
      } ]
    } ]
