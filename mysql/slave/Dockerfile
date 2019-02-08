FROM mysql:5.7

RUN apt-get update
RUN apt-get install nano

RUN mkdir -p /var/lib/mysql

ADD init.sql /init.sql
ADD init.sh /init.sh

COPY slave.cnf /etc/mysql/conf.d/slave.cnf