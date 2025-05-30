FROM ubuntu

RUN apt update && \
    apt install -y apache2 net-tools iproute2 iputils-ping nano

COPY . /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
