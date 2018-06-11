
container='work_nginx'
host='it.community'

IPNGINX=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $container) &&\
COMMANDCONT="echo $IPNGINX $host >> /etc/hosts && cat /etc/hosts" &&\
docker exec -it work_php-5.6-alpine sh -c "$COMMANDCONT"