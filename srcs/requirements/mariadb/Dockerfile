FROM debian:stable

RUN apt-get update && apt-get install mariadb-server -y

COPY tools/script.sh .

CMD ["bash", "script.sh"]