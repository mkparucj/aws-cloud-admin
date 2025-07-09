# CloudTrail Overview (Simulated)

## What is AWS CloudTrail?

CloudTrail is a service that records AWS account activity and API usage to help with compliance, auditing, and troubleshooting.

## Key Features

- Tracks API calls from the AWS Management Console, CLI, SDKs, and services.
- Stores logs in an S3 bucket (configured during setup).
- Can integrate with CloudWatch for alerting on specific actions.
- Provides a history of user activity for auditing.

## Common Use Cases

- Auditing who accessed sensitive resources
- Tracking changes to IAM policies and roles
- Investigating unexpected changes to EC2 or S3 resources
- Security forensics

## What Would Be Logged

| Action                        | Logged in CloudTrail? |
|-----------------------------|------------------------|
| IAM user login              | ✅ Yes                 |
| S3 bucket creation          | ✅ Yes                 |
| EC2 instance start/stop     | ✅ Yes                 |
| Lambda execution            | ✅ Yes                 |
| Console login failures      | ✅ Yes                 |

## LocalStack Support (Limitations)

CloudTrail is not currently supported in LocalStack. However, similar logging behavior can be simulated using:

- CloudWatch Logs for application activity
- CLI event outputs for audit simulation

## Summary

Though not simulated in this lab, CloudTrail remains a vital part of AWS infrastructure monitoring, especially for production environments and secure workloads.
