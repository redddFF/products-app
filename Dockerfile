# Use a base image with Java and the necessary tools
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the executable JAR file into the container
COPY target/products-app-0.0.1-SNAPSHOT.jar products-app-0.0.1-SNAPSHOT.jar

# Expose the desired port
EXPOSE 8081

# Set the command to run the application when the container starts
CMD ["java", "-jar", "products-app-0.0.1-SNAPSHOT.jar"]

