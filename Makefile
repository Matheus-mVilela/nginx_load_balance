
all:
	@echo "Hello $(LOGNAME), nothing to do by default"
	@echo "Try 'make help'"

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: remove ## Build the container
	@docker-compose build 
	@docker-compose up -d db


db: ## Create the DataBase
	@docker-compose exec -u postgres db psql -c 'CREATE DATABASE db_ex ENCODING 'UTF8' TEMPLATE template0;'

test: start ## Run tests
	@docker-compose exec backen_1 ./manage.py test

restart: ## Restart the container
	@docker-compose restart

cmd: start ## Access bash
	@docker-compose exec backen_1 /bin/bash

shell: start ## Access django shell
	@docker-compose exec backen_1 /bin/bash -c "./manage.py shell"

up: 
	@docker-compose up -d 

start:
	@docker-compose start


stop: ## Stop container
	@docker-compose stop || true


remove:
	@docker-compose down || true

remove-images: remove
	@docker rmi backend_django_ex nginx_balancer db_django_ex

.DEFAULT_GOAL := help