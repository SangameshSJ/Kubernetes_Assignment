# Use the official Tomcat image
FROM tomcat:9.0

# Copy the WAR file to the Tomcat webapps directory
COPY target/docker-java-sample-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
