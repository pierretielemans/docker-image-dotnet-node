DOTNET_VERSION=2.2
NODE_VERSION=16.x

DOCKER_IMAGE_FULL = "dotnetimages/microsoft-dotnet-core-sdk-nodejs:$(DOTNET_VERSION)_$(NODE_VERSION)"

img:
	docker build --build-arg DOTNET_VERSION=$(DOTNET_VERSION) --build-arg NODE_VERSION=$(NODE_VERSION) -f Dockerfile -t $(DOCKER_IMAGE_FULL) . 

push:
	docker push $(DOCKER_IMAGE_FULL)
