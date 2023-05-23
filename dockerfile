# Use a base image with Java installed
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/*.jar /app/JtSpringProject-0.0.1-SNAPSHOT.jar

# Expose the port that the application listens on (if applicable)
EXPOSE 8081

# Run the application when the container starts
CMD ["java", "-jar", "JtSpringProject-0.0.1-SNAPSHOT.jar"]

