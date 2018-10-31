@echo off
curl -v --header "Content-Type: text/xml;charset=UTF-8" --header "SOAPAction: \"http://rws.services.nl/DomainTableWS/2010/10/DomainTableService/GetDomainTableNames\"" --data @input/GetDomainTableNames.xml http://domeintabellen-idsw-ws.rws.nl/DomainTableWS.svc/basic -o output/GetDomainTableNames-RWS.xml
pause
