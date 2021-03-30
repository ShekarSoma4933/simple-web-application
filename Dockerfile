FROM openjdk:8-alpine

RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app

ENV PROJECT_HOME /opt/app

COPY target/leasingapp*.jar $PROJECT_HOME/leasingapp.jar

WORKDIR $PROJECT_HOME

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","./leasingapp.jar"]




























#ENTRYPOINT ["java", "-Dspring.data.mongodb.uri=mongodb://mongo:27017/spring-mongo","-Djava.security.egd=file:/dev/./urandom","-jar","./spring-boot-mongo.jar"]