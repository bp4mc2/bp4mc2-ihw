curl -v --header "Content-type: text/xml;charset=UTF-8" --header 'SOAPAction: "http://rws.services.nl/DomainTableWS/2010/10/DomainTableService/GetDomainTableInfo"' --data @input/GetDomainTableInfo.xml http://domeintabellen-idsw-ws.rws.nl/DomainTableWS.svc/basic -o output/GetDomainTableInfo-RWS.xml
