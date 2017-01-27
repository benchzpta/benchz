FROM centos:7.2.1511

RUN yum install -y httpd git

RUN cd /var/www/html && git clone https://github.com/jgraph/draw.io

EXPOSE 8080

ENTRYPOINT ["httpd -D FOREGROUND"]
