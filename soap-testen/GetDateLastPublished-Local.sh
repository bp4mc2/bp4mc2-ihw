curl -v --header "Content-type: text/xml;charset=UTF-8" --header 'SOAPAction: "http://rws.services.nl/DomainTableWS/2010/10/DomainTableService/GetDateLastPublished"' --data @input/GetDateLastPublished.xml http://localhost:8080/DomainTableWS.svc/basic -o output/GetDateLastPublished-Local.xml
