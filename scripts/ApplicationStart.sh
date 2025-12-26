#!/bin/bash
docker run -p 80:5000 --name flask-web -d 805297316371.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-99-ecr-repo:latest

sleep 20s
