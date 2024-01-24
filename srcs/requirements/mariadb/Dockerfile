FROM debian:12

RUN apt-get update && apt-get install mariadb-server -y

COPY tools/script.sh .

EXPOSE 3306

CMD ["bash", "script.sh"]