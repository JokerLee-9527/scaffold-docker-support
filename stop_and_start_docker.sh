#!/bin/bash
set -e

./script/docker/stop_docker_services.sh

./script/docker/start_docker_services.sh
