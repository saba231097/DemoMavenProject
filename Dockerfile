FROM tomcat:9.0
ADD **/*.war /opt/tomcat/apache-tomcat-9.0.80/webapps
EXPOSE 9090
CMD ["catalina.sh", "run"]