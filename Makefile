rebuild:
	@docker-compose -f docker-compose.dev.yml down  && \
		docker-compose -f docker-compose.dev.yml build --pull --no-cache && \
		docker-compose \
			-f docker-compose.dev.yml \
		up -d --remove-orphans	
