FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt-get update && apt-get install mariadb-client -y
EXPOSE 8080
EXPOSE 50000
