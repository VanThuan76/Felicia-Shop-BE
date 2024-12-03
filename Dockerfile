FROM openjdk:11-jdk-slim
WORKDIR /app
COPY . /app
RUN chmod +x ./mvnw  # Cấp quyền thực thi cho mvnw
RUN ./mvnw clean install
EXPOSE 8080
CMD ["java", "-jar", "target/app.jar"]
