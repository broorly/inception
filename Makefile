# Makefile for Docker Project

# Docker-related commands
DOCKER_COMPOSE := docker-compose
DOCKER_COMPOSE_FILE := srcs/docker-compose.yml

# Default target (when running just `make`)
up: ## Start the Docker containers
	@mkdir -p /mnt/c/Users/Amine/OneDrive/Bureau/incep/all/wordpress
	@mkdir -p /mnt/c/Users/Amine/OneDrive/Bureau/incep/all/mariadb
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d

down: ## Stop and remove the Docker containers
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

clean: ## Stop the Docker containers
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop

fclean: ## Stop and remove the Docker containers and volumes
	 @rm -rf  /mnt/c/Users/Amine/OneDrive/Bureau/incep/all/
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down -v
