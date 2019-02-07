#!/bin/bash

cp mysql/dump.sql mysql/master/dump.sql
cp mysql/dump.sql mysql/slave/dump.sql

sudo docker-compose down
sudo docker-compose up -d --build

sleep 120
sudo docker exec -ti master-db bash /init.sh
sudo docker exec -ti slave-db bash /init.sh