
DOCKER_COMPOSE := docker-compose
DOCKER_COMPOSE_FILE := srcs/docker-compose.yml

up:
	@mkdir -p /mnt/c/Users/Amine/OneDrive/Bureau/incep/all/wordpress
	@mkdir -p /mnt/c/Users/Amine/OneDrive/Bureau/incep/all/mariadb
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d

down: 
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

clean: ## Stop the Docker containers
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop

fclean:
	 @rm -rf  /mnt/c/Users/Amine/OneDrive/Bureau/incep/all/
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down -v
