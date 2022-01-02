#!/bin/bash

echo "*************************"
echo "*****Pushing IMAGE********"
echo "*************************"

IMAGE="maven-project"

echo "****Logging in****"
docker login -u joyboy1234 -p $PASS
echo "***Tagging image***"
docker tag $IMAGE:$BUILD_TAG joyboy1234/$IMAGE:$BUILD_TAG
echo "***Pushing the image****"
docker push joyboy1234/$IMAGE:$BUILD_TAG
