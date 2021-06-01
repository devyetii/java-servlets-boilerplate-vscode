docker run -d --name tomcat \
    -v $('pwd')/dist/:/usr/local/tomcat/webapps/ROOT/ \
    -p 8888:8080 tomcat:latest
    