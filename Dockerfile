FROM openjdk:17-jdk-alpine3.14
EXPOSE 8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} springboot-swagger-test-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/app.jar"]