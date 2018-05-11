DOCKER_COMPOSE_FILE = -f docker-compose.dev.yml

rebuild:
	@docker-compose $(DOCKER_COMPOSE_FILE) down && \
        	docker-compose $(DOCKER_COMPOSE_FILE) build --build-arg USERID=$(id -u) --pull --no-cache && \
        	docker-compose \
            		$(DOCKER_COMPOSE_FILE) \
        	up -d --remove-orphans

