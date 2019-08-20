FROM centos:7
MAINTAINER ursbrchandra@gmail.com
RUN yum -y update && yum -y install nginx php-gd php php-mysql \
&& cd /etc/pki/tls/certs/ \
&& sudo openssl x509 -in server.csr -out server.crt -req -signkey server.key -days 3650  \
&& cd \
&& cd environment 
ADD config /etc/nginx
RUN chmod 755 /etc/nginx/nginx.conf
RUN /etc/nginx/nginx.conf
ADD code /var/www/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
ENTRYPOINT
