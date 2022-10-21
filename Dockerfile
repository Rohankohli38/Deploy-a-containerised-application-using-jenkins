From openjdk:12-alpine

ADD target/spring-petclinic-2.7.3.jar /spring-petclinic.jar

CMD ["java", "-jar", "spring-petclinic.jar"]

EXPOSE 8080
