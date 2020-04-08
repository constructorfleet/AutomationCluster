#!/bin/bash

docker-compose -f docker-compose.core.yml up -d

while ! nc -z localhost 1883 </dev/null; do sleep 10; done

echo "Core up"
sleep 10

docker-compose -f docker-compose.configs.yml up -d
echo "Services up"

while ! nc -z localhost 8123 </dev/null; do sleep 10; done

docker exec -it automation_master apk add openldap-clients

docker-compose -f docker-compose.services.yml up -d

echo "Complete"
