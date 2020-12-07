FROM anapsix/alpine-java
LABEL maintainer="essteam.online"
COPY /target/spring-petclinic-2.3.0.jar /home/spring-petclinic-2.3.0.jar
CMD ["java","-jar","/homespring-petclinic-2.3.0.jar"]
