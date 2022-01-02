#!/bin/bash

echo "*************************"
echo "*****Building JAR********"
echo "*************************"

docker run --rm -v "C:\Users\Kamal Bisht\Pipeline\java-app":"/app" -v "C:\Users\Kamal Bisht\Volumes\.m2":"/root/.m2" -w /app maven:3-alpine "$@"

echo "JAR file successfully build and saved in the target folder"
