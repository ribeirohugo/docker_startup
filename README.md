# Docker Startup
This project will be used to store all startup configurations, files and documentation for start new docker containers.

## 1. LEMP stack startup
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

## 2. LAMP stack startup
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

### 2.1. To change
Don't to forget to define your MySQL root password and also change it in phpMyAdmin, in `docker-compose.yml` file.

```bash
DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=laraveluser
DB_PASSWORD=your_laravel_db_password
```

## 3. Golang

To mount a Golang container image just run ``docker-compose up`` command, in the following version directories available:

- [Golang 1.15](golang/golang1.15)
- [Golang 1.16](golang/golang1.16)

## 4. SQL Servers
In order to easily create SQL server through Docker, the following documentation provides basic guidelines and configurations.

- [MySQL](mysql)
- [MS SQL](mssql)
- [PostgreSQL](postgresql)

## 5. Project Management
Docker allows deploying project management platforms locally:

- [Jira](jira)

## WSL Windows

Check the following tutorial to learn how to use WSL2 and Docker in Windows, without Docker Desktop:

- [WSL2+Docker](WSL.md)
