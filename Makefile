
DOCKER_COMPOSE := docker-compose
DOCKER_COMPOSE_FILE := srcs/docker-compose.yml

up:
	@mkdir -p /Users/mrafik/Desktop/incep/all/wordpress
	@mkdir -p /Users/mrafik/Desktop/incep/all/mariadb
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d

down: 
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

clean:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop

fclean:
	 @rm -rf  /Users/mrafik/Desktop/incep/all/
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down -v
