
DOCKER_COMPOSE := docker compose
DOCKER_COMPOSE_FILE := srcs/docker-compose.yml

up:
	@mkdir -p /home/mrafik/data/wordpress
	@mkdir -p /home/mrafik/data/mariadb
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d

down: 
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

clean:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop

fclean:
	 @rm -rf  /home/mrafik/data/
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down -v
