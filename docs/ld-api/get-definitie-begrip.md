# GET begrip

## Omschrijving
Deze API levert de definitie van een begrip (de velden die toegestaan zijn voor een begrip)

## Specificatie

### Headers

|Header|Waarde|
|------|------|
|Accept:|application/ld+json|

### Body

De body is leeg

### Aanroep
De aanroep van deze API is als volgt:

> `GET /def/begrip`

### Voorbeeld

> `curl -H "Accept:application/ld+json" http://localhost:8080/def/begrip`

## Output
De output van deze API is conform het [JSON-LD](https://json-ld.org) formaat. Hieronder is de output afgebeeld van bovengenoemde voorbeeldaanroep.

Merk op dat de volgorde van de elementen willekeurig is! Het veld `http://www.w3.org/ns/shacl#order` kan gebruikt worden voor sortering.

```
[ {
  "@id" : "urn:property:p1",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "source"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "1"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://purl.org/dc/elements/1.1/source"
  } ]
}, {
  "@id" : "urn:property:p10",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Definitie"
  } ],
  "http://www.w3.org/ns/shacl#datatype" : [ {
    "@id" : "http://www.w3.org/2001/XMLSchema#string"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "definition"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "10"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://www.w3.org/2004/02/skos/core#definition"
  } ]
}, {
  "@id" : "urn:property:p11",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Smallere term"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "narrowerTerm"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "11"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://www.w3.org/2004/02/skos/core#narrower"
  } ]
}, {
  "@id" : "urn:property:p12",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Code"
  } ],
  "http://www.w3.org/ns/shacl#datatype" : [ {
    "@id" : "http://www.w3.org/2001/XMLSchema#string"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "notation"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "12"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://www.w3.org/2004/02/skos/core#notation"
  } ]
}, {
  "@id" : "urn:property:p13",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Notitie"
  } ],
  "http://www.w3.org/ns/shacl#datatype" : [ {
    "@id" : "http://www.w3.org/2001/XMLSchema#string"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "note"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "13"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://www.w3.org/2004/02/skos/core#note"
  } ]
}, {
  "@id" : "urn:property:p14",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Voorkeursterm"
  } ],
  "http://www.w3.org/ns/shacl#datatype" : [ {
    "@id" : "http://www.w3.org/2001/XMLSchema#string"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "prefLabel"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "14"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://www.w3.org/2004/02/skos/core#prefLabel"
  } ]
}, {
  "@id" : "urn:property:p15",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Gerelateerd aan"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "related"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "15"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://www.w3.org/2004/02/skos/core#related"
  } ]
}, {
  "@id" : "urn:property:p16",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Begrip ander domein"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "relatedMatch"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "16"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://www.w3.org/2004/02/skos/core#relatedMatch"
  } ]
}, {
  "@id" : "urn:property:p17",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Status"
  } ],
  "http://www.w3.org/ns/shacl#datatype" : [ {
    "@id" : "http://www.w3.org/2001/XMLSchema#string"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "status"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "17"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://www.w3.org/ns/adms#status"
  } ]
}, {
  "@id" : "urn:property:p2",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Datum aangemaakt"
  } ],
  "http://www.w3.org/ns/shacl#datatype" : [ {
    "@id" : "http://www.w3.org/2001/XMLSchema#dateTime"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "dateCreated"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "2"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://purl.org/dc/terms/created"
  } ]
}, {
  "@id" : "urn:property:p3",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Datum laatste wijziging"
  } ],
  "http://www.w3.org/ns/shacl#datatype" : [ {
    "@id" : "http://www.w3.org/2001/XMLSchema#dateTime"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "dateModified"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "3"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://purl.org/dc/terms/modified"
  } ]
}, {
  "@id" : "urn:property:p4",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Categorie"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "subject"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "4"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://purl.org/dc/terms/subject"
  } ]
}, {
  "@id" : "urn:property:p5",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Onderdeel van"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "isPartOf"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "5"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://purl.org/iso25964/skos-thes#broaderPartitive"
  } ]
}, {
  "@id" : "urn:property:p6",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Bestaat uit"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "hasPartOf"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "6"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://purl.org/iso25964/skos-thes#narrowerPartitive"
  } ]
}, {
  "@id" : "urn:property:p7",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Naam"
  } ],
  "http://www.w3.org/ns/shacl#datatype" : [ {
    "@id" : "http://www.w3.org/2001/XMLSchema#string"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "label"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "7"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://www.w3.org/2000/01/rdf-schema#label"
  } ]
}, {
  "@id" : "urn:property:p8",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Synoniem"
  } ],
  "http://www.w3.org/ns/shacl#datatype" : [ {
    "@id" : "http://www.w3.org/2001/XMLSchema#string"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "altLabel"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "8"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://www.w3.org/2004/02/skos/core#altLabel"
  } ]
}, {
  "@id" : "urn:property:p9",
  "@type" : [ "http://www.w3.org/ns/shacl#PropertyShape" ],
  "http://www.w3.org/2000/01/rdf-schema#label" : [ {
    "@language" : "nl",
    "@value" : "Bredere term"
  } ],
  "http://www.w3.org/ns/shacl#name" : [ {
    "@value" : "broaderTerm"
  } ],
  "http://www.w3.org/ns/shacl#order" : [ {
    "@type" : "http://www.w3.org/2001/XMLSchema#integer",
    "@value" : "9"
  } ],
  "http://www.w3.org/ns/shacl#path" : [ {
    "@id" : "http://www.w3.org/2004/02/skos/core#broader"
  } ]
} ]
```
