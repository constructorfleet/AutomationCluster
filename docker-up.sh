#!/bin/bash

docker-compose -f docker-compose.core.yml up -d

while ! telnet localhost 1883
do
  echo "$(date) - still trying"
  sleep 1
done
echo "$(date) - connected successfully"

echo "Core up"
