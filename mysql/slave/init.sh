#!/bin/bash

password=$SLAVE_PASS
slave_user=$SLAVE_USER

while read query; do
    query=${query/"[password]"/$password}
    query=${query/"[slave_user]"/$slave_user}
    mysql -u root --password=$MYSQL_ROOT_PASSWORD -Dmydb -e "$query"
done < /init.sql