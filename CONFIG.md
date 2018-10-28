De huidige omgeving is gebaseerd op:

- Apache Fuseki als triplestore;
- Dotwebstack LDT 2.0 voor de ontsluiting.

### Requirements

- Een recente versie van de Java Runtime Environment, versie 8;
- Een lokale repo van https://github.com/bp4mc2/bp4mc2-ihw;
- Een lokale repo van https://github.com/dotwebstack/dotwebstack-theatre-fuseki.

Zorg ervoor dat de twee repo's dezelfde root hebben, dus bv:

> `users/<username>/gitrepos/bp4mc2-ihw`
>
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

### Stap 3: Juiste dotwebstack.jar gebruiken

- Voor releases: ga naar https://github.com/bp4mc2/bp4mc2-ihw/releases en gebruik de `dotwebstack.jar` van de meest recente release;
- Voor daily builds: gebruik de `dotwebstack-theatre-legacy/target/dotwebstack-theatre-legacy-{versienummer}.jar`.

1. Vervang het bestand `/dotwebstack-theatre-fuseki/dotwebstack/dotwebstack.jar` met het hierboven genoemde bestand.

### Stap 4: Aanpassen configuratie

1. Vervang het bestand `/dotwebstack-theatre-fuseki/dotwebstack/application.yml` met het bestand https://raw.githubusercontent.com/bp4mc2/bp4mc2-ihw/master/resources/application.yml
2. Herstart de dotwebstack;
3. Ga naar http://localhost:8080/begrippen of http://localhost:8080/domeintabellen en controleer of de installatie correct is gegaan;
4. Ga naar http://localhost:8080/beheer om in te loggen op de beheerpagina.

### Stap 5: Inladen bronbestanden

1. Zorg ervoor dat de bronbestanden in de map `bp4mc2-ihw/data` staan.
2. Laat de verschillende bronnen door het aanroepen van de betreffende upload scripts:
    - `upload-begrippen` voor de begrippen;
		- `upload-categorieen` voor de categorieen;
		- `upload-domeintabellen` voor alle domeintabellen;
		- `upload-links` voor de links tussen domeintabelwaarden en begrippen;
		- `upload-metadata` voor de metadata van de domeintabellen;
		- `upload-vocabulaire` voor de aquo vocabulaire.

### Stap 6: Testen van de SOAP webservice

1. Installeer SoapUI, ga hiervoor naar: https://www.soapui.org/downloads/soapui.html (kies voor SoapUI Open Source);
2. Open de SoapUI applicatie;
3. Kies voor "File - Import Project" en selecteer het project `bp4mc2-ihw/resources/SOAP-UI-localhost.xml`;
4. Kies 1 van de services en voer deze uit. Vervang eventuele `?` door de juist waarde;

Tip: de meest eenvoudige webservice is `GetDomainTableNames`, vul daarbij voor `CheckDate` de huidige datum in, formaat `YYYY-MM-DD`.
