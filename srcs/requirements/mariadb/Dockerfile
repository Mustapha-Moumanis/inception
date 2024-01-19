# FROM mariadb

FROM debian:12

RUN apt-get update && apt-get install mariadb-server -y

COPY tools/script.sh .
# RUN chmod +x ./script.sh
# COPY conf/my.cnf /etc/mysql/my.cnf

EXPOSE 3306

# CMD ["tail", "-F", "/dev/null"]
# ENV MYSQL_ROOT_PASSWORD={$MYSQL_ROOT_PASSWORD}
# ENV MYSQL_DATABASE={$MYSQL_DATABASE}
# ENV MYSQL_USER={$MYSQL_USER}
# ENV MYSQL_PASSWORD={$MYSQL_PASSWORD}

CMD ["bash", "script.sh"]