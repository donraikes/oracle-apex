#!/bin/bash
# Check to see if this is the first time this script is run:
if [[ ! -f "/u01/www/first_run.txt" ]]; then
	echo "First time running this container."
	echo "Copying all files from $CATALINA_HOME to $CATALINA_BASE"
	pushd $CATALINA_BASE
	cp -r $CATALINA_HOME/* .
	rm -fr bin/*
	touch /u01/www/first_run.txt
	mkdir ords
	cd ords
	unzip /software/ords-20.2.1.227.0350.zip
	cd ../webapps
	mkdir i
	cd i
	cp -r /u01/apex/images/* .
	popd
fi
echo "export PATH=.:$HOME:/u01/sqlcl/bin:/u01/tomcat/bin:$PATH" >> .bashrc
echo "export PS1='$PWD$ '" >> .bashrc
exec /u01/tomcat/bin/catalina.sh run
