FROM centos
MAINTAINER ursbrchandra@gmail.com
RUN yum -y update
RUN yum -y install nginx php php-gd php-mysql
ADD config/server.crt /etc/pki/tls/certs
ADD config/server.csr /etc/pki/tls/certs
ADD config/server.key /etc/pki/tls/certs
ADD config/nginx.conf /etc/nginx
ADD code /usr/share/nginx/html
EXPOSE 80
#CMD nginx -g "daemon off;"
#CMD "nginx"
#CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT nginx -g 'daemon off;'
