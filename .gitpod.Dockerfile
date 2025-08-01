FROM ubuntu:20.04

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y openjdk-17-jdk wget git && \
    wget https://get.jenkins.io/war/2.521/jenkins.war && \
    mkdir /home/gitpod/.jenkins

EXPOSE 8080
CMD ["java", "-jar", "jenkins.war"]
