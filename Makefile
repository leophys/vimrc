DOCKER ?= docker
ORG ?= leophys
IMAGE ?= $(ORG)/vim
TAG ?= dev

.PHONY: build
build:
	$(DOCKER) build \
		--build-arg UID=$$(id -u) \
		--build-arg GID=$$(id -g) \
		-t $(IMAGE):$(TAG) .

.PHONY: dev
dev:
	$(DOCKER) run --rm \
		-v $$PWD:/home/vim/.vim \
		-v $$EXTRA:$$EXTRA \
		-ti $(IMAGE):$(TAG) \
		${FILE}
