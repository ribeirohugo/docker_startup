# MySQL

Guidelines to set up a MySQL docker build based on different sources.

## Setup Steps

1. Pull MySQL image from Docker

    ```docker pull mysql```

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

4. Run the PostgreSQL server container (in the foreground):

    `docker-compose -f stack.yml up`
    
Source: [Docker Hub](https://hub.docker.com/_/mysql)
