# oracle-apex:

This repository is a non-traditional microservice container because it encompases not only the oracle 19.3.0 database
with apex installed, but it also includes the tomcat server which is used to serve the ords services for the database.

##	oracle database 19.3.0:

The db19c folder is a copy of the 19.3.0 folder from https://github.com/oracle/docker-images.git the
OracleDatabase/SingleInstance/dockerfiles/19.3.0 folder.  All i have added are the build.sh and run.sh scripts.
