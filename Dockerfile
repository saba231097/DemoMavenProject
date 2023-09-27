FROM tomcat:9.0
ADD **/*.war /opt/apache-tomcat-9.0.80/webapps/
EXPOSE 9091
CMD ["catalina.sh", "run"]