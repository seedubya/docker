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
    sudo curl https://download.docker.com/linux/raspbian/gpg
* setup the Docker repo:
    sudo vi /etc/apt/sources.list
    * add this line:
        deb https://download.docker.com/linux/raspbian/ buster stable