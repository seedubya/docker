# Docker

## Raspberry Pi

* install docker (from https://docs.docker.com/engine/install/debian/):
    ```
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo groupadd docker
    sudo usermod -aG docker $USER
    sudo systemctl enable docker.service
    sudo systemctl enable containerd.service
    ```

## Useful

* docker version
* docker ps --all
* docker container ls -a
* docker logs samba -f
* docker stop samba ; docker container rm samba

