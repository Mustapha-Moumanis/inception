FROM debian:12

RUN apt-get -y update && apt-get -y install nginx openssl
# RUN mkdir -p /etc/nginx/ssl/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/mmoumani.42.fr.key \
    -out /etc/ssl/certs/mmoumani.42.fr.crt -subj "/"

EXPOSE 443

COPY ./conf/nginx.conf /etc/nginx/sites-available/default

COPY tools/script.sh .

# CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
CMD ["bash", "script.sh"]