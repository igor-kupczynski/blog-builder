TODAY = $(shell date +%Y-%m-%d)
PREFIX = "puszczyk"
IMAGE = "$(PREFIX)/blog-builder:$(TODAY)"

.PHONY: help
help:
	@ echo "make build"
	@ echo "make push"

.PHONY: build
build:
	@ docker build -t "$(IMAGE)" .

push: build
	@ docker push "$(IMAGE)"
