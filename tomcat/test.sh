#!/bin/bash
docker rm tomcat9a

docker run -d --name=tomcat9a \
	-p 8080:8080 \
		-p 8443:8443 \
		-v	/home/vagrant/oracle-apex/tomcat/test:/u01/www \
		dnraikes/tomcat9:latest 
