FROM java:8
COPY /target/firstDeployment.jar $DEPLOY_DIR
ENTRYPOINT ["java","-jar","firstDeployment.jar", "WSPORT"]

