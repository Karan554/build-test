#!/bin/bash

# Copy the new jar to the build location

WORKSPACE=/var/jenkins_home/workspace/Pipeline-project

cp -f /java-app/target/*.jar /jenkins/build/

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd $WORKSPACE/jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
