De huidige omgeving is gebaseerd op:

- Apache Fuseki als triplestore;
- Dotwebstack LDT 2.0 voor de ontsluiting.

### Requirements

- Een recente versie van de Java Runtime Environment;
- Een lokale repo van http://github.com/bp4mc2/bp4mc2-ihw

### Installeren van Apache Fuseki

Voer de volgende stappen uit:

1. Download [Apache Fuseki, versie 3.6.0](http://www-eu.apache.org/dist/jena/binaries/apache-jena-fuseki-3.6.0.zip);
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
