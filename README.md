```
docker-compose v2
```
- `nginx:1.13.8`
- `php:7.0.21-fpm`
- `php:5.6-fpm`
- `mysql:percona`
- `phpmyadmin | mailhog | redis`

**[[Suggestion/Issue](https://github.com/kistters/DevOps-Php-MySQL-Tools/issues/new)]**

##### Magento 2

- config nginx
```
exemplo no arquivo nginx/sample-nginx.conf
crie um <filename>.conf dentro do diretório nginx/conf.d
lembre-se, server_name tem de estar configurado, no linux /etc/hosts
```
- instalar usando composer (rodar os comandos após subir os containers 'docker-compose up')
```
$ docker exec -it work_php-7 bash
$ composer create-project --prefer-dist --repository-url=https://repo.magento.com/ magento/project-community-edition /storage/<diretory> 2.2
```
- develop local permissões ~.~
```
$ docker exec -it work_nginx bash
$ cd  /storage/<diretory>
$ find var vendor generated pub/static pub/media app/etc -type f -exec chmod 777 {} \;
$ find var vendor generated pub/static pub/media app/etc -type d -exec chmod 777 {} \;
$ chmod u+x bin/magento
```
- lembre de criar o database ;D
```
$ docker exec -it work_percona bash
$ mysql -u...
```
continue a instalação pelo browser...
```
quando for preencher o "Database Server Host" coloque:
    alias: percona
    #recomendo
    
    |ou|
    
    ip: 
    $ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' work_percona
    #warning as vezes ao rebuildar os container mudam de IPAddress :kk 
```

<img align="right" src="https://github.com/kistters/Magento2_DevOps/blob/master/.files/mau-mau.png" width="64" height="64" title="Ouçam minha gargalhada fatal - hihihahaha"/>


su www-data -s /bin/sh -c 'php -d memory_limit=2G bin/magento setup:di:compile'