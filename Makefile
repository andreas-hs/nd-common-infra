# Variables
DOCKER_COMPOSE = docker-compose

# Targets
.PHONY: init up down logs

# Start containers
up:
	$(DOCKER_COMPOSE) up -d

# Stop and remove containers
down:
	$(DOCKER_COMPOSE) down

# Show logs
logs:
	$(DOCKER_COMPOSE) logs -f

# Initialize the environment (run once)
init:
	@docker network create new-dealigence > /dev/null 2>&1 || true
	$(DOCKER_COMPOSE) up -d