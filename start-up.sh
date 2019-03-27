#!/bin/bash



if [[ $1 == 'rm' ]]; then
	docker rm -f $(docker ps -a -q)
fi


if [[ $1 == 'build' ]]; then
	docker build -t devops-php7-alpine:latest ./php/php-fpm-7-alpine
	docker build -t devops-php5.6-alpine:latest ./php/php-fpm-5.6-alpine
fi

if [[ $1 == 'all' ]]; then
	docker-compose -f DevOps-Nginx-Php-MySQL.yml up
fi


if [[ $1 == 'fit' ]]; then
	docker-compose -f DevOps-Nginx-Php-MySQL.yml up proxy php-7 percona redis
fi

if [[ $1 == 'down' ]]; then
	docker-compose -f DevOps-Nginx-Php-MySQL.yml down
fi

# if ! docker node ls > /dev/null 2>&1; then
#    docker swarm init
# fi

# docker stack rm DevOpsNginxPhpMySQL
# docker stack deploy -c DevOps-Nginx-Php-MySQL.yml DevOpsNginxPhpMySQL

# validate


#docker stack services DevOpsNginxPhpMySQL
