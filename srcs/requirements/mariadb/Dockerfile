FROM debian:oldstable

RUN apt-get -y update

RUN apt-get -y upgrade

RUN apt-get -y install mariadb-server 

COPY tools/script.sh .

EXPOSE 3306

CMD ["bash", "script.sh"]