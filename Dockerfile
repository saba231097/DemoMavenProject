FROM tomcat:9.0
ADD **/*.war /opt/apache-tomcat-9.0.80/webapps/
EXPOSE 8080
CMD ["startup.sh", "run"]