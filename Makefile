IMAGE := server
VERSION := latest

.PHONY: build run clean publish

build:
	docker build -t=$(IMAGE):$(VERSION) .

run:
	docker run --rm -it -p 3000:3000 --name server $(IMAGE):$(VERSION)

clean:
	docker container prune -f
	docker image prune -f

publish:
	docker tag server $(REPO)
	docker push $(REPO) 
