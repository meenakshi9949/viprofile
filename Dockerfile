FROM sureshreddy1997/tomcat:amazon

COPY target/vprofile-v2*.war  /usr/local/tomcat/webapps/
