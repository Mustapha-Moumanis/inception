# FROM mariadb

FROM debian:stable

RUN apt-get update && apt-get install -y mariadb-server

EXPOSE 3306

# LABEL version="1.0"
# LABEL description="MariaDB Server"

# HEALTHCHECK --start-period=5m \
#   CMD mariadb -e 'SELECT @@datadir;' || exit 1

ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password

CMD ["mariadbd"]