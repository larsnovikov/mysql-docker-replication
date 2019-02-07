#!/bin/bash
mysql -u root --password=$MYSQL_ROOT_PASSWORD mydb < /dump.sql
mysql -u root --password=$MYSQL_ROOT_PASSWORD mydb < /init.sql