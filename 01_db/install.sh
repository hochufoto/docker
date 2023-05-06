#!/bin/bash

echo "################################################"
echo "######      Create a Docker Network    #########"
echo "################################################"

sudo docker network create db-network
sleep 2s
clear

echo "##################################################"
echo "###     Install MySQL Server and PHPMyAdmin    ###"
echo "##################################################"

mkdir -p ~/docker/mysql-server
cp ./docker-compose.yml ~/docker/mysql-server/
cd ~/docker/mysql-server
docker compose up -d
