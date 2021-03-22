# PostgreSQL

Guidelines to set up a PostgreSQL docker build based on different sources.

## Setup using Dockerfile

1. Start by pulling the Dockerfile from this folder.

2. Pull Postgres image from docker

    ```docker pull postgres```

3. Build docker image

    `docker build -t eg_postgresql .`

4. Run the PostgreSQL server container (in the foreground):

    `docker run --rm -P --name pg_test eg_postgresql`
    
Source: [Docker](https://docs.docker.com/engine/examples/postgresql_service/)

## Setup using Docker Compose 

1. Pull mysql from Docker:
    
    ```docker pull postgres```

2. Create a ``stack.yml`` with the following code:

    ```
    # Use postgres/example user/password credentials
    version: '3.1'
    
    services:
    
      db:
        image: postgres
        restart: always
        environment:
          POSTGRES_PASSWORD: example
    ```

3. Run command:
    
   ```docker-compose -f stack.yml up``` 

Source: [Docker Hub](https://hub.docker.com/_/mysql)

## Initialize database

Run ``init_db.bat`` with the following code and make changes according to Docker container name and SQL schema file.

````
docker cp example.sql postgresql_database_1:/docker-entrypoint-initdb.d/example.sql
docker exec -u root postgresql_database_1 psql docker docker -f /docker-entrypoint-initdb.d/example.sql
````

``example.sql`` - SQL file with database schema.

``postgresql_database_1`` - Docker container name.


## SQL Developer Setup

1. Download PostgreSQL JDBC driver from [official website](https://jdbc.postgresql.org/download.html).

2. Extract the `.jar` file and paste it on `\sqldeveloper\jdk\jre\lib\ext` directory.

3. Select the PostgreSQL type option when creating a new SQL Developer connection.
