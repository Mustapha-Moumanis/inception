up:
	cd srcs; docker-compose up --build

build:
	cd srcs; docker-compose build

down:
	cd srcs; docker-compose down

fclean: down
	docker image rm $$(docker image ls -q);

rm:
	docker stop $$(docker ps -qa);
	docker rm $$(docker ps -qa);
	docker rmi $$(docker images -qa);
	docker volume rm $$(docker volume ls -q);
	docker network rm $$(docker network ls -q);

re: down up
