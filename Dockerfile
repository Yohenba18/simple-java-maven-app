FROM openjdk:11
EXPOSE 8080
RUN apt-get -yqq update
VOLUME ["/var/run/docker.sock"]
RUN apt-get -yqq install docker.io
ADD target/simple-project.jar simple-project.jar
ENTRYPOINT ["java", "-jar", "simple-project.jar"]
