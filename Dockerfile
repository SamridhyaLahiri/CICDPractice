# Use a slim Java 11 runtime image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled jar from the Maven target folder
COPY target/Calculator-1.0-SNAPSHOT.jar app.jar

# Expose port 8080 (optional; only needed if your app opens a server)
EXPOSE 8080

# Command to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
