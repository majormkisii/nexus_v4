.PHONY: init install build run lint test

init:
	@echo 'Bootstrapping Nexus project...'


install:
	@echo "Installing all dependencies..."
	cd apps/frontend-app && npm install
	cd services/ai-service && pip install -r requirements.txt

build:
	@echo "Building frontend..."
	cd apps/frontend-app && npm run build

run:
	@echo "Starting services via Docker Compose..."
	docker-compose up

lint:
	@echo "Linting code..."
	cd apps/frontend-app && npm run lint
	cd services/ai-service && black --check .

test:
	@echo "Running tests..."
	pytest tests/
