FROM openjdk:17-jdk-alpine3.14
EXPOSE 8080
ARG JAR_FILE=build/libs/springboot-swagger-test-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
RUN apk update && apk add bash
RUN mkdir -p /tmp/local/config
RUN touch /tmp/local/config/config.properties
ENTRYPOINT ["java","-jar","/app.jar"]
