FROM ubuntu:20.04

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install Java, Git, wget safely
RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    git \
    wget \
    tzdata \
 && rm -rf /var/lib/apt/lists/*

# Set up Jenkins directory and download Jenkins
RUN mkdir -p /workspace/jenkins && \
    wget https://get.jenkins.io/war/2.521/jenkins.war -O /workspace/jenkins/jenkins.war

WORKDIR /workspace/jenkins

EXPOSE 8080
CMD ["java", "-jar", "jenkins.war"]
