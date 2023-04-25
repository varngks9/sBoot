FROM ubuntu:18.04

MAINTAINER varungks

RUN apt-get update && apt-get -y install openjdk-8-jdk  &&  apt-get -y install maven
RUN apt-get install -y git
ADD  target/spring-boot-rest-example-0.5.0.war spring-boot-rest-example-0.5.0.war
EXPOSE 8090
EXPOSE 8091

CMD java -jar sBoot.war
