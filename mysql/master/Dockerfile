FROM mysql:5.7

RUN apt-get update
RUN apt-get install nano

RUN mkdir -p /var/lib/mysql

ADD dump.sql /dump.sql
ADD init.sql /init.sql
ADD init.sh /init.sh

COPY master.cnf /etc/mysql/conf.d/master.cnf