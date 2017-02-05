TODAY = $(shell date +%Y-%m-%d)
PREFIX = "ikupczynski"
IMAGE = "$(PREFIX)/blog-builder:$(TODAY)"

.PHONY: help
help:
	@ echo "make build"
	@ echo "make push"

.PHONY: build
build:
	@ docker build -t "$(IMAGE)" .

.PHONY: push
push: build
	@ docker push "$(IMAGE)"
