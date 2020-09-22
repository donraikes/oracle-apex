####################################
#	File:	apex/Dockerfile
#	Author: Donald Raikes <don.raikes@oracle.com>
#	Date:	09/19/2020
#
####################################
FROM	container-registry.oracle.com/database/enterprise:19.3.0.0
LABEL	maintainer don.raikes@oracle.com


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
COPY	./software/apex_20.1.zip /home/oracle/

#--------------------------------------
#	Unzip and prepare for installation:
#--------------------------------------
WORKDIR	/home/oracle
RUN	unzip apex_20.1.zip 

COPY ./sql/* /home/oracle/apex/
USER	root
run	chown -R oracle:dba /home/oracle/apex

USER	oracle
EXPOSE	1521 5500
