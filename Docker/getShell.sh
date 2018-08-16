#!/bin/bash

# If first parameter is not provided will use 'default-service-name'
if [ $# -eq 0 ]; then
  app='default-service-name'
else
  app=$1
fi

container_id=`docker ps -a |grep $app | awk '{print $1}'`

printf "Log as root? [y/n]: "
read asroot

if [ "$asroot" = "y" ]; then
	docker exec -it --user root $container_id bash
else
	docker exec -it $container_id bash
fi