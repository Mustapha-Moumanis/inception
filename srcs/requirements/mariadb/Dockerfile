# FROM mariadb

FROM debian:12

RUN apt-get update && apt-get install -y mariadb-server

# EXPOSE 3306

# CMD ["tail", "-F", "/dev/null"]
ENV MYSQL_ROOT_PASSWORD={$MYSQL_ROOT_PASSWORD}
ENV MYSQL_DATABASE={$MYSQL_DATABASE}
ENV MYSQL_USER={$MYSQL_USER}
ENV MYSQL_PASSWORD={$MYSQL_PASSWORD}

# RUN mysql_secure_installation -u root
CMD ["mysqld_safe"]