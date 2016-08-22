.IGNORE: default run

build:
	docker build -t reddit/reddit-nodejs:local .

run:
	docker run --rm -it reddit/reddit-nocejs:local bash

default: build
