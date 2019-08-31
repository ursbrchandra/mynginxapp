FROM ubuntu:18.04
MAINTAINER ursbrchandra@gmail.com
RUN apt-get update 
RUN apt-get install mysql-server -y
ADD code /opt
RUN chmod 755 /opt/createtable.sql
COPY docker-entrypoint.sh /
RUN  mkdir /var/run/mysqld
RUN chmod 755 /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
VOLUME /var/lib/mysql
CMD ["mysqld_safe"]

