#!/bin/bash
set -e

docker-compose -f docker-compose.yml up -d
docker-compose -f docker-compose.yml ps
