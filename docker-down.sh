#!/bin/bash

docker-compose -f docker-compose.services.yml down
docker-compose -f docker-compose.core.yml down
docker-compose -f docker-compose.services.yml down

