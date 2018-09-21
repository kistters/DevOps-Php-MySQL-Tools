#!/bin/bash

docker rm -f $(docker ps -a -q)

if ! docker node ls > /dev/null 2>&1; then
   docker swarm init
fi
 
docker build -t devops-php7-alpine:latest ./php/php-fpm-7-alpine
docker build -t devops-php5.6-alpine:latest ./php/php-fpm-5.6-alpine

docker stack deploy -c DevOps-Nginx-Php-MySQL.yml DevOpsNginxPhpMySQL

# validate
#docker-compose -f DevOps-Nginx-Php-MySQL.yml up
#docker stack services DevOpsNginxPhpMySQL
#docker stack rm DevOpsNginxPhpMySQL