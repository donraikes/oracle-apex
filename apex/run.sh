#!/bin/bash
docker run -d --name=apex_20.1 --rm \
	-p 1521:1521 \
	-p 5500:5500 \
	-v oradata1:/opt/oracle \
	dnraikes/apex_20.1:latest
