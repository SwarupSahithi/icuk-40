# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY sonarscanner-maven-basic-1.0-SNAPSHOT.jar app.jar

# Set the entrypoint to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
