#!/bin/bash

APP_URL="http://localhost:8080/health"

STATUS=$(curl -s -o /dev/null -w "%{http_code}" $APP_URL)

if [ "$STATUS" == "200" ]; then
  echo "Application is healthy"
else
  echo "Application is DOWN"
fi