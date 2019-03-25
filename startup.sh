#!/bin/bash

sudo docker-compose down

sudo rm -rf volume/master
sudo rm -rf volume/slave

sudo docker-compose up -d --build

sleep 120
sudo docker exec -ti master-db bash /init.sh
sudo docker exec -ti slave-db bash /init.sh