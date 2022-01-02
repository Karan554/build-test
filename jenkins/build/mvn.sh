#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

WORKSPACE=/var/jenkins_home/workspace/Pipeline-project

docker run --rm -v  "$WORKSPACE/java-app/":"/app" -v "/mnt/c/Users/Kamal Bisht/Volumes/.m2":"/root/.m2/" -w "/app" maven:3-alpine "$@"