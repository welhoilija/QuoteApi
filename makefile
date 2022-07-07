build:
	docker compose build

run:
	docker compose up

lint:
	docker compose run --rm falcontest flake8