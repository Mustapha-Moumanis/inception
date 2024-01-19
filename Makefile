up: build
	cd srcs; docker-compose up

build:
	cd srcs; docker-compose build

down:
	cd srcs; docker-compose down

clean:
	cd srcs; docker-compose down; docker volume prune -f
# docker image rm -f $$(docker images -aq)

fclean: clean

re: clean up
