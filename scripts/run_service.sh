#!/bin/bash
cd /home/ec2-user/google
image_name=$(cat imagename.txt)
aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 851725171252.dkr.ecr.us-east-1.amazonaws.com
sudo docker pull $image_name
sudo docker run -d -p 3000:3000 --name iperk-dev-fcontainer $image_name
