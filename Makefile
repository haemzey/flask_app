DOCKER_COMPOSE := docker-compose

OS := $(shell uname)

build:
		$(DOCKER_COMPOSE) build

up:
		$(DOCKER_COMPOSE) up -d

ps: 
		$(DOCKER_COMPOSE) ps

logs: 
		$(DOCKER_COMPOSE) logs -f 

down: 
		$(DOCKER_COMPOSE) down 

clean:
		docker images prune 