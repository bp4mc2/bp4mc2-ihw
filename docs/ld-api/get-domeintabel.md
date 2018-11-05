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

> `GET /beheer/domeintabel?subject={uri-domeintabel}`

Hierbij staat `{uri-domeintabel}` voor de URI van de betreffende domeintabel.

### Voorbeeld

> `curl -H "Accept:application/ld+json" http://localhost:8080/beheer/domeintabel?subject=http://standaard.aquo.nl/id/dataset/domeintabel/AfsluitmiddelType`

## Output
De output van deze API is conform het [JSON-LD](https://json-ld.org) formaat. Hieronder is (een deel) van de output afgebeeld van bovengenoemde voorbeeldaanroep.

    [ {
      "@id" : "http://standaard.aquo.nl/id/AfsluitmiddelType/1",
      "@type" : [ "http://standaard.aquo.nl/def/aquo#AfsluitmiddelType" ],
      "http://purl.org/dc/terms/identifier" : [ {
        "@type" : "http://www.w3.org/2001/XMLSchema#integer",
        "@value" : "1"
      } ],
      "http://standaard.aquo.nl/def/aquo#Code" : [ {
        "@value" : "01"
      } ],
      "http://standaard.aquo.nl/def/aquo#Omschrijving" : [ {
        "@value" : "Deur"
      } ],
      "http://www.w3.org/ns/prov#generatedAtTime" : [ {
        "@value" : "2016-03-12"
      } ]
    }, {
      "@id" : "http://standaard.aquo.nl/id/AfsluitmiddelType/2",
      "@type" : [ "http://standaard.aquo.nl/def/aquo#AfsluitmiddelType" ],
      "http://purl.org/dc/terms/identifier" : [ {
        "@type" : "http://www.w3.org/2001/XMLSchema#integer",
        "@value" : "2"
      } ],
      "http://standaard.aquo.nl/def/aquo#Code" : [ {
        "@value" : "02"
      } ],
      "http://standaard.aquo.nl/def/aquo#Omschrijving" : [ {
        "@value" : "Schotbalk sponning"
      } ],
      "http://www.w3.org/ns/prov#generatedAtTime" : [ {
        "@value" : "2016-03-12"
      } ]
    } ]
