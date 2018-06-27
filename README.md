# patacrep-docker
**patacrep** is a tool chain to compile songbooks in pdf format.
The github repository is found at https://github.com/patacrep/patacrep.

The patacrep website gives more explanations about the toolchain. Please take time to read the documentation at https://www.patacrep.com.

**patacrep-docker** is a container, containing the tool chain with all its dependencies to buid songbook easily, avoiding to change your environment.

A makefile is provided to easily launch the docker commands.

# Dependencies

To run the container, you must install first the docker utility.

## Ubuntu 16.04

Use apt-get to install docker :
```
sudo apt-get install docker docker-io
```

## Windows

Install and start the *docker for Windows* tool as explained on the docker web site https://docs.docker.com/docker-for-windows/install/

# Build

## from sources
To build the container from sources, just clone the current repository :
```
git clone https://github.com/plezy/patacrep-docker.git
```
and then run 'make' to build the image.
```
make
```

## from the docker hub
You can grab a build image directly from the docker hub :
```
docker ...
```

# Compile songbooks

The *patacrep* songbook database can be found at https://github.com/patacrep/patadata. By default, the container will fetch this repository and compile the songbook. 

## default build
