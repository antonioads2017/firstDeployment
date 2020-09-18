mvn clean install
chmod 777 -R target/
docker build -t firstdeployment-app .
export WSPORT=8095
docker run -d -p $WSPORT:8080 --name app/antoniomiguel firstdeployment-app

