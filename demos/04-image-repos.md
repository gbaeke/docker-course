# Publish image to a registry

## Login to Docker Hub (create an account there first)

docker login

## push a docker image (you are actually pushing to docker.io/gbaeke/rtdemo)
## docker.io is the registry

docker push gbaeke/rtdemo:1.0.0

## check the image on Docker Hub

There will be a repository called rtdemo with one image (probably) tagged 1.0.0

## now you can run this image wherever you have a connection to Docker Hub

## push the container to Azure Container Registry

az acr list -o table

az acr login --name gebareg

## tag my image

docker tag gbaeke/rtdemo:1.0.0 gebareg.azurecr.io/rtdemo:1.0.0

## check images

docker images

## push to Azure Container Registry

docker push gebareg.azurecr.io/rtdemo:1.0.0

## check image in ACR

az acr repository show -n gebareg --image rtdemo:1.0.0

