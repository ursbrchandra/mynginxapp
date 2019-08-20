FROM centos:7
MAINTAINER ursbrchandra@gmail.com
RUN yum -y update
RUN yum -y install nginx 
RUN yum -y install php 
RUN yum -y install php-gd 
RUN yum -y install php-mysql
RUN openssl x509 -in server.csr -out server.crt -req -signkey server.key -days 3650
ADD config /etc/nginx
RUN chmod 755 /etc/nginx/nginx.conf
RUN /etc/nginx/nginx.conf
ADD code /var/www/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
ENTRYPOINT
