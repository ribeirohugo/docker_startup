# Jira Software

Guidelines to deploy locally a Jira Software platform.

## Setup Steps

1. Update ``compose.yml`` variables:

    ```
      - 'POSTGRES_USER=jiradbuser'
      - 'POSTGRES_PASSWORD=admin'
      - 'POSTGRES_DB=jiradb'
    ```

2. Run Jira + PostgreSQL stack:

    `docker-compose up`
    
Source: [Stack Overflow](https://stackoverflow.com/questions/62448332/jira-and-postgres-docker-compose)
