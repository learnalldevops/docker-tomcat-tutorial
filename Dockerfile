FROM jyotiupadhyay/samplewar:4
LABEL maintainer="Jyoti"

COPY sample.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
