# Docker

## Raspberry Pi

* install docker:
    curl -sSL https://get.docker.com | sh
* get docker to autostart:
    sudo systemctl enable docker
    sudo systemctl start docker
* add the pi user to docker group:
    sudo usermod -aG docker pi
* add the Docker CPG key:
    sudo curl https://download.docker.com/linux/raspbian/gpg | sudo apt-key add -

## Install Compose
Not really needed at this time.
* install compose pre-reqs:
    sudo apt install libffi-dev
* install docker-compose:
    sudo pip3 install docker-compose

## Useful

* docker version
* docker ps --all
* docker container ls -a
* docker logs samba -f
* docker stop samba ; docker container rm samba

