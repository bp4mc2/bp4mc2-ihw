### De huidige omgeving is gebaseerd op:

- Apache Fuseki als triplestore;
- Dotwebstack LDT 2.0 voor de ontsluiting.

### Requirements:
- Een recente versie van de Java Runtime Environment;

### Downloads:
- Download Apache http://apache.cs.uu.nl/jena/binaries/apache-jena-fuseki-3.8.0.zip
- Download van de meest recente Release het bestand [Source.zip] https://github.com/bp4mc2/bp4mc2-ihw/releases
- Download van de meest recente release het bestand [dotwebstack-theatre-legacy.jar] https://github.com/bp4mc2/bp4mc2-ihw/releases


### Installatie
- Maak een nieuwe folder aan en geef deze een overzichtelijke naam
- Pak de bestanden van het bestand 'Source.zip' hierin uit
- Maak tevens een map `target` aan in deze folder

- Maak in `/target` de map 'apache' aan en pak hier de bestanden van fuseki in uit

- Maak in `/target` de map 'jar' aan
en zet hier het bestand 'dotwebstack-theatre-legacy.jar' neer

- Maak in `/target` de map 'config' aan en zet hier alles in van de map 'Resources' die zich het bestand 'Source.zip' bevind

- Maak in de map target ook een nieuw bat bestand aan met de inhoud:


`
    "@echo off
    java -jar jar/dotwebstack-theatre-legacy.jar
    pause"
`


- Noem deze `start.bat`


### Aanmaken Dataset:
- Start apache op door dubbel te klikken op het bestand `fuseki-server.bat` te klikken.
- Laat apache draaien door de terminal niet af te sluiten
- Ga naar [http://localhost:3030](http://localhost:3030) en kies voor "Add dataset";
- Geef als naam voor de dataset `ihw` op.


### Start het Linked Data Theatre
- Als je Fuseki hebt afgesloten, start deze dan weer op
- Start het dotwebstack framework op door in de target map `start.bat` op te starten
- Sluit de terminal niet af.

- Open http://localhost:8080/begrippen om te zien of de installatie is gelukt.




