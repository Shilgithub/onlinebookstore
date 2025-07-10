#FROM tomcat:9.0
#COPY target/onlinebookstore.war /usr/local/tomcat/webapps/

# Use OpenJDK base image
FROM openjdk:openjdk-17-jdk

# Set working directory inside container
WORKDIR /app

# Copy the downloaded jar file to the container
COPY app/*.jar app.war

# Run the jar file
ENTRYPOINT ["java", "-war", "app.war"]

