# Use Tomcat 9 with JDK 17
FROM tomcat:9.0-jdk17-openjdk

# Remove default Tomcat apps to keep it clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps folder as ROOT.war
# This makes your app accessible at the main URL (e.g., myapp.onrender.com)
COPY Myapp.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]