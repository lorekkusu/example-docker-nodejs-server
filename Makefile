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
	docker run --rm -it -p 3000:3000 $(IMAGE):$(VERSION)
