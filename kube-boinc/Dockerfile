## A docker file to run the BOINC client in Kubernetes
## Based upon https://rsmitty.github.io/Containerizing-The-Grid/
## Based upon https://github.com/ckleban/boinc-on-k8

FROM ubuntu:14.04
LABEL MAINTAINER Wesley Shoffner <w.shoffner@gmail.com>

# Update and install.
RUN \
    apt-get update --quiet \
    && apt-get install \
        --yes \
        --no-install-recommends \
        --no-install-suggests \
        boinc-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Adding a working volume.
# ONBUILD VOLUME /data

# Assigning the working volume.
# WORKDIR /data

## Initialize the container using the entrypoint script
ENTRYPOINT ["/usr/bin/boinc"]