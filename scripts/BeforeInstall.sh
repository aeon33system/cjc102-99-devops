#!/bin/bash

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 805297316371.dkr.ecr.ap-northeast-1.amazonaws.com

if [ `docker images | grep 805297316371.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-99-ecr-repo | wc -l`  = 1 ]
then
        docker rmi 805297316371.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-99-ecr-repo
        docker pull 805297316371.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-99-ecr-repo:latest
else
        docker pull 805297316371.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-99-ecr-repo:latest
fi
