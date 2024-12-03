# Build stage
FROM maven:3-eclipse-temurin-17 AS build
WORKDIR /app
COPY . /app
RUN mvn clean package -DskipTests

# Final stage
FROM eclipse-temurin:17-jdk as runtime
COPY --from=build /app/target/*.jar demo.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "demo.jar"]
