FROM centos:7.2.1511

RUN yum install -y httpd git

RUN cd /var/www/html && git clone https://github.com/james9074/draw.io.git

EXPOSE 8080

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
