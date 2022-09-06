FROM openjdk:17-jdk-alpine3.14
EXPOSE 8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} springboot-swagger-test-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/app.jar"]


# Start with a base image containing Java runtime
FROM openjdk:17-jdk-alpine3.14

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/springboot-swagger-test-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} springboot-swagger-test-0.0.1-SNAPSHOT.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/pringboot-swagger-test-0.0.1-SNAPSHOT.jar"]