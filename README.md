# Primeiro Deployment para Disciplica SD 2020.1

  

### Fiz uma aplicação webservice usando Spring Boot!
### Porta Usada: 8095
#### Criei um dockerfile para o container da aplicação
FROM java:8
COPY /target/firstDeployment.jar $DEPLOY_DIR
ENTRYPOINT ["java","-jar","firstDeployment.jar", "WSPORT"]

#### Clonei os arquivos para o server AWS disponibilizado pelo professor;
antoniomiguel/firstDeployment

#### Rodei o script run.sh para rodar o container com o name antoniomiguel-app rodando na porta 8095, usando o maven para criar o .JAR:
mvn clean install  
chmod 777 -R target/  
docker build -t firstdeployment-app .  
export WSPORT=8095  
docker run -d  -p $WSPORT:8080 --name app-antoniomiguel firstdeployment-app

- Caso queira parar e remover o container so rodar o stop.sh!

#### So definir o WSPORT com a porta escolhida e retornará o Status "OK!" usando as linhas:
WSPORT=8095
curl http://localhost:$WSPORT/status

### FIM!