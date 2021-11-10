up:
	docker-compose -f docker-compose.stg.yml up -d db
	docker-compose -f docker-compose.stg.yml up -d

webbash:
	docker-compose exec web /bin/bash

down:
	docker-compose -f docker-compose.stg.yml down

migrate:
	docker-compose exec web python manage.py migrate

makemigrations:
	docker-compose exec web python manage.py makemigrations

build:
	docker-compose -f docker-compose.stg.yml build
