# Use lightweight OpenJDK 8 base image
FROM openjdk:8-jre-alpine

# Set working directory
WORKDIR /app

# Allow passing the JAR file as a build argument
ARG JAR_FILE=build/libs/my-app-1.0-SNAPSHOT.jar

# Copy the JAR file into the image
COPY ${JAR_FILE} app.jar

# Expose the application's port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
