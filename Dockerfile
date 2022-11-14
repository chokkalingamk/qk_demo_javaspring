FROM openjdk:8-jdk-alpine
ENV PORT 8080
EXPOSE 8080
RUN mvn package
COPY target/*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-jar", "app.jar"]