#!/bin/bash

echo "Clone laradock"
git clone https://github.com/Laradock/laradock.git --branch v11.0

echo "Copy .env configuration file to laradock"
cp -u .env.laradock laradock/.env

echo "Starting mongo elasticsearch php-fpm nginx workspace"
cd laradock
docker-compose up -d mongo elasticsearch php-fpm nginx workspace
echo "laradock containers are started"