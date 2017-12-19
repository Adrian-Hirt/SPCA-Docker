# SPCA Docker Base Image

This is a docker image which you can use to complete the excercises of the course "Systems Programming and Computer Architecture" at ETH if you don't have a linux computer at your disposal.

## Installed Stuff
- Latest debian dist
- git
- svn
- nano
- vim
- build-essentials (gcc)
- gdb

## Good to know

You need to be install Docker, follow this tutorial to do so: [Docker Tutorial](https://docs.docker.com/docker-for-windows/install/#download-docker-for-windows)

Once you installed docker, just copy the run.bat to your pc, drop it in the directory with the files for the excercise, and doubleclick (execute) it. It will execute the following command:

```
docker run -it --security-opt seccomp=unconfined -v %cd%:/spca -i adrianhirt/spca_base:1.0 /bin/bash
```

This starts a docker container with the spca_base image, and mounts the current directory to the spca folder in the debian container. It also uses the seccomp=unconfined flag, which allows the programs (e.g. the attack lab) to be executed without randomized adresses.

## Build the image

Feel free to modify the Dockerfile and/or build the image yourself with the dockerfile provided.
