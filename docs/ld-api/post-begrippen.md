# POST begrippen

## Omschrijving
Deze API verzorgt het toevoegen van een begrip

## Specificatie

### Headers

|Header|Waarde|
|------|------|
|Content-Type:|application/ld+json|

### Body

De body bevat een [JSON-LD](https://json-ld.org) bericht met de nieuwe begrip(pen).

### Aanroep
De aanroep van deze API is als volgt:

> `POST /beheer/begrippen`

### Voorbeeld

> `curl -v -X POST -H "Content-Type:application/ld+json" -T post-begrippen.json http://localhost:8080/beheer/begrippen`

Hierbij is `post-begrippen.json` het bestand beschreven in de Input-sectie.

## Input
De input van deze API is conform het [JSON-LD](https://json-ld.org) formaat. Hieronder is de input afgebeeld van bovengenoemde voorbeeldaanroep, ook beschikbaar in het bestand [post-begrippen.json](post-begrippen.json)

    [ {
      "@id" : "urn:uuid:44552d06-db81-44b8-9582-fad660c20cf6",
      "@type" : [ "http://www.w3.org/2004/02/skos/core#Concept" ],
      "http://purl.org/dc/elements/1.1/source" : [ {
        "@value" : "Aquo documentatie"
      } ],
      "http://www.w3.org/2000/01/rdf-schema#label" : [ {
        "@value" : "DotwebStack"
      } ],
      "http://www.w3.org/2004/02/skos/core#prefLabel" : [ {
        "@value" : "DotwebStack"
      } ],
      "http://www.w3.org/2004/02/skos/core#definition" : [ {
        "@value" : "Data on the Web Stack, een raamwerk voor het publiceren van data op het web"
      } ]
    } ]

Merk op dat het mogelijk is om meer dan 1 begrip toe te voegen, door de meerdere begrippen in het inputbericht te plaatsen.

Aangezien in dit geval het begrip wordt toegevoegd, dient het veld `@id` een nieuwe unieke waarde te hebben, voor elk toegevoegde begrip. Bij de afhandeling zal dit veld overigens worden vervangen conform de aquo-standaard, dus het maakt niet zoveel uit welke waarde dit veld heeft, zolang deze maar uniek is (in bovenstaand voorbeeld is daarom een uuid genomen).

## Output
De output van deze service is afhankelijk van de wijze van verwerking. De basis is de HTTP response code:

|Code|Resultaat|
|----|---------|
|200|De service is correct uitgevoerd, het resultaat is verwerkt|
|40x|De service is niet juist aangesproken c.q. kon niet gevonden worden|
|50x|Fout bij uitvoeren van de service, het resultaat is niet verwerkt|

In het geval van een fout (dwz: een niet-200 bericht) zal de body van de http response de omschrijving van de fout bevatten, in plain tekst.
