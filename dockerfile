FROM ubuntu:latest
MAINTAINER Rp
RUN apt-get update -y && apt-get upgrade -y && apt-get install openjdk-8-jdk -y
RUN mkdir /rp
WORKDIR /rp
COPY /target/spring-boot-rest-example-0.5.0.war
EXPOSE 8091
EXPOSE 8090
CMD java-jar -Dspring.profiles.active=test spring-boot-rest-example-0.5.0.war
