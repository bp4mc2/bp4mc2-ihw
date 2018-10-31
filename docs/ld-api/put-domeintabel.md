# PUT domeintabel

## Omschrijving
Deze API verzorgt het wijzigen van een domeinwaarde in een specifieke domeintabel

## Specificatie

### Headers

|Header|Waarde|
|------|------|
|Content-Type:|application/ld+json|

### Body

De body bevat een [JSON-LD](https://json-ld.org) bericht met een opsomming van de gewijzigde domeinwaarde(n).

### Aanroep
De aanroep van deze API is als volgt:

> `PUT /beheer/domeintabel?subject={uri-domeintabel}`

Hierbij staat `{uri-domeintabel}` voor de URI van de betreffende domeintabel.

### Voorbeeld

> `curl -v -X PUT -H "Content-Type:application/ld+json" -T put-domeintabel.json http://localhost:8080/beheer/domeintabel?subject=http://standaard.aquo.nl/id/dataset/domeintabel/AfsluitmiddelType`

Hierbij is `put-domeintabel.json` het bestand beschreven in de Input-sectie.

## Input
De input van deze API is conform het [JSON-LD](https://json-ld.org) formaat. Hieronder is de input afgebeeld van bovengenoemde voorbeeldaanroep, ook beschikbaar in het bestand [put-domeintabel.json](put-domeintabel.json)

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
        "@value" : "Superdeur"
      } ]
    } ]

Merk op dat het mogelijk is om meer dan 1 waarde te wijzigen, door de meerdere waarden in het inputbericht te plaatsen. Het is van belang om de gehele "rij" van de domeintabel in 1 keer op te slaan, ook als maar 1 eigenschap van de domeinwaarde is gewijzigd.

Aangezien in dit geval de domeinwaarde wordt gewijzigd, mag het veld `@id` niet veranderen. Dit veld geeft aan welke domeinwaarde moet worden gewijzigd.

## Output
De output van deze service is afhankelijk van de wijze van verwerking. De basis is de HTTP response code:

|Code|Resultaat|
|----|---------|
|200|De service is correct uitgevoerd, het resultaat is verwerkt|
|40x|De service is niet juist aangesproken c.q. kon niet gevonden worden|
|50x|Fout bij uitvoeren van de service, het resultaat is niet verwerkt|

In het geval van een fout (dwz: een niet-200 bericht) zal de body van de http response de omschrijving van de fout bevatten, in plain tekst.
