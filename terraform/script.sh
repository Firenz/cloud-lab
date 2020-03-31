#!/bin/bash

sudo yum install docker -yum
sudo usermod -aG docker ec2-user
sudo service docker start
sudo docker run --rm -d -p 80:8888 firenz/lemoncode-docker-exercise