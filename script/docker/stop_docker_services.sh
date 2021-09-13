#!/bin/bash
set -e

docker-compose -f docker-compose.yml stop
docker-compose -f docker-compose.yml ps
