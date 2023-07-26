FROM ubuntu
RUN apt update -y
RUN apt install apache -y
COPY . var/www/html/
CMD ["usr/sbin/apachectl", "-D", "FOREGROUND"]
