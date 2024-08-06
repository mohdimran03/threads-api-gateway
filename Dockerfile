FROM amazoncorretto:17.0.7-alpine
WORKDIR /app
COPY src /app/src
COPY ./target/api-gateway.jar /app
EXPOSE 8081
CMD ["java", "-jar", "api-gateway.jar"]