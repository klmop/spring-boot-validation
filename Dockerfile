FROM anapsix/alpine-java
LABEL maintainer="essteam.online"
COPY /target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar
