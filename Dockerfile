FROM eclipse-temurin:23

WORKDIR /SportTracker

COPY . ./
RUN chmod +x gradlew
RUN ./gradlew clean bootJar

EXPOSE 8080
CMD ["sh", "-c", "java -jar build/libs/*.jar"]