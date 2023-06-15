FROM openjdk:11
EXPOSE 8080
RUN apt-get -yqq update && apt-get -yqq install docker.io 177 && usermod -g docker jenkins
VOLUME /var/run/docker.sock
ADD target/simple-project.jar simple-project.jar
ENTRYPOINT ["java", "-jar", "simple-project.jar"]
