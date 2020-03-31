#!/bin/bash
# This script is just an example of deployment without depending on terraform
# The data provided worked in some instance, but maybe doesn't work anymore. 
# Be careful using them as they are.

HOST="ec2-13-58-73-62.us-east-2.compute.amazonaws.com"
USER="ec2-user"
KEY="../../terraform/lemoncode.pem
"

ssh -i $KEY $USER@$HOST \
  "sudo yum install docker -y && sudo service docker start && sudo docker run -d -p 80:8888 firenz/lemoncode-docker-exercise"