#!/bin/bash

docker-compose up -f docker-compose.core.yml -d
while ! echo exit | nc localhost 18830; do sleep 10; done

echo "Core up"
