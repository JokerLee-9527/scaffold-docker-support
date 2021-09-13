#!/bin/bash
set -e

./script/docker/stop_docker_services.sh

rm -rf ./docker_data/mysql/db_data/
rm -rf ./docker_data/redis/data/

./script/docker/start_docker_services.sh
