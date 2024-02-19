YML = srcs/docker-compose.yml

up:
   docker-compose -f $(YML) up --build

build:
   docker-compose -f $(YML) build

down:
   docker-compose -f $(YML) down

start:
   docker-compose -f $(YML) start

stop:
   docker-compose -f $(YML) stop

restart:
   docker-compose -f $(YML) restart

logs:
   docker-compose -f $(YML) logs

ps:
   docker-compose -f $(YML) ps