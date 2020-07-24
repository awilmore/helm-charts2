#!/usr/bin/env make

include Makehelp.mk


## Perform helm lint on charts folder
lint:
	docker-compose run --rm helm-utils helm lint charts/*
PHONY: lint


## Perform helm package on charts folder
package:
	docker-compose run --rm helm-utils helm package charts/*
PHONY: package


## Update helm index
index:
	docker-compose run --rm helm-utils helm repo index .
PHONY: index
