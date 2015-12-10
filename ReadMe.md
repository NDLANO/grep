# Udir Proxy

Nginx caching proxy for http://data.udir.no, Utdanningsdirektoratet (Udir).

# Environment variables
The nginx.conf file is replaces by a nginx.tmpl file where you can use placeholders like ${PLACEHOLDER}.
The placeholder is replaced by the value from the environment variable with the same name when the nginx is started with
the start-nginx.sh command.

The following environmen variables are used by this project:
* HOST_BIND_PORT - The external port exposed by the docker container
* APPLICATION_PORT - The internal port nginx is running
* DNS_SERVER - The IP address of the DNS-server to use
* DATA_VOLUME_CONTAINER - The name of the Docker data volume container the nginx cache files are saved.
* VOLUME The path of the nginx cache files used

# Building and distribution

## Create Docker Image
    ./build.sh
## Deploy
   See the deploy project.

You need to have a docker daemon running locally. Ex: [docker-machine](https://docs.docker.com/machine/)

