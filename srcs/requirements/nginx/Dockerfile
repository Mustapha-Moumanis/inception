FROM debian:stable
RUN apt-get -y update && apt-get -y install nginx
COPY ./html/ /usr/share/nginx/html/
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]