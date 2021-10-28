# detect tty
DOCKER_USE_TTY := $(shell test -t 1 && echo "-t" )
DC_USE_TTY     := $(shell test -t 1 || echo "-T" )

build:
	docker-compose build
up:
	docker-compose run --rm $(DC_USE_TTY) osc-cli -- --help
