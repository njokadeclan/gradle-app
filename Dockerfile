# Use a lightweight OpenJDK 8 image
FROM openjdk:8-jre-alpine

# Create and set working directory in container
WORKDIR /usr/app

# Copy the pre-built JAR into the container
COPY app.jar app.jar

# Expose application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
