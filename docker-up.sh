#!/bin/bash

docker-compose -f docker-compose.core.yml up -d

while ! nc -z localhost 1883 </dev/null; do sleep 10; done

echo "Core up"
