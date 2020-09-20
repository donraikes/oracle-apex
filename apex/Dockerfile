####################################
#	File:	apex/Dockerfile
#	Author: Donald Raikes <don.raikes@oracle.com>
#	Date:	09/19/2020
#
####################################
FROM	dnraikes/db19c:latest


ENV	ORACLE_BASE=/opt/oracle \
	ORACLE_HOME=/opt/oracle/product/19c/dbhome_1
ENV	PATH=${ORACLE_HOME}/bin:${PATH} \
	APEX_DIR=${ORACLE_HOME}/apex

#--------------------------------------
#	Install necessary packages:
#--------------------------------------
USER	root
RUN	yum install -y unzip 

#--------------------------------------
#	Copy the apex zip file.
#--------------------------------------
USER	oracle
COPY	apex_20.1.zip /home/oracle/

#--------------------------------------
#	Unzip and prepare for installation:
#--------------------------------------
WORKDIR	/home/oracle
RUN	unzip apex_20.1.zip 

COPY ./sql/* /home/oracle/apex/
COPY	./scripts/* /home/oracle/

USER	root
RUN	chmod 777 install-apex.sh && \
	chown oracle:dba install-apex.sh

USER	oracle
