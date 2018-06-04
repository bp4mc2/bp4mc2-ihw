@echo off
curl -v --header "Content-Type: text/xml;charset=UTF-8" --header "SOAPAction: \"http://rws.services.nl/DomainTableWS/2010/10/DomainTableService/GetDomainTableNames\"" --data @input/GetDomainTableNames.xml http://localhost:8080/DomainTableWS.svc/basic
pause
