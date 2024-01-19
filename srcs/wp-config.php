FROM alpine:3.18.3

RUN apk update
RUN apk add mariadb-client

RUN apk add php php-fpm php-phar php-mysqli curl php-mbstring php-tokenizer
WORKDIR /var/www/html
ADD  https://wordpress.org/latest.tar.gz .

RUN tar -xzvf latest.tar.gz && \
    rm -rf latest.tar.gz &&  \
    chmod -R 755 /var/www/html/wordpress


RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
        chmod +x wp-cli.phar &&  \
        mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

RUN echo "listen = wordpress:9000" >> /etc/php81/php-fpm.d/www.conf

COPY  ./tools/setup.sh /
RUN chmod 777 /setup.sh


CMD ["/setup.sh"]