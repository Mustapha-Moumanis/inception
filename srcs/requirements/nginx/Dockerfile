FROM debian:12

RUN apt-get -y update && apt-get -y install nginx openssl

RUN mkdir /etc/nginx/ssl/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/private_key.key \
    -out /etc/nginx/ssl/certificate.crt -subj "/"

COPY ./conf/nginx.conf /etc/nginx/sites-available/default


CMD ["nginx", "-g", "daemon off;"]