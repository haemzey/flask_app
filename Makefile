OS := $(shell uname)

SERVICE := web

DOCKER_COMPOSE := docker-compose

build:
ifeq ($(OS), Linux)
  	@echo "Building for Linux"
	$(DOCKER_COMPOSE) build
endif

ifeq ($(OS), Windows_NT)
  	@echo "Building for Window"
	echo "Write Window commands"
endif

up:
ifeq ($(OS, Linux))
    @echo "running containers for Linux"
	$(DOCKER_COMPOSE) up -d
endif

ifeq ($(OS), Windows_NT)
  	@echo "Running containers for Window"
	echo "Write Window commands"
endif

ps: 
		$(DOCKER_COMPOSE) ps

logs: 
		$(DOCKER_COMPOSE) logs -f 

down: 
		$(DOCKER_COMPOSE) down 

clean:
		docker system prune 