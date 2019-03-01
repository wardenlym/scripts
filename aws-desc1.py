#!/usr/bin/env python3

import boto3
ec2 = boto3.client('ec2')

response = ec2.describe_instances(
    MaxResults=10
)

print(response)