#!/bin/bash
docker-compose up --force-recreate --build -d
docker image prune -f
docker ps | grep "oscar.wonky.se"
echo "Deployed oscar.wonky.se!"