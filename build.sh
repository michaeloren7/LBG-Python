#!/bin/bash

if docker logs LBG-Python > /dev/null; then
	if docker exec lbg-sample ls > /dev/null; then
		docker stop LBG-Python
	else
		sleep 1
	fi
	docker rm LBG-Python
else
	sleep 1
fi
if docker image history eu.gcr.io/lbg-mea-12/lbg-python:mo_v${old_version} > /dev/null; then
	docker rmi eu.gcr.io/lbg-mea-12/lbg-python:mo_v${old_version}
else
	sleep 1
fi
docker build -t eu.gcr.io/lbg-mea-12/lbg-python:mo_v${version} .
docker run -d -p 80:${PORT} -e PORT=${PORT} --name LBG-Python eu.gcr.io/lbg-mea-12/lbg-python:mo_v${version}
