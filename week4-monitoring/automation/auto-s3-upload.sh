#!/bin/bash

#LocalStack endpoint
ENDPOINT="--endpoint-url=http://localhost:4566"

#Create a bucket
aws $ENDPOINT s3api create-bucket --bucket my-automated-bucket

#Create a dummy file
echo "This is a test file uploaded via automation script." > testfile.txt

#Upload it
aws $ENDPOINT s3 cp testfile.txt s3://my-automated-bucket/
