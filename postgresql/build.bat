docker build -t eg_postgresql .
docker run -P --name pg_test eg_postgresql