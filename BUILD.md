De huidige omgeving is gebaseerd op:

- Apache Fuseki als triplestore;
- Dotwebstack LDT 2.0 voor de ontsluiting.

### Requirements

- Een lokale repo van https://github.com/dotwebstack/dotwebstack-framework;
- Een lokale repo van https://github.com/dotwebstack/dotwebstack-theatre;
- Een lokale repo van https://github.com/dotwebstack/dotwebstack-theatre-legacy.

Daarnaast is het handig als de instructie in [CONFIG.md](CONFIG.md) al zijn uitgevoerd.

### Stap 1 (eenmalig): install van de libraries in de lokale maven repository

1. Ga naar `dotwebstack-framework` en checkout de branch *SOAP-1*: `git checkout SOAP-1`;
2. Bouw en installeer: `mvn clean install`;
3. Ga naar `dotwebstack-theatre`, en vervolgens naar de map `security` en checkout de branch *security*: `git checkout security`;
4. Bouw en installeer: `mvn clean install`;
5. Ga naar `dotwebstack-theatre-legacy` en checkout de branch *AQUO-1*: `git checkout AQUO-1`;
6. Bouw de applicatie: `mvn clean package`

In de map `dotwebstack-theatre-legacy/target` staat nu de jar die gebruikt kan worden bij Stap 3 van [CONFIG.md](CONFIG.md)

### Stap 2: opnieuw bouwen en installeren van de SOAP module

Indien de SOAP module is aangepast, is het nodig om deze opnieuw te bouwen. Voer hiervoor de volgende stappen uit:

1. Ga naar `dotwebstack-framework` en vervolgens de map `frontend/soap` (alleen zichtbaar in de branch *SOAP-1*);
2. Bouw en installeer: `mvn clean install`;
3. Vervolg met Stap 3 hieronder.

### Stap 3: opnieuw bouwen van de dotwebstack-theatre-legacy applicatie

Indien de dotwebstack-theatre-legacy applicatie zelf is aangepast (bv de frontend UI), of als de SOAP module opnieuw is gebouwd, moet ook de applicatie zelf opnieuw gebouwd worden. Voer hiervoor de volgende stappen uit:

1. Ga naar `dotwebstack-theatre-legacy` en checkout de branch *AQUO-1*: `git checkout AQUO-1`;
2. Bouw de applicatie: `mvn clean package`
