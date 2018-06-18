echo Archive old jar
mv target/jar/dotwebstack-theatre-legacy.jar target/jar/dotwebstack-theatre-legacy-$(date +"%Y%m%d%H%M").jar
echo Deploy new jar
cp ../dotwebstack-theatre-legacy/target/dotwebstack-theatre-legacy*.jar target/jar/dotwebstack-theatre-legacy.jar
