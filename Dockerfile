#FROM tomcat:8.0-alpine
#LABEL maintainer="Jyoti"
#USER root
#COPY tomcat-users.xml /usr/local/tomcat/conf/
#COPY sample.war /usr/local/tomcat/webapps/

#EXPOSE 8080
#CMD ["catalina.sh", "run"]

FROM jenkins/jenkins:lts
LABEL MAINTAINER="nishant"
USER root
WORKDIR /opt
RUN apt-get update -y \
 && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
 && apt-get install -y nodejs
RUN wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
RUN mkdir /opt/maven
RUN tar -xvzf apache-maven-3.6.3-bin.tar.gz -C /opt/
EXPOSE 8080
