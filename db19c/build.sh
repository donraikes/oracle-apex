#!/bin/bash
docker build --compress --force-rm \
	--build-arg HTTP_PROXY=$HTTP_PROXY \
	--build-arg HTTPS_PROXY=$HTTPS_PROXY \
	--build-arg DB_EDITION=EE \
	-t dnraikes/db19c:latest .
