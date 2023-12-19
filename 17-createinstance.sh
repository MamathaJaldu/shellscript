#!/bin/bash

AMI=ami-03265a0778a880afb
SG_ID=sg-0f19a9729a24986ff

aws ec2 run-instances --image-id $AMI  --instance-type t2.micro --security-group-ids $SG_ID