#!/bin/bash

# Clean and create appconfig archive
rm -rf ./kubedirector/appconfig.tgz
cd ./kubedirector && tar czf appconfig.tgz appconfig/ && cd -
mv ./kubedirector/appconfig.tgz .

# Build and push Docker image
docker build -t dzinsouhpe/gitlab-runner:python3.9.7 .
docker push dzinsouhpe/gitlab-runner:python3.9.7

docker tag dzinsouhpe/gitlab-runner:python3.9.7 dzinsouhpe/gitlab-runner:python3
docker push dzinsouhpe/gitlab-runner:python3

# Delete temporary archive
rm -rf ./appconfig.tgz