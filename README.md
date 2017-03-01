# arch-docker

This repository contains a Dockerfile and associated scripts to create a Arch Linux base image from scratch. The builds are automatically done and published to [Docker Hub](https://hub.docker.com/jankoppe/arch) via Travis CI.

## Build locally

You can build the image locally as well. Run:

```sh
$ ./prepare.sh
$ docker build -t jankoppe/arch .
```

## How it works

There are regular bootstrap releases for Arch Linux, containing a minimal viable root filesystem. 