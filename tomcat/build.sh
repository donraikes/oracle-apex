#!/bin/bash
#####################################################
#	File: tomcat/build.sh
#	Author: Donald Raikes
#	Date:	09/22/2020
#
#	Prerequisites:
#		Download all necessary software packages to the software folder, then run this script.
#####################################################
docker build --compress --force-rm \
	--build-arg HTTP_PROXY=$HTTP_PROXY \
	--build-arg HTTPS_PROXY=$HTTPS_PROXY \
	-t dnraikes/tomcat9-ords:202 .
