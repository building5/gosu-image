all: build
.PHONY: all

build:
	docker build -t building5/gosu .
.PHONY: build

test: build
	docker build -t building5/gosu-test ./test
	docker run --rm building5/gosu-test
