# Use a lightweight base image for running the application
FROM openjdk:17-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file from the Jenkins pipeline into the container
COPY target/test.jar ./app.jar

# Expose the port your application runs on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
