#!/bin/bash

docker-compose -f docker-compose.core.yml up -d
while ! echo exit | nc localhost 18830; do sleep 10; done

echo "Core up"
