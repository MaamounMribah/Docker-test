FROM openjdk:17
MAINTAINER baeldung.com
COPY target/testDocker-0.0.1-SNAPSHOT.jar testDocker-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/testDocker-0.0.1-SNAPSHOT.jar"]

