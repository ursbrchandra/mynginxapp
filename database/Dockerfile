FROM ubuntu:18.04
MAINTAINER ursbrchandra@gmail.com
RUN apt-get update 
RUN apt-get install mysql-server -y
ADD code /opt
RUN chmod 755 /opt/createtable.sql

COPY fix-permissions.sh /
RUN chmod 755 /fix-permissions.sh

RUN /fix-permissions.sh /var/lib/mysql/   && \
    /fix-permissions.sh /var/run/
    
COPY docker-entrypoint.sh /
RUN  mkdir /var/run/mysqld
RUN chmod 755 /docker-entrypoint.sh
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=contacts
ENV MYSQL_USER=cha
ENV MYSQL_PASSWORD=cha
ENTRYPOINT ["/docker-entrypoint.sh"]
VOLUME /var/lib/mysql
EXPOSE 3306
CMD ["mysqld_safe"]

