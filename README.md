# arch-docker

![travis ci](https://img.shields.io/travis/JanKoppe/arch-docker/master.svg)
![docker pulls](https://img.shields.io/docker/pulls/jankoppe/arch.svg)
![docker stars](https://img.shields.io/docker/stars/jankoppe/arch.svg)
[![](https://images.microbadger.com/badges/image/jankoppe/arch.svg)](https://microbadger.com/images/jankoppe/arch "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/jankoppe/arch.svg)](https://microbadger.com/images/jankoppe/arch "Get your own version badge on microbadger.com")

This repository contains a Dockerfile and associated scripts to create a Arch Linux base image from scratch. The builds are automatically done and published to [Docker Hub](https://hub.docker.com/r/jankoppe/arch) via Travis CI.

## Build locally

You can build the image locally as well. Run:

```sh
$ ./prepare.sh
$ docker build -t jankoppe/arch .
```

## How it works

There are regular bootstrap releases for Arch Linux, containing a minimal viable root filesystem. Sadly I've not yet figured out how to modify the file structure so that we can directly use the `ADD` command with the source URL.

Because of that, the `prepare.sh` script automatically downloads the latest Arch Linux release bootstrap archive, unpacks it, repacks it with the appropriate structure so that we can then use the `ADD` command in the `Dockerfile`. To simulate a automated build, [Travis CI](https://travis-ci.org) has been setup to build and push these images every week via the new crons feature.