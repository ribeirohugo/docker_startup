# WSL

This tutorial helps you to use Docker via WSL2 on Windows, without Docker Desktop. It was done using WSL Ubuntu 20.04 LTS.

## Installing WSL

First of all, install WSL. It could be done using Microsoft Store.

Then check your WSL installed distros:

``wsl --list --verbose``

Set WSL 2 version for the distro you want to use, replacing ``<Distro>``. It won't work on version 1. Use the following
command for that:

``wsl --set-version <Distro> 2``

Source: https://ericsysmin.com/2019/07/13/converting-wsl-1-operating-systems-to-wsl-2-on-windows/

## Install Docker

First install the following packages:

``sudo apt update``

``sudo apt install --no-install-recommends apt-transport-https ca-certificates curl gnupg2``

Then install Docker packages:

``sudo apt install docker-ce docker-ce-cli containerd.io``

Add proper user group configs:

``sudo usermod -aG docker $USER``

Configure ``dockerd``:

```
DOCKER_DIR=/mnt/wsl/shared-docker
mkdir -pm o=,ug=rwx "$DOCKER_DIR"
sudo chgrp docker "$DOCKER_DIR"
sudo mkdir /etc/docker
```
    
Finally, run dockerd to initialize Docker:
``sudo dockerd``

Source: https://dev.solita.fi/2021/12/21/docker-on-wsl2-without-docker-desktop.html

## Install Docker Compose

Download docker-compose using cUrl. Replace ``2.5.0`` to the release you want to install.

``sudo curl -L https://github.com/docker/compose/releases/download/2.5.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose``

Add permissions to docker-compose binary:

``sudo chmod +x /usr/local/bin/docker-compose``

Source: https://niwakatech.info/en/setting-up-docker-and-docker-compose-on-wsl2/#toc10
