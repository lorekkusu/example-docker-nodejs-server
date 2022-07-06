#!/usr/bin/make -f
IMAGE := server
VERSION := latest

.PHONY: all build rebuild shell run

all: build

build:
	docker build -t=$(IMAGE):$(VERSION) .

rebuild:
	docker build -t=$(IMAGE):$(VERSION) --no-cache .

run:
	docker run --rm -it -p 3000:3000 --name node_server $(IMAGE):$(VERSION)

go:
	docker build -t=go:latest -f example-multi-stage.Dockerfile .
	docker run --rm go

clear:
	docker container prune -f
	docker image prune -f
