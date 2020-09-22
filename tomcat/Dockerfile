FROM	oraclelinux:7-slim
LABEL	maintainer don.raikes@oracle.com

ENV	CATALINA_HOME=/u01/tomcat \
	CATALINA_BASE=/u01/www \
	ORDS_HOME=/u01/ords \
	SOFTWARE=/software \
	SQLCL_HOME=/u01/sqlcl 

WORKDIR /
RUN	yum upgrade -y && \
	yum install -y java-11-openjdk-headless unzip && \
	mkdir -p /u01/ords && \
	mkdir -p /u01/www && \
	useradd -m tomcat  && \
	chown -R tomcat:tomcat /u01

COPY	./software/* ${SOFTWARE}/
COPY	./scripts/* /home/tomcat/

WORKDIR /u01
RUN	tar -zxf ${SOFTWARE}/apache-tomcat-9.0.37.tar.gz && \
	mv apache-tomcat-9.0.37 tomcat && \
	unzip ${SOFTWARE}/sqlcl-20.2.0.174.1557.zip && \
	unzip ${SOFTWARE}/apex_20.1.zip

WORKDIR	/home/tomcat
RUN	chmod +x *.sh && \
	chown tomcat:tomcat *.sh && \
	chown -R tomcat:tomcat /u01

USER	tomcat

EXPOSE	8080 8443
VOLUME	/u01/www
ENV	CATALINA_HOME=/u01/tomcat \
	CATALINA_BASE=/u01/www
CMD	/home/tomcat/start.sh
