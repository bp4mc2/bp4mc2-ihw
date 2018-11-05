# DELETE begrippen

## Omschrijving
Deze API verzorgt het verwijderen van een begrip

## Specificatie

### Headers

|Header|Waarde|
|------|------|
|Content-Type:|application/ld+json|

### Body

De body bevat een [JSON-LD](https://json-ld.org) bericht met een opsomming van de te verwijderen begrip(pen).

### Aanroep
De aanroep van deze API is als volgt:

> `DELETE /beheer/begrippen`

### Voorbeeld

> `curl -v -X DELETE -H "Content-Type:application/ld+json" -T delete-begrippen.json http://localhost:8080/beheer/begrippen`

Hierbij is `delete-begrippen.json` het bestand beschreven in de Input-sectie.

## Input
De input van deze API is conform het [JSON-LD](https://json-ld.org) formaat. Hieronder is de input afgebeeld van bovengenoemde voorbeeldaanroep, ook beschikbaar in het bestand [delete-begrippen.json](delete-begrippen.json)

    [ {
      "@id" : "http://standaard.aquo.nl/id/begrip/30793",
      "http://www.w3.org/ns/prov#invalidatedAtTime" : "2018-10-31T08:13:59.411Z"
    } ]

Merk op dat het mogelijk is om meer dan 1 begrip te verwijderen, door de meerdere begrippen in het inputbericht te plaatsen.

Van belang is dat er precies twee eigenschappen worden meegegeven:

* De eigenschap `@id`, waarmee het begrip wordt geïdentificeerd;
* De eigenschap `http://www.w3.org/ns/prov#invalidatedAtTime`, waarmee wordt aangegeven op welk tijdstip het begrip is verwijderd. Voor dit tijdstip kan de huidige systeemtijd worden gebruikt.

## Output
De output van deze service is afhankelijk van de wijze van verwerking. De basis is de HTTP response code:

|Code|Resultaat|
|----|---------|
|200|De service is correct uitgevoerd, het resultaat is verwerkt|
|40x|De service is niet juist aangesproken c.q. kon niet gevonden worden|
|50x|Fout bij uitvoeren van de service, het resultaat is niet verwerkt|

In het geval van een fout (dwz: een niet-200 bericht) zal de body van de http response de omschrijving van de fout bevatten, in plain tekst.
