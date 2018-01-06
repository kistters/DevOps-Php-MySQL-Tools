## Recursos 

```
docker-compose v2
```
- `nginx:1.13.8`
- `php:7.0.21-fpm`
- `php:5.6-fpm`
- `percona`
- `mysql:percona`

 tools
- `phpmyadmin | mailhog | redis`

## Magento 2
```
- install using composer 

$ docker exec -it work_php-7 bash
$ composer create-project --prefer-dist --repository-url=https://repo.magento.com/ magento/project-community-edition /storage/<diretory> 2.2

```
