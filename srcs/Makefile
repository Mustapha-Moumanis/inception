
up: build
	docker-compose up

build:
	docker-compose build

down:
	docker-compose down

clean:
	docker-compose down
	docker volume prune -f
# docker image rm -f $$(docker images -aq)

fclean: clean

re: clean up
