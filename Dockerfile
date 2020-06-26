FROM tomcat:8.0-alpine
LABEL maintainer="prabu"

COPY sample.war /usr/local/tomcat/webapps/

EXPOSE 8888
CMD ["catalina.sh", "run"]
