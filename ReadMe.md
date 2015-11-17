# Udir Proxy 

Nginx caching proxy for http://data.udir.no, Utdanningsdirektoratet (Udir).

# Building and distribution

## Create Docker Image
    ./build.sh
## Deploy
    ndla deploy [local|test|prod] udir-proxy

You need to have a docker daemon running locally. Ex: [docker-machine](https://docs.docker.com/machine/)

