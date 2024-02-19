FROM debian:oldstable

RUN apt-get -y update

RUN apt-get -y install nginx openssl

# RUN mkdir $CERTS_

# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
#     -keyout $CERTS_/private_key.key \
#     -out $CERTS_/certificate.crt -subj "/"

COPY tools/script.sh .

COPY ./conf/nginx.conf /etc/nginx/sites-available/default

CMD ["bash", "script.sh"]