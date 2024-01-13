FROM debian:12

WORKDIR /var/www/html

RUN apt-get -y update && apt-get -y install php-fpm wget unzip php8.2-mysqli mariadb-client
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mv wordpress/* . && rm -rf wordpress latest.zip
RUN mv wp-config-sample.php wp-config.php 
COPY /tools/                                                                                                                                                                                  .

RUN echo "listen = wordpress:9000" >> /etc/php/8.2/fpm/php-fpm.conf

CMD ["php-fpm8.2", "-F"]
# CMD ["./script.sh"]

