From openjdk:12-alpine

COPY target/spring-petclinic-2.7.3.jar /spring-petclinic.jar

CMD ["java", "-jar", "spring-petclinic.jar"]
