#!/bin/bash

echo "Simulating EC2 instance creation..."
echo "LocalStack does not fully support EC2 instances."
echo "Instead, logging mock launch details for record."

# Log to CloudWatch
aws --endpoint-url=http://localhost:4566 logs put-log-events \
    --log-group-name my-log-group \
    --log-stream-name my-log-stream \
    --log-events timestamp=$(date +%s%3N),message="Simulated EC2 instance launch via automation"
