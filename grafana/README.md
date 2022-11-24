# Grafana

Guidelines to set up Grafana docker container using Docker ``run`` command.

## Setup Steps

Using Docker ``run`` command, makes possible to create a Grafana container. 

1. Run the following ``docker run`` command.
``docker run -d --name=grafana -p 3000:3000 grafana/grafana``

2. When finished, open the URL http://localhost:3000 in browser, in order to access the Grafana UI.

3. Insert ``admin`` username and ``admin`` password: it will redirect to set a new password for admin user.
