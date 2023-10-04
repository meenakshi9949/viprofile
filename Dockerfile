FROM naidu789/tomcat:ubuntu

COPY target/vprofile-v2*.war  /usr/local/tomcat/webapps/
