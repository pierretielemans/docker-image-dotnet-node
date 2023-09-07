DOTNET_VERSION=2.2
NODE_VERSION=16.x

DOCKER_IMAGE_FULL = "flyawayexpert7/dotnet_sdk-and-node_js:$(DOTNET_VERSION)_$(NODE_VERSION)"

img:
	docker build --build-arg DOTNET_VERSION=$(DOTNET_VERSION) --build-arg NODE_VERSION=$(NODE_VERSION) -f Dockerfile -t $(DOCKER_IMAGE_FULL) . 

push:
	docker push $(DOCKER_IMAGE_FULL)
