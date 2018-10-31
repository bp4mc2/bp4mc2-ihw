# PUT domeintabel

## Omschrijving
Deze API verzorgt het verwijderen van een domeinwaarde in een specifieke domeintabel

## Specificatie

### Headers

|Header|Waarde|
|------|------|
|Content-Type:|application/ld+json|

### Aanroep
De aanroep van deze API is als volgt:

> `DELETE /beheer/domeintabel?subject={uri-domeintabel}`

Hierbij staat `{uri-domeintabel}` voor de URI van de betreffende domeintabel.

### Voorbeeld

> `curl -v -X DELETE -H "Content-Type:application/ld+json" -T delete-domeintabel.json http://localhost:8080/beheer/domeintabel?subject=http://standaard.aquo.nl/id/dataset/domeintabel/AfsluitmiddelType`

Hierbij is `delete-domeintabel.json` het bestand beschreven in de Input-sectie.

## Input
De input van deze API is conform het [JSON-LD](https://json-ld.org) formaat. Hieronder is de input afgebeeld van bovengenoemde voorbeelaanroep, ook beschikbaar in het bestand [delete-domeintabel.json](delete-domeintabel.json)

    [ {
      "@id" : "http://standaard.aquo.nl/id/AfsluitmiddelType/7",
      "http://www.w3.org/ns/prov#invalidatedAtTime" : "2018-10-31T08:13:59.411Z"
    } ]

Merk op dat het mogelijk is om meer dan 1 waarde te verwijderen, door de meerdere waarden in het inputbericht te plaatsen.

Van belang is dat er precies twee eigenschappen worden meegegeven:

* De eigenschap `@id`, waarmee de domeinwaarde wordt geïdentificeerd;
* De eigenschap `http://www.w3.org/ns/prov#invalidatedAtTime`, waarmee wordt aangegeven op welk tijdstip de waarde is gewijzigd. Voor dit tijdstip kan de huidige systeemtijd worden gebruikt.

## Output
De output van deze service is afhankelijk van de wijze van verwerking. De basis is de HTTP response code:

|Code|Resultaat|
|----|---------|
|200|De service is correct uitgevoerd, het resultaat is verwerkt|
|40x|De service is niet juist aangesproken c.q. kon niet gevonden worden|
|50x|Fout bij uitvoeren van de service, het resultaat is niet verwerkt|

In het geval van een fout (dwz: een niet-200 bericht) zal de body van de http response de omschrijving van de fout bevatten, in plain tekst.
