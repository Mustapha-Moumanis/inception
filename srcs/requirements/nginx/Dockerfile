FROM debian:oldstable

RUN apt-get -y update

RUN apt-get -y install nginx openssl

COPY tools/script.sh .

COPY ./conf/nginx.conf /etc/nginx/sites-available/default

CMD ["bash", "script.sh"]