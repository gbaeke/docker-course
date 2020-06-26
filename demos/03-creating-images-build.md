# Creating a custom image with your own software

## Use folder creating-images-build
## Use realtime-go folder (http branch)

docker build -t gbaeke/rtdemo:1.0.0 .

## Check the image (12MB - why?)

docker images gbaeke/rtdemo:1.0.0

## Check the layers (2 layers)

docker image inspect gbaeke/rtdemo:1.0.0

## Create user-defined bridge network

docker network create rtdemo

## Run this container - requires redis (cannot reuse dapr instance)

docker run --network rtdemo --name redis -d redis

docker run --network rtdemo --name rt -p 8080:8080 -e REDISHOST=redis:6379 -it gbaeke/rtdemo:1.0.0

