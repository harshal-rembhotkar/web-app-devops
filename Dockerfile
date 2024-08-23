
FROM openjdk:17-jdk-alpine


WORKDIR /app


COPY ./target/webapp-0.0.1-SNAPSHOT.jar /app/webapp.jar

RUN chmod +x /app/webapp.jar

EXPOSE 8080


CMD ["java", "-jar", "webapp.jar"]
