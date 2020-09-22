#!/bin/bash
docker build --compress --force-rm \
	--build-arg HTTP_PROXY=$HTTP_PROXY \
	--build-arg HTTPS_PROXY=$HTTPS_PROXY \
	-t dnraikes/db193-apex:201 .
