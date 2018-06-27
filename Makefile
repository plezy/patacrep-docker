NAME = patacrep
VERSION = latest

all : build

build:
	docker build -t $(NAME):$(VERSION) --rm image

run:
	docker run -it --rm -v /tmp/patadata:/data patacrep

shell:
	docker run -it --rm -v /tmp/patadata:/data patacrep bash
