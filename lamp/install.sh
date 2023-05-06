#!/bin/bash

echo "################################################"
echo "######      Create a Docker Network    #########"
echo "################################################"

sudo docker network create --subnet=172.99.99.0/24 lamp-network
sleep 2s
clear

echo "##################################################"
echo "###     Install Apache+PHP+MySql+PHPMyAdmin    ###"
echo "##################################################"

mkdir -p ~/docker/lamp-server
cp ./docker-compose.yml ~/docker/lamp-server/
cd ~/docker/lamp-server
docker compose up -d
