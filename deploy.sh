#!/usr/bin/env bash
set -ev
TAG="$1"
LOGIN=`aws ecr get-login --region us-east-1`

if [[ "x$TAG" = "x" ]]; then
  echo "TAG is required"
  exit 1;
fi

$LOGIN

docker build -t ottawa-docker:latest app

docker tag ottawa-docker:latest 221122073016.dkr.ecr.us-east-1.amazonaws.com/ottawa-docker:$TAG
docker push 221122073016.dkr.ecr.us-east-1.amazonaws.com/ottawa-docker:$TAG

./ecs-deploy.sh -c docker-meetup -n api --max-definitions 1 -i 221122073016.dkr.ecr.us-east-1.amazonaws.com/ottawa-docker:$TAG -v -t 120
