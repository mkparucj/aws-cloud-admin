#!/bin/bash
# Week 2: VPC & EC2 Simulation using LocalStack

export AWS_REGION=us-east-1
ENDPOINT="--endpoint-url=http://localhost:4566"

# Create VPC
aws $ENDPOINT ec2 create-vpc --cidr-block 10.0.0.0/16

# Create Subnet
aws $ENDPOINT ec2 create-subnet \
  --vpc-id vpc-7262177c0ce42d987 \
  --cidr-block 10.0.1.0/24 \
  --availability-zone us-east-1a

# Create Key Pair
aws $ENDPOINT ec2 create-key-pair --key-name my-key

# Launch EC2 Instance
aws $ENDPOINT ec2 run-instances \
  --image-id ami-12345678 \
  --count 1 \
  --instance-type t2.micro \
  --key-name my-key \
  --subnet-id subnet-9b83983bc0f90b115

# Create and Attach Internet Gateway
aws $ENDPOINT ec2 create-internet-gateway
aws $ENDPOINT ec2 attach-internet-gateway \
  --internet-gateway-id igw-b2975bf7d4fa62a75 \
  --vpc-id vpc-7262177c0ce42d987

# Create Route Table and Route
aws $ENDPOINT ec2 create-route-table --vpc-id vpc-7262177c0ce42d987
aws $ENDPOINT ec2 create-route \
  --route-table-id rtb-9a21228e7d364a970 \
  --destination-cidr-block 0.0.0.0/0 \
  --gateway-id igw-b2975bf7d4fa62a75

# Associate Route Table with Subnet
aws $ENDPOINT ec2 associate-route-table \
  --subnet-id subnet-9b83983bc0f90b115 \
  --route-table-id rtb-9a21228e7d364a970

# Enable Auto-Assign Public IP
aws $ENDPOINT ec2 modify-subnet-attribute \
  --subnet-id subnet-9b83983bc0f90b115 \
  --map-public-ip-on-launch
