FROM openjdk:23-jdk

COPY . .

WORKDIR /SportTracker
CMD ["./gradlew", "clean", "bootJar"]
COPY build/libs/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]