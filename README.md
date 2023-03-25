# Docker

update all containers:
* docker compose pull	# grab  updated images
* docker compose up -d	# rebuild containers using updated images
* docker image prune	# remove unused images...

## Useful

* docker version
* docker ps --all
* docker container ls -a
* docker logs samba -f
* docker stop samba ; docker container rm samba

clean-up volumes:
* docker volume prune	# clean-up all unused volumes (probably better than the commands below)
* docker volume ls -qf dangling=true				# list orphaned (dangling) volumes
* docker volume rm $( docker volume ls -qf dangling=true )	# remove dangling volumes
