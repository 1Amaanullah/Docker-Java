#Tells Which Java Image to Download from DOcker Hub
FROM openjdk:11-jre-bullseye
#ADD Or COPY for Copying the Jar file in Root directory
COPY /target/DockerSpringBoot-0.0.1.jar DockerSpringBoot-0.0.1.jar
#Expose the port
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
EXPOSE 8080
#Give Entry point ie how to execute
ENTRYPOINT [ "java","-jar","DockerSpringBoot-0.0.1.jar" ]
#Commands
#To Build Docker Image use Command
#docker build -f (FileName) Dockerfile -t (TagName can be anything) DockerSpringBoot .(File Present in Root directory)
#docker images ls (To View All Images)
#docker run -p 8080:8080 tagName (Can be tag which we created)
