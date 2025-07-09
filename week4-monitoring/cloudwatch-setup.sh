#!/bin/bash

#Set endpoint variable
ENDPOINT="--endpoint-url=http://localhost:4566"

#Create a log group
aws $ENDPOINT logs create-log-group --log-group-name my-log-group

#Create a log stream
aws $ENDPOINT logs create-log-stream \
    --log-group-name my-log-group \
    --log-stream-name my-log-stream

#Send a log event
aws $ENDPOINT logs put-log-events \
    --log-group-name my-log-group \
    --log-stream-name my-log-stream \
    --log-events timestamp=$(date +%s%3N),message="Simulated log event from script"
