# POST domeintabel

## Omschrijving
Deze API verzorgt het toevoegen van een domeinwaarde in een specifieke domeintabel

## Specificatie

### Headers

|Header|Waarde|
|------|------|
|Content-Type:|application/ld+json|

### Body

De body bevat een [JSON-LD](https://json-ld.org) bericht met de nieuwe domeinwaarde(n).

### Aanroep
De aanroep van deze API is als volgt:

> `POST /beheer/domeintabel?subject={uri-domeintabel}`

Hierbij staat `{uri-domeintabel}` voor de URI van de betreffende domeintabel.

### Voorbeeld

> `curl -v -X POST -H "Content-Type:application/ld+json" -T post-domeintabel.json http://localhost:8080/beheer/domeintabel?subject=http://standaard.aquo.nl/id/dataset/domeintabel/AfsluitmiddelType`

Hierbij is `post-domeintabel.json` het bestand beschreven in de Input-sectie.

## Input
De input van deze API is conform het [JSON-LD](https://json-ld.org) formaat. Hieronder is de input afgebeeld van bovengenoemde voorbeeldaanroep, ook beschikbaar in het bestand [post-domeintabel.json](post-domeintabel.json)

    [ {
      "@id" : "urn:uuid:9c363af8-1e86-43df-9149-be76e263fa2a",
      "@type" : [ "http://standaard.aquo.nl/def/aquo#AfsluitmiddelType" ],
      "http://purl.org/dc/terms/identifier" : [ {
        "@type" : "http://www.w3.org/2001/XMLSchema#integer",
        "@value" : "8"
      } ],
      "http://standaard.aquo.nl/def/aquo#Code" : [ {
        "@value" : "08"
      } ],
      "http://standaard.aquo.nl/def/aquo#Omschrijving" : [ {
        "@value" : "Draaideur"
      } ]
    } ]

Merk op dat het mogelijk is om meer dan 1 domeinwaarde toe te voegen, door de meerdere domeinwaarden in het inputbericht te plaatsen.

Aangezien in dit geval de domeinwaarde wordt toegevoegd, dient het veld `@id` een nieuwe unieke waarde te hebben, voor elke toegevoegde domeinwaarde. Bij de afhandeling zal dit veld overigens worden vervangen conform de aquo-standaard, dus het maakt niet zoveel uit welke waarde dit veld heeft, zolang deze maar uniek is (in bovenstaand voorbeeld is daarom een uuid genomen).

## Output
De output van deze service is afhankelijk van de wijze van verwerking. De basis is de HTTP response code:

|Code|Resultaat|
|----|---------|
|200|De service is correct uitgevoerd, het resultaat is verwerkt|
|40x|De service is niet juist aangesproken c.q. kon niet gevonden worden|
|50x|Fout bij uitvoeren van de service, het resultaat is niet verwerkt|

In het geval van een fout (dwz: een niet-200 bericht) zal de body van de http response de omschrijving van de fout bevatten, in plain tekst.
