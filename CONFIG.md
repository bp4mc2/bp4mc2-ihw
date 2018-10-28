De huidige omgeving is gebaseerd op:

- Apache Fuseki als triplestore;
- Dotwebstack LDT 2.0 voor de ontsluiting.

### Requirements

- Een recente versie van de Java Runtime Environment, versie 8;
- Een lokale repo van https://github.com/bp4mc2/bp4mc2-ihw;
- Een lokale repo van https://github.com/dotwebstack/dotwebstack-theatre-fuseki.

Zorg ervoor dat de twee repo's dezelfde root hebben, dus bv:
> `users/<username>/gitrepos/bp4mc2-ihw`
> `users/<username>/gitrepos/dotwebstack-theatre-fuseki`

### Stap 1: Basisinstallatie

1. Ga naar de map waarin dotwebstack-theatre-fuseki is geinstalleerd;
2. Start `install.sh` (linux) of `install.bat` (windows)
3. Start `start-fuseki.sh` c.q. `start-fuseki.bat`
4. Start `start-dotwebstack.sh` c.q. `start-dotwebstack.bat`
5. Controleer de correcte werking van fuseki en de dotwebstack door naar http://localhost:8080 te gaan.

Als je aanpassingen hebt gedaan aan de configuratie, stop dan de dotwebstack met CTRL-C en herstart de dotwebstack (stap 4 hierboven).

### Stap 2: Toevoegen ihw dataset

1. Ga naar http://localhost:3030/manage.html;
2. Ga naar het tabblad "add new dataset";
3. Kies als dataset name voor `ihw` (in kleine letters);
4. Kies als dataset type voor "Persistent";
5. Maak de dataset aan via de knop "create dataset".

### Stap 3: Aanpassen configuratie

1. Vervang het bestand `/dotwebstack-theatre-fuseki/dotwebstack/application.yml` met het bestand https://raw.githubusercontent.com/bp4mc2/bp4mc2-ihw/master/resources/application.yml
2. Herstart de dotwebstack;
3. Ga naar http://localhost:8080/begrippen of http://localhost:8080/domeintabellen en controleer of de installatie correct is gegaan;
4. Ga naar http://localhost:8080/beheer om in te loggen op de beheerpagina.

### Stap 4: Inladen bronbestanden

1. Zorg ervoor dat de bronbestanden in de map `bp4mc2-ihw/data` staan.
2. Laat de verschillende bronnen door het aanroepen van de betreffende upload scripts:
    - `upload-begrippen` voor de begrippen;
		- `upload-categorieen` voor de categorieen;
		- `upload-domeintabellen` voor alle domeintabellen;
		-

### Stap 5: Testen van de SOAP webservice

1. Installeer SoapUI, ga hiervoor naar: https://www.soapui.org/downloads/soapui.html (kies voor SoapUI Open Source);
2. Open de SoapUI applicatie;
3. Kies voor "File - Import Project" en selecteer het project `bp4mc2-ihw/resources/SOAP-UI-localhost.xml`;
4. Kies 1 van de services en voer deze uit. Vervang eventuele `?` door de juist waarde;

Tip: de meest eenvoudige webservice is `GetDomainTableNames`, vul daarbij voor `CheckDate` de huidige datum in, formaat `YYYY-MM-DD`.






### Installeren van Apache Fuseki

Voer de volgende stappen uit:

1. Download [Apache Jena Fuseki, versie 3.8.0](http://www-eu.apache.org/dist/jena/binaries/apache-jena-fuseki-3.8.0.zip). Mocht deze niet meer beschikbaar zijn, ga dan naar de [algemene downloadpagina](https://jena.apache.org/download/index.cgi), en kies de meest recente download van Jena Fuseki;
2. Pak de bestanden uit naar `bp4mc2-ihw/target/fuseki` (waarbij `bp4mc2-ihw` de map is met de lokale repo, en zodat `fuseki-server.bat` aanwezig is in de `fuseki` map.
3. Download het bestand [jetty-web.xml](resources/jetty-web.xml) en zet deze in de map `/target/fuseki/webapp/WEB-INF` (hierin staat de maximale omvang van een post upload, verhoog deze als het uploade van grote bestanden niet goed gaat)
4. Start Apache Fuseki via `fuseki-server`.
5. Ga naar [http://localhost:3030](http://localhost:3030) en kies voor "Add dataset";
6. Geef als naam voor de dataset `ihw` op.




### Installeren van Dotwebstack LDT 2.0

Voer de volgende stappen uit:

1. Download [Dotwebstack LDT 2.0 versie 0.21](https://github.com/dotwebstack/dotwebstack-theatre-legacy/releases/download/v0.0.21/dotwebstack-theatre-legacy-0.0.21-distribution.zip);
2. Pak de bestanden uit naar `bp4mc2-ihw/target` (waarbij `bp4mc2-ihw` de map is met de lokale repo, en zodat `start.bat` aanwezig is in de `target` map.
3. Verwijder de folders `/target/config/model` en `/target/config/open-api`.
4. Wijzig het bestand `/target/config/application.yml`, zodat deze er uit komt te zien zoals hieronder is afgebeeld. De wijziging betreft regel 15: (verander: `./config` in `../config`).
5. Start de applicatie met `start`.

Application.yml (ook [hier](resources/application.yml) te vinden):

	01 spring:
	02   main:
	03     banner-mode: "off"
	04   jersey:
	05     type: filter
	06   resources:
	07     static-locations: file:./config/static/,classpath:/static/
	08
	09 logging.level:
	10   org.dotwebstack.framework: INFO
	11   org.dotwebstack.ldtlegacy: DEBUG
	12
	13 dotwebstack:
	14   config:
    15     aquoroot:
	16     resourcePath: file:../config
	17     host: localhost
	18     linkstrategy: global
	19     systemGraph: http://dotwebstack.org/configuration/Theatre
