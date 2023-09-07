# Use an official Tomcat runtime as a parent image
FROM tomcat:9-jre11-slim

# Remove the default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your Spring Boot application WAR file into the Tomcat webapps directory
COPY target/MySpringBootApplication.war /usr/local/tomcat/webapps/ROOT.war

# Define an environment variable
ENV APP_NAME=MySpringBootApplication

# Expose port 8080 to allow incoming HTTP traffic
EXPOSE 8080

# Run Tomcat when the container launches
CMD ["catalina.sh", "run"]
