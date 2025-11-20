#!/bin/bash

aws ec2 run-instances \
  --image-id ami-09c813fb71547fc4f \
  --instance-type t2.micro \
  --security-group-ids sg-0c8311807a45cafaa \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=MyServer}]'