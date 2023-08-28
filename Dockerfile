FROM maven:3.6.0-jdk-11-slim AS build
COPY . .
RUN mvn pom.xml clean package \
Run mvn pom.xml install
FROM openjdk:17
MAINTAINER baeldung.com

COPY target/testDocker-0.0.1-SNAPSHOT.jar testDocker-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/testDocker-0.0.1-SNAPSHOT.jar"]

