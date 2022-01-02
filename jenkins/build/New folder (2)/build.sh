#!/bin/bash

echo "Copying the JAR"

cp java-app\target\*.jar \jenkins\build\

echo "*******************************************"
echo "*****Building Docker IMAGE from JAR********"
echo "*******************************************"

cd jenkins/build && docker-compose -f docker-compose-build.yml build