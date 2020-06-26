# Getting started

## Run Docker Hello World

docker run hello-world

## Run nginx as daemon and map ports

docker run --name nginx -p 8080:80 -d nginx

## Check running nginx

docker ps 

## Check nginx is running

curl http://localhost:8080

## Check ports

docker port nginx

## Kill the container on ID

docker kill containerID/Name

docker rm containerID/Name

## Run it again

docker run --name nginx -p 8080:80 -d nginx

## Exec into container

docker exec -it nginx /bin/sh

## Mapping a volume (containing index.html)

docker run --name nginx -v $HOME:/usr/share/nginx/html:ro -p 8080:80 -d nginx

## Check images

docker images

## Remove hello-world image

docker rmi hello-world --force

## Getting information

docker inspect nginx

docker stats

docker image inspect nginx

docker network ls

docker network inspact bridge
