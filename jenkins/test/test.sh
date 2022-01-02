#!/bin/bash

echo "*************************"
echo "*****Testing the Code****"
echo "*************************"

WORKSPACE=/var/jenkins_home/workspace/Pipeline-project

docker run --rm -v "$WORKSPACE/java-app":"/app" -v "C:\Users\Kamal Bisht\Volumes\.m2":"/root/.m2" -w /app maven:3-alpine "$@"

echo "JAR file successfully build and saved in the target folder"
