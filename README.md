# Docker Startup
This project will be used to store all startup configurations, files and documentation for star new docker containers.

## LEMP stack startup
Startup configs for a LEMP stack: Linux + Nginx + MySQL + PHP + phpMyAdmin

**Project paths**:
   - [Lemp . PHP 7.3-fpm](/lemp/php7.3-fpm)
   - [Lemp . PHP 7.4-fpm](/lemp/php7.4-fpm)
   - [Lemp . PHP 8.0-fpm](/lemp/php8.0-fpm)
   - [Lemp . PHP 7.4-fpm . w/ Xdebug enabled](/lemp/php7.4-fpm-xdebug)

**Other configs**:
- **URL**: localhost:80
- **phpMyAdmin URL**: localhost:8000
- **HTTP public directory**: /var/www/public/

## LAMP stack startup
Startup configs for a LEMP stack: Linux + Apache + MySQL + PHP + phpMyAdmin

**Project paths**:
   - [Lamp . PHP 7.3-fpm](/lamp/php7.3-fpm)
   - [Lamp . PHP 7.4-fpm](/lamp/php7.4-fpm)
   - [Lamp . PHP 8.0-fpm](/lamp/php8.0-fpm)
   
**Other configs**: 
- **URL**: localhost:80
- **phpMyAdmin URL**: localhost:8000
- **HTTP public directory**: /var/www/public/
- **.conf file**: /usr/local/apache2/conf/httpd.conf

## To change
Don't to forget to define your MySQL root password and also change it in phpMyAdmin, in `docker-compose.yml` file.

```bash
DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=laraveluser
DB_PASSWORD=your_laravel_db_password
```

## SQL Servers
In order to easily create SQL server through Docker, the following documentation provides basic guidelines and configurations.

- [Mysql](mysql)
- [PostgreSQL](postgresql)
