curl -v --header "Content-type: multipart/related;charset=UTF-8" --header 'SOAPAction: "http://rws.services.nl/DomainTableWS/2010/10/DomainTableService/GetDomainTableNames"' --data @input/GetDomainTableNames.xml http://localhost:8080/DomainTableWS.svc/basic -o output/GetDomainTableNames-Local-XOP.xml
