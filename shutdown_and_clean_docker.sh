#!/usr/bin/env bash

./script/docker/stop_docker_services.sh

docker-compose down

rm -rf  ./docker_data
cp -R ./docker_data_bak ./docker_data

