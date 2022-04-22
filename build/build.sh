#!/bin/bash

# Clean and create appconfig archive
#rm -rf ./kubedirector/appconfig.tgz
#cd ./kubedirector && tar czf appconfig.tgz appconfig/ && cd -
#mv ./kubedirector/appconfig.tgz .

# Build and push Docker image
#docker build -t dzinsouhpe/gitlab-ce:7.9.2009 .
#docker push dzinsouhpe/centos:7.9.2009

docker build -t dzinsouhpe/gitlab-ce:latest .
docker push dzinsouhpe/gitlab-ce:latest

# Delete temporary archive
#rm -rf ./appconfig.tgz
