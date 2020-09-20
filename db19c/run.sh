#!/bin/bash
docker run -d --name db19c \
	-e HTTP_PROXY=$HTTP_PROXY \
	-e HTTPS_PROXY=$HTTPS_PROXY \
	-p 1521:1521 -p 5500:5500 \
-v oradata1:/opt/oracle \
dnraikes/db19c:latest
