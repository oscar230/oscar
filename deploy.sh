#!/bin/bash
sh build-site.sh
docker-compose up --force-recreate --build -d
docker image prune -f
echo "Deployed!"