NAME = b2bwebid/r-quant
VERSION = 2021.1

.PHONY: all build tag_latest release

all: build

build:
	docker build -t $(NAME):$(VERSION) --rm . >> build.log 2>&1

tag_latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest

release: tag_latest
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "Build image first."; false; fi
	docker push $(NAME):$(VERSION)
	docker push $(NAME):latest
