FROM tomcat:8.0-alpine
LABEL maintainer="Jyoti"
USER root
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY sample.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
