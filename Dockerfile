FROM tomcat:7.0
RUN apt-get update
RUN apt-get install -y vim
ADD target/gamutkart.war /usr/local/tomcat/webapps
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash
