.PHONY: build up ps logs down clean 

DOCKER_COMPOSE := docker compose

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
	docker system prune 