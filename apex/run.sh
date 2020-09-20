#!/bin/bash
docker run -d --name=apex_20.1 --rm \
	-e HTTP_PROXY=$HTTP_PROXY \
	-e $HTTPS_PROXY=$HTTPS_PROXY \
	-v oradata1:/opt/oracle \
	dnraikes/apex_20.1:latest
