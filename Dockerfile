# FROM tomcat:8.0.20-jre8
# # Dummy text to test 
# COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war


FROM tomcat:9.0-jdk13-openjdk-oracle
RUN rm -rf /usr/local/tomcat/webapps/*
# Dummy text to test
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
EXPOSE 8080

CMD ["catalina.sh", "run"]
