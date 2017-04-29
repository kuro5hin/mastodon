#!/bin/bash
TAG="latest"
if [ $1 ]; then
	TAG=$1
fi
echo "Building kuro5hin/mastodon:"$TAG
docker build --rm -t kuro5hin/mastodon:$TAG .
echo "---------------------------------------------------------------\nDone! Pushing...\n"
docker push kuro5hin/mastodon:$TAG
