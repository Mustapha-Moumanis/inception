up: build
	cd srcs; docker-compose up

build:
	cd srcs; docker-compose build

down:
	cd srcs; docker-compose down

fclean: down
	docker image rm $$(docker image ls -q);

rm: fclean
	docker volume rm -f $$(docker volume ls -q);

re: down up
