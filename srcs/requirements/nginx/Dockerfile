FROM debian:12

RUN apt-get -y update && apt-get -y install nginx openssl
RUN mkdir -p /etc/nginx/ssl/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/"

# EXPOSE 443
# COPY html /var/www/html/

# COPY ./conf/nginx.conf /etc/nginx/http.d/default.conf

COPY ./conf/nginx.conf /etc/nginx/sites-available/default

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]