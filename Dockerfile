# Build stage
FROM maven:3-eclipse-temurin-17 AS build
WORKDIR /app

# Copy only necessary files (pom.xml and src) to reduce context size
COPY pom.xml /app
COPY src /app/src

# Build the application, skipping tests
RUN mvn clean package -DskipTests

# Final stage
FROM eclipse-temurin:17-jdk AS runtime

# Copy the jar file from the build stage
COPY --from=build /app/target/*.jar /app/demo.jar

# Expose port for the application
EXPOSE 8080

# Set the entrypoint for the container
ENTRYPOINT ["java", "-jar", "/app/demo.jar"]
