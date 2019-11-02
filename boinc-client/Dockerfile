## A docker file to run the BOINC client in Kubernetes
## Based upon https://rsmitty.github.io/Containerizing-The-Grid/

FROM ubuntu:14.04
LABEL maintainer="Wesley Shoffner <w.shoffner@gmail.com>"

## Install BOINC client
RUN apt-get update && apt-get install -y boinc-client

## Set working dir
WORKDIR /var/lib/boinc-client

## Copy in our entrypoint script
COPY ./entrypoint.sh /usr/local/bin/

## Ensure the entrypoint is set as executible
RUN ["chmod", "+x", "/usr/local/bin/entrypoint.sh"]

## Initialize the container using the entrypoint script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]