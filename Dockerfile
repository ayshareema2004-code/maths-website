FROM tomcat:9-jdk17
COPY Mathswebsite/src/main/webapp/ /usr/local/tomcat/webapps/ROOT/
