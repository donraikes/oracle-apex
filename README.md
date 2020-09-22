# oracle-apex:

This repository contains the dockerfiles and other files necessary to build my db19c+apex and tomcat+ords stack.

##	db193-apex201:
The apex folder contains the necessary files to build the db193-apex201 image. It is based on the
container-registry.oracle.com/database/enterprise:19.3.0.0 image but includes an install of apex latest release.

After starting the container and waiting for its health to be "healthy", use:
  
      $ docker exec -ti db193-apex bash

to open a bash shell on the container. run:

	$ ./setPassword.sh

This will allow you to set the sys and system passwords.

Now run:

	$ sqlplus sys/\<password\> as sysdba
	sql\> alter session set container=orclpdb1;
	sql> create tablespace apex datafile='/opt/oracle/oradata/ORCLCDB/ORCLPDB1/apex01.dbf size 1G autoextend on next 1m;
	sql\> exit

Now that the tablespace for apex is created, cd to the apex folder and run:

	apex$ sqlplus sys/\<password\>@orclpdb1 as sysdba @install-apex.sql

This sql script performs the apex installation into the database you  will be prompted for a couple of passwords, but
all other passwords are hardcoded to be Welcome#1.

##	tomcat9-ords:

The tomcat folder contains the necessary files to build the tomcat9-ords image.

