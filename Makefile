NAME = b2bwebid/r-quant
VERSION = 2022.1
BUILD = $(shell date +'%Y%m%d')

.PHONY: all build tag_latest release

all: build tag_version

build:
	docker pull b2bwebid/r-base:bullseye
	docker build -t $(NAME):$(BUILD) --rm .

tag_version:
	docker tag $(NAME):$(BUILD) $(NAME):$(VERSION)

tag_latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest

release: tag_latest
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "Build image first."; false; fi
	docker push $(NAME):$(BUILD)
	docker push $(NAME):$(VERSION)
	docker push $(NAME):latest
