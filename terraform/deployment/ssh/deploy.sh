#!/bin/bash

HOST="ec2-13-58-73-62.us-east-2.compute.amazonaws.com"
USER="ec2-user"
KEY="../../lemoncode.pem"

ssh -i $KEY $USER@$HOST \
  "sudo yum install docker -y && sudo service docker start && sudo docker run -d -p 80:8888 firenz/lemoncode-docker-exercise"