FROM ubuntu:18.04
MAINTAINER ursbrchandra@gmail.com
RUN apt-get update 
RUN apt-get install mysql-server -y
ADD code /opt
CMD ["mysql -u root -p root"]
CMD ["CREATE DATABASE contacts;"]
CMD ["USE contacts;"]
CMD ["CREATE USER 'mysqluser'@'localhost' IDENTIFIED BY '123456';"]
CMD ["GRANT ALL PRIVILEGES ON contacts.* TO 'mysqluser'@'localhost';"]
ENTRYPOINT ["/opt/schemafiles.sql"]

