FROM openjdk:8-jre
COPY build/libs/calculator-0.0.1-SNAPSHOT.jar app.jar
RUN sudo curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
ENTRYPOINT ["java", "-jar", "app.jar"]
