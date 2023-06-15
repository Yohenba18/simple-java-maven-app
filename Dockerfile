FROM openjdk:11
EXPOSE 8080
ADD target/simple-project.jar simple-project.jar
ENTRYPOINT ["java", "-jar", "simple-project.jar"]
