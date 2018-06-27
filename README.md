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
cd patacrep-docker
make
```

## from the docker hub
You can grab a build image directly from the docker hub :
```
docker ...
```

# Compile songbooks

The *patacrep* songbook database can be found at https://github.com/patacrep/patadata. By default, the container will fetch this repository and compile the songbook. 

To persist data, you need to map a local folder to the /data container's folder.
In the examples below, data are persisted in the /tmp/patadata folder.

## default build

After running the following, you will find in the /tmp/patadata/patadata/books folder, the complete songbooks in pdf files : *songbook_fr.pdf* and *songbook_en.pdf*.
### The easy way

in the patacrep-docker folder run the command :
```
make run
```

### Using docker
```
docker run -it --rm -v /tmp/patadata:/data patacrep
```

## custom builds

To build custom songbooks, you can enter a bash command, using either the make file in the patacrep-docker folder :
```
make shell
```

or docker directly :
```
docker run -it --rm -v /tmp/patadata:/data patacrep bash
```

You will then enter a bash within the container where you can issue your own commands.
