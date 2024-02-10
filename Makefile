up: build
	cd srcs; docker-compose up

build:
	cd srcs; docker-compose build

down:
	cd srcs; docker-compose down

# clean:
# 	cd srcs; docker-compose down;
#  docker volume prune -f
# docker image rm -f $$(docker images -aq)

fclean: down
	cd srcs; docker image rm $$(docker image ls -q);

re: down up
