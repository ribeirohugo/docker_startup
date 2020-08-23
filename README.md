# Docker Startup
This project will be used to store all startup configurations, files and documentation for star new docker containers.

## LEMP stack startup
Startup configs for a LEMP stack: Linux + Nginx + MySQL + PHP + phpMyAdmin

- **Project path:** [/ribeirohugo/lemp](https://github.com/ribeirohugo/docker_startup/tree/master/lemp)
- **URL**: localhost:80
- **phpMyAdmin URL**: localhost:8000
- **Home HTTP directory**: /var/www/public/

Part of this code was based on [@ Digital Ocean](https://www.digitalocean.com/community/tutorials/how-to-set-up-laravel-nginx-and-mysql-with-docker-compose) information and should be read in there. You can also check more detailed instructions.

## LAMP stack startup
Startup configs for a LEMP stack: Linux + Apache + MySQL + PHP + phpMyAdmin

- **Project path:** [/ribeirohugo/lamp](https://github.com/ribeirohugo/docker_startup/tree/master/lemp)
- **URL**: localhost:80
- **phpMyAdmin URL**: localhost:8000
- **Home HTTP directory**: /var/www/public_html/

## To change
Don't to forget to define your MySQL root password and also change it in phpMyAdmin, in `docker-compose.yml` file.

```bash
MYSQL_DATABASE: laravel
MYSQL_ROOT_PASSWORD: your_mysql_root_password
```
