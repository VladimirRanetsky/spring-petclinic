FROM java:8-jdk-alpine
ARG JAR_FILE
WORKDIR /usr/app
EXPOSE 8080
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]