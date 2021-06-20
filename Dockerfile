FROM openjdk:11
EXPOSE 8080
RUN mkdir /app
COPY ./build/libs/medex-0.0.1-SNAPSHOT-plain.jar /app/app.jar
COPY ./src/main/resources/config.yml.server /app/config.yml
WORKDIR /app
ENTRYPOINT ["java", "-jar", "app.jar"]
