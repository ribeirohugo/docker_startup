docker cp example.sql postgresql_database_1:/docker-entrypoint-initdb.d/example.sql
docker exec -u root postgresql_database_1 psql docker docker -f /docker-entrypoint-initdb.d/example.sql