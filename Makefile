.PHONY: all up down help

all: help

up: ## Start docker containers in detached mode
	docker compose up -d

down: ## Stop docker containers
	docker compose down

reup: ## Recreate and start docker containers in detached mode
	docker compose up -d --force-recreate

help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'
