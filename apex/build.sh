#!/bin/bash
docker build --compress --force-rm --no-cache \
	--build-arg HTTP_PROXY=$HTTP_PROXY \
	--build-arg HTTPS_PROXY=$HTTPS_PROXY \
	-t dnraikes/apex_20.1:latest .
